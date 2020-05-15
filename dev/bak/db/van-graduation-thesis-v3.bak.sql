-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: van_graduation_thesis
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `travel_activity`
--

DROP TABLE IF EXISTS `travel_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_activity` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_activity`
--

LOCK TABLES `travel_activity` WRITE;
/*!40000 ALTER TABLE `travel_activity` DISABLE KEYS */;
INSERT INTO `travel_activity` VALUES ('03ac7d5d-6288-4186-8dc5-66dcb29e3808','Wild & Adventure Tours'),('1b7b0de9-ab3c-4447-9c08-04cb65de2722','Holiday & Seasonal Tours'),('50091334-557e-4091-b24b-b72af88bcb55','Cultural & Thematic Tours'),('765e3bda-3efa-45a0-82f7-b5b83346551b','Indulgence & Luxury Tours'),('77e2e5c4-a791-4757-aabd-6b9c03e860d9','Family Friendly Tours'),('bfca1736-1fe1-4afc-acaa-e8c30f3bf173','Outdoor Activites'),('dc7214f2-ccf3-4744-9838-bcd6f329a90a','City Tour'),('ea9894d8-4aa5-4b8c-8376-8a40db23a45d','Relaxation Tours');
/*!40000 ALTER TABLE `travel_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_blog`
--

DROP TABLE IF EXISTS `travel_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_blog` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `summary` text,
  `content` text,
  `author` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_blog`
--

LOCK TABLES `travel_blog` WRITE;
/*!40000 ALTER TABLE `travel_blog` DISABLE KEYS */;
INSERT INTO `travel_blog` VALUES ('247c3fa1-93ab-4f1a-80cd-0a313957dba9','Demo Blog Title 5','https://i.imgur.com/EGdPGBd.jpg','demo-blog-slug-5','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:17'),('291e2d87-4474-4464-9796-325cae858c33','Demo Blog Title 1','https://i.imgur.com/ZDwuggC.jpg','demo-blog-slug-1','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:16'),('303ab30f-ca50-4159-9fc5-39b2f96709b5','Demo Blog Title 3','https://i.imgur.com/GCWCDDc.jpg','demo-blog-slug-3','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:16'),('a584c632-01e4-40a7-97f5-013f1b7404e6','Demo Blog Title 8','https://i.imgur.com/v0ecNwo.jpg','demo-blog-slug-8','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:17'),('c9483328-9f81-4ae4-ac61-da02b108cc17','Demo Blog Title 4','https://i.imgur.com/7burT0V.jpg','demo-blog-slug-4','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:16'),('df9850c9-1707-4c87-a261-3f611c458025','Demo Blog Title 7','https://i.imgur.com/uaXQNdo.jpg','demo-blog-slug-7','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:17'),('dfab9bb7-6caa-4ea5-9404-e623f19b7194','Demo Blog Title 2','https://i.imgur.com/XXLtxhz.jpg','demo-blog-slug-2','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:16'),('e2ce8811-5bff-4a08-b926-0ed74eba9496','Demo Title Blog','https://i.imgur.com/jxHmECc.png','home-22-11','adasd asd ad asd ad','asdsad<div><ul><li>sdddd</li><li>dddd</li></ul></div>','chelbay','2020-05-02 12:47:20'),('e711c66b-5d76-4c76-99b1-3ce5f0dff977','Demo Blog Title 6','https://i.imgur.com/LxUUqZa.jpg','demo-blog-slug-6','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:17');
/*!40000 ALTER TABLE `travel_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_blog_tag`
--

DROP TABLE IF EXISTS `travel_blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_blog_tag` (
  `id` varchar(255) NOT NULL,
  `blog_id` varchar(255) DEFAULT NULL,
  `tag_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_blog_tag`
--

LOCK TABLES `travel_blog_tag` WRITE;
/*!40000 ALTER TABLE `travel_blog_tag` DISABLE KEYS */;
INSERT INTO `travel_blog_tag` VALUES ('01f53a5a-3c80-4e1d-8c2a-c8b103004fb1','e711c66b-5d76-4c76-99b1-3ce5f0dff977','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('0e7c5e2f-ad3c-4f6c-993f-aa20bc85f1ad','c9483328-9f81-4ae4-ac61-da02b108cc17','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('14e47fd5-1f1e-4139-b2a8-518c07d6b7a5','a584c632-01e4-40a7-97f5-013f1b7404e6','fd86897c-cbee-480e-ac95-2655c8b9588d'),('1ab06b23-b94a-42e7-be59-35d27a4940fd','df9850c9-1707-4c87-a261-3f611c458025','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('1ee16083-dceb-46e5-9404-82f8ddfb9e07','303ab30f-ca50-4159-9fc5-39b2f96709b5','fd86897c-cbee-480e-ac95-2655c8b9588d'),('2575ce7d-fe0b-4c2b-9589-e39fc5d2619a','e711c66b-5d76-4c76-99b1-3ce5f0dff977','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('2786b4ce-0b6a-4bb9-bd70-b0f9dcca69b2','291e2d87-4474-4464-9796-325cae858c33','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('2e5136c6-c6cd-4c46-9551-a772802ee1d3','df9850c9-1707-4c87-a261-3f611c458025','fd86897c-cbee-480e-ac95-2655c8b9588d'),('3656c0f3-da72-43ea-9b74-a230964775c5','df9850c9-1707-4c87-a261-3f611c458025','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('4ee5f23a-44e2-4981-8d66-9bdd5d35e921','291e2d87-4474-4464-9796-325cae858c33','fd86897c-cbee-480e-ac95-2655c8b9588d'),('4f2b4cdf-a21d-433d-89b6-3d3880ecf75d','dfab9bb7-6caa-4ea5-9404-e623f19b7194','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('50787dcd-f209-4cb7-accf-0ec765595d93','247c3fa1-93ab-4f1a-80cd-0a313957dba9','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('6e33b13f-f778-44f0-a616-4e56c0180a72','303ab30f-ca50-4159-9fc5-39b2f96709b5','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('7234313e-d5ca-43eb-b978-d7244339301e','c9483328-9f81-4ae4-ac61-da02b108cc17','fd86897c-cbee-480e-ac95-2655c8b9588d'),('7b960858-eb3a-4476-a82e-d07211687738','c9483328-9f81-4ae4-ac61-da02b108cc17','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('8f21b758-8d24-4422-bfe6-dce13357ec2d','247c3fa1-93ab-4f1a-80cd-0a313957dba9','fd86897c-cbee-480e-ac95-2655c8b9588d'),('ae615eff-0a80-4e3a-a41f-05efc74dc18d','303ab30f-ca50-4159-9fc5-39b2f96709b5','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('b81d1933-2ad2-4cf6-a3a2-9a500fea341e','a584c632-01e4-40a7-97f5-013f1b7404e6','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('ce97e876-9f57-4cd2-a331-f8fc1317c223','a584c632-01e4-40a7-97f5-013f1b7404e6','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('d0a088b8-b58c-430b-91d4-444ca5efdae8','247c3fa1-93ab-4f1a-80cd-0a313957dba9','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('d516a59f-3202-4687-b775-4be9952cc9f3','dfab9bb7-6caa-4ea5-9404-e623f19b7194','fd86897c-cbee-480e-ac95-2655c8b9588d'),('d5f61773-f26b-4663-9f22-c9549339fdb6','e2ce8811-5bff-4a08-b926-0ed74eba9496','afd66516-6e34-4a19-993e-aeb70cbdc7fe'),('e3207bd8-f3f5-4662-9750-321e4db7ed5f','e2ce8811-5bff-4a08-b926-0ed74eba9496','517feb38-1351-4af8-8517-6535e2a31dca'),('eecf5623-6136-4e2e-bf50-b89fb927e418','dfab9bb7-6caa-4ea5-9404-e623f19b7194','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('eeff4be5-a59d-42c7-9a98-66e31ddd7842','e711c66b-5d76-4c76-99b1-3ce5f0dff977','fd86897c-cbee-480e-ac95-2655c8b9588d'),('ffdc5cce-4491-429e-a6bf-408cd6b79a5e','291e2d87-4474-4464-9796-325cae858c33','0f63a9bd-0770-4483-a8f2-f46c74a95343');
/*!40000 ALTER TABLE `travel_blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_booking`
--

DROP TABLE IF EXISTS `travel_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_booking` (
  `id` varchar(255) NOT NULL,
  `tour_id` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `count_people` int(11) DEFAULT NULL,
  `note` text,
  `submit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_booking`
--

LOCK TABLES `travel_booking` WRITE;
/*!40000 ALTER TABLE `travel_booking` DISABLE KEYS */;
INSERT INTO `travel_booking` VALUES ('3abd15a9-1475-491c-b75f-9dcf80eb4995','e8005764-8912-439b-9cf5-e372e0bcc5ca',0,'ddsds','adsd','sd',6,'dfdf','2020-05-04 04:25:55'),('4a98b818-ec7f-42e3-bff6-b15aa108ae9a','23b671d8-69a9-4b4b-9d66-899727b829d7',0,'gg','gg','gg',3,'3332','2020-05-04 03:24:40'),('9905d290-8ad0-46bb-a0f5-798820f3a67c','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'eee','eee','eee',2,'sad','2020-05-04 04:25:23'),('a2a10e00-dcf7-4d0b-a8ad-15a997a08574','e8005764-8912-439b-9cf5-e372e0bcc5ca',0,'ddd','dd','dd',222,'asdsad','2020-05-04 04:25:43'),('da713536-ba0e-471f-9320-8a3a14fc645b','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'asd','dsadsa','as',4,'ddfdfdf','2020-05-04 03:21:43');
/*!40000 ALTER TABLE `travel_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_comment`
--

DROP TABLE IF EXISTS `travel_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_comment` (
  `id` varchar(255) NOT NULL,
  `blog_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` text,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_comment`
--

LOCK TABLES `travel_comment` WRITE;
/*!40000 ALTER TABLE `travel_comment` DISABLE KEYS */;
INSERT INTO `travel_comment` VALUES ('0d4c9469-ca8e-45c8-8acf-3187a079391c','291e2d87-4474-4464-9796-325cae858c33','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('448d23c2-87a0-469b-98ca-395fe2bb88de','e2ce8811-5bff-4a08-b926-0ed74eba9496','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('600a2dcc-dc21-4704-a983-833db5cd837e','303ab30f-ca50-4159-9fc5-39b2f96709b5','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('613b87bb-d4cb-42b8-9bb7-0ad46e63b329','247c3fa1-93ab-4f1a-80cd-0a313957dba9','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('83014d86-2cf2-4b04-9ca7-68f7d295ee91','a584c632-01e4-40a7-97f5-013f1b7404e6','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('84e5b422-bedb-4e23-934e-583be7807949','dfab9bb7-6caa-4ea5-9404-e623f19b7194','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('ada680da-4b83-48cd-95a6-d4f42c389f59','e2ce8811-5bff-4a08-b926-0ed74eba9496','Phan Vien','chelbayqn@gmail.com','that\'s good, thumbs up','2020-05-02 15:01:35'),('c6c1faf9-2c45-4fff-8d6a-045d32520e8c','df9850c9-1707-4c87-a261-3f611c458025','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('e0fd6ced-faaf-42dc-8734-02444105dab5','e711c66b-5d76-4c76-99b1-3ce5f0dff977','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('f03ff43b-16d0-4487-80f5-a598aebd3a42','c9483328-9f81-4ae4-ac61-da02b108cc17','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34');
/*!40000 ALTER TABLE `travel_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_destination`
--

DROP TABLE IF EXISTS `travel_destination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_destination` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail600x600` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_destination`
--

LOCK TABLES `travel_destination` WRITE;
/*!40000 ALTER TABLE `travel_destination` DISABLE KEYS */;
INSERT INTO `travel_destination` VALUES ('07307387-f1f9-487c-8b02-ab1e47b0be58','Eastern Europe','https://i.imgur.com/9kNkhxJ.jpg','https://i.imgur.com/mexaHYj.jpg'),('46aac2a8-de6e-4c9a-9dbc-d6e9d828e35b','Africa','https://i.imgur.com/7b90QdS.jpg','https://i.imgur.com/mexaHYj.jpg'),('650d54f1-559b-4bf1-a4bf-4f5dbbf5c5e1','South America','https://i.imgur.com/RttyQUB.jpg','https://i.imgur.com/mexaHYj.jpg'),('7e3332e0-b0f6-4fd9-9ccd-6bda2530336f','America','https://i.imgur.com/xT8TTLn.jpg','https://i.imgur.com/mexaHYj.jpg'),('d9835078-deef-43a5-83c3-55541ebd2f52','Europe','https://i.imgur.com/N0i61yO.jpg','https://i.imgur.com/mexaHYj.jpg'),('eb72ba99-7f9f-4724-8b87-6ee726d53033','Asia','https://i.imgur.com/gbBjsN1.jpg','https://i.imgur.com/mexaHYj.jpg');
/*!40000 ALTER TABLE `travel_destination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_enquiry`
--

DROP TABLE IF EXISTS `travel_enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_enquiry` (
  `id` varchar(255) NOT NULL,
  `tour_id` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `travel_time` datetime DEFAULT NULL,
  `count_people` int(11) DEFAULT NULL,
  `note` text,
  `submit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_enquiry`
--

LOCK TABLES `travel_enquiry` WRITE;
/*!40000 ALTER TABLE `travel_enquiry` DISABLE KEYS */;
/*!40000 ALTER TABLE `travel_enquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_itinerary`
--

DROP TABLE IF EXISTS `travel_itinerary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_itinerary` (
  `id` varchar(255) NOT NULL,
  `tour_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description_text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_itinerary`
--

LOCK TABLES `travel_itinerary` WRITE;
/*!40000 ALTER TABLE `travel_itinerary` DISABLE KEYS */;
INSERT INTO `travel_itinerary` VALUES ('0b2829e7-59a7-4951-b4d2-b8c047f07e77','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('162893a5-9a0e-49a5-89d3-d807993e123c','02efa131-17a8-427e-9ff4-3eab8ea944c1',4,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('18589dba-dbf7-4789-ac42-32154257d27b','786bea0a-c2a8-478d-a42f-d3651bad6cc9',4,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('1cdde0d4-c507-45c8-926e-ff602b01f749','2c8c1de5-b14e-4d80-8016-9ff547edd355',2,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('2500077a-f8aa-4d4b-9893-9539b120288f','e8005764-8912-439b-9cf5-e372e0bcc5ca',3,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('440c9877-b32a-4efd-9025-579414c88c96','2c8c1de5-b14e-4d80-8016-9ff547edd355',3,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('52027919-b3fe-4036-9ccd-5aae7a31c512','2c8c1de5-b14e-4d80-8016-9ff547edd355',4,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('5e7f067c-a940-4786-8c71-4fe32416dc65','359da838-db56-493e-8fe8-344a2eeb60f0',3,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('71a46982-dc9f-47bf-a6ad-0f7c5a022831','23b671d8-69a9-4b4b-9d66-899727b829d7',4,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('7460bf94-1d0b-41de-9255-508c215609ec','359da838-db56-493e-8fe8-344a2eeb60f0',4,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('7694feb3-a49b-4074-9755-31e36915c76c','02efa131-17a8-427e-9ff4-3eab8ea944c1',2,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('7894e591-4b8e-4ef4-9b58-e1be78470a16','359da838-db56-493e-8fe8-344a2eeb60f0',2,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('89ec32c2-c576-46bc-bc4f-36821765b4c6','e8005764-8912-439b-9cf5-e372e0bcc5ca',4,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('96ad3fe9-ca93-425e-9b52-a93be740b7cd','e8005764-8912-439b-9cf5-e372e0bcc5ca',2,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('bc6650b0-b13e-4158-9d78-ae51c1d0fc1b','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('c2b8d920-a418-42fe-ba98-e478a2abed80','786bea0a-c2a8-478d-a42f-d3651bad6cc9',1,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('ca1f47c2-6b32-4f1e-b52c-4d08aaaaa9b4','359da838-db56-493e-8fe8-344a2eeb60f0',1,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('d880f215-3cf4-45b0-bd65-050a175b0c72','786bea0a-c2a8-478d-a42f-d3651bad6cc9',2,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('e40259f5-f023-48eb-8a78-3ca837c56b77','23b671d8-69a9-4b4b-9d66-899727b829d7',3,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('e4cb60f0-9ddd-452f-9629-ceb26a3e53f2','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('e5535f98-78b7-43e7-a39f-7b22ef6fee3e','02efa131-17a8-427e-9ff4-3eab8ea944c1',3,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('e833d9bf-09a7-4898-834c-f7f1360dbbe9','786bea0a-c2a8-478d-a42f-d3651bad6cc9',3,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('e93b972d-8140-4164-b36d-99fb22b8e913','2c8c1de5-b14e-4d80-8016-9ff547edd355',1,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('fc9f35e2-a846-4d2d-a4ce-99fc2ea5093a','23b671d8-69a9-4b4b-9d66-899727b829d7',2,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.');
/*!40000 ALTER TABLE `travel_itinerary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_review`
--

DROP TABLE IF EXISTS `travel_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_review` (
  `id` varchar(255) NOT NULL,
  `tour_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `content` text,
  `review_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_review`
--

LOCK TABLES `travel_review` WRITE;
/*!40000 ALTER TABLE `travel_review` DISABLE KEYS */;
INSERT INTO `travel_review` VALUES ('00cb2c2f-8dc1-42f1-84b3-d79db5eb5448','02efa131-17a8-427e-9ff4-3eab8ea944c1','Chelbay','chelbayqn@gmail.com','0123456789','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium','2020-05-03 15:27:37'),('1a5b3e46-80a5-4d0f-86c6-f4833fdc1255','2c8c1de5-b14e-4d80-8016-9ff547edd355','Chelbay','chelbayqn@gmail.com','0123456789','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium','2020-05-03 15:27:37'),('1b838c44-5c8b-4a2d-9801-a009cf279dea','359da838-db56-493e-8fe8-344a2eeb60f0','Chelbay','chelbayqn@gmail.com','0123456789','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium','2020-05-03 15:27:37'),('1eaa01bd-de5e-41e0-8277-bc7b3a0b6d4f','786bea0a-c2a8-478d-a42f-d3651bad6cc9','Chelbay','chelbayqn@gmail.com','0123456789','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium','2020-05-03 15:27:37'),('571fdf6c-bd04-416f-9374-fae2525f8fe8','e8005764-8912-439b-9cf5-e372e0bcc5ca','Chelbay','chelbayqn@gmail.com','0123456789','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium','2020-05-03 15:27:37'),('a7ac40ab-f6cc-43f6-9c8d-139c78dbbded','23b671d8-69a9-4b4b-9d66-899727b829d7','Chelbay','chelbayqn@gmail.com','0123456789','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium','2020-05-03 15:27:37');
/*!40000 ALTER TABLE `travel_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_service`
--

DROP TABLE IF EXISTS `travel_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_service` (
  `id` varchar(255) NOT NULL,
  `tour_id` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_service`
--

LOCK TABLES `travel_service` WRITE;
/*!40000 ALTER TABLE `travel_service` DISABLE KEYS */;
INSERT INTO `travel_service` VALUES ('00616c14-2f80-42cf-92c3-02c66de3c1ef','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('0233941b-535d-4dc1-93e0-0a4bef22f3f8','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('066b797c-4b55-44a8-aa87-aff326bf4303','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('09ee7f21-c6d8-4d82-8abd-7186f3da1ae1','359da838-db56-493e-8fe8-344a2eeb60f0',1,'Service Name 6'),('0aa10542-73c3-41c2-b638-f3e92f1c6393','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'Service Name 1'),('123a0c71-ee4e-4eda-8dd6-bf5523a6cb00','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('17aaa052-6a33-43d0-aa4e-e1dcc8dc128e','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('1b1118d6-302f-484d-be70-ecc3db716875','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'Service Name 1'),('244a819c-9cc9-4cf3-ac1d-4ff7e90a0e49','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('262f34c0-5a87-4b75-889b-59af01fa2559','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('280a7ac2-3301-47c4-b979-2bdfeb7882a6','359da838-db56-493e-8fe8-344a2eeb60f0',0,'Service Name 6'),('2a558f2c-3912-41f1-bc8d-5b80d16a03e4','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'Service Name 1'),('2bd408a1-fe6d-4453-ae90-5e4d62c51ab4','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('2fc8f6b2-b3c4-4a45-a1be-41b489327a1e','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('3386256a-4a7e-48f1-b45d-d9ea09b30d28','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'Service Name 1'),('36a1f5db-cc6d-4458-a460-e52a5b968acc','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('3fa7566f-b403-473c-ad55-2d713f32c1af','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('44e12af6-a95a-4565-8618-35e000b2b808','359da838-db56-493e-8fe8-344a2eeb60f0',0,'Service Name 6'),('5b6b9e26-5e35-45a2-ad1c-3a54ae3d1d25','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('614fa030-ea3d-46bf-8c80-300c121b1f8e','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'Service Name 1'),('813ee6ef-d113-46d1-8003-11175e7951c0','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('8634e9d6-feba-4d93-b77d-35fe0ea83308','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'Service Name 1'),('8968ab6a-82dc-4ec9-81ff-6ce247e6fb88','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('8a29fe9a-1249-4e0e-bbda-b32faf6bab18','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('8a3a2d69-ed0e-4e44-a7da-9633034845a2','359da838-db56-493e-8fe8-344a2eeb60f0',0,'Service Name 6'),('8cebd2dc-4ec0-464d-8137-3b8d54b410af','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('8d699c59-2e0e-40e9-9268-b5edccb350b3','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('8e5720a1-76b4-40e2-8718-cd60d6f48f33','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('9050e8ff-98d2-4d83-90c3-5062253f7e5f','359da838-db56-493e-8fe8-344a2eeb60f0',1,'Service Name 6'),('a0699ef2-ce48-4b9d-b289-ce26e242527b','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('a2fbb765-0e94-49ce-ad52-2e9055730617','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('a911b3d5-938a-4266-8546-4ab18e714e63','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('af9434a5-4469-488c-b30b-39257b44b43f','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('b4155295-fa61-464a-9a45-a35a2f4e0cfd','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('b7083cd6-7c23-41b3-af2d-5920a61ac223','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'Service Name 1'),('b7b2fe89-7d2c-4f3c-97dc-dfdb13a20189','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'Service Name 1'),('cf54a973-21b6-4cee-bf71-c59bce87768d','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('d26da84e-7477-437c-8fc8-250d739021bc','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('dbc367d4-0b9a-4a75-b497-b3c2ef1e0a9e','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('e062713c-ff42-4c50-81d6-a6f46d8137f8','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('e3db20b8-1897-4fb5-8a5f-5f31da5b4940','359da838-db56-493e-8fe8-344a2eeb60f0',1,'Service Name 6'),('e647bbf4-0de0-42b1-ae07-ea6cdfb386b3','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('f401f80f-771a-45d6-af29-16700d168d40','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('f5470b45-2b73-4f70-a7b6-c2f16bd96a8d','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('f7f103d0-707d-42a9-be07-bc183e6457cf','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('fd84b27f-9467-45eb-9c70-6de3ca276d30','359da838-db56-493e-8fe8-344a2eeb60f0',0,'Service Name 6'),('fed1ff49-7534-460a-a69f-44197ace572a','359da838-db56-493e-8fe8-344a2eeb60f0',1,'Service Name 6'),('fedfeb35-48e1-4707-b52e-a6218192d8b6','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3');
/*!40000 ALTER TABLE `travel_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_tag`
--

DROP TABLE IF EXISTS `travel_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_tag` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `clicked` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_tag`
--

LOCK TABLES `travel_tag` WRITE;
/*!40000 ALTER TABLE `travel_tag` DISABLE KEYS */;
INSERT INTO `travel_tag` VALUES ('0f63a9bd-0770-4483-a8f2-f46c74a95343','hot',0),('517feb38-1351-4af8-8517-6535e2a31dca','aa',0),('932534e2-24ff-4fcc-a8f3-b4bfa51eae33','cheap',0),('afd66516-6e34-4a19-993e-aeb70cbdc7fe','ss',0),('fd86897c-cbee-480e-ac95-2655c8b9588d','travel',0);
/*!40000 ALTER TABLE `travel_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_tour`
--

DROP TABLE IF EXISTS `travel_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_tour` (
  `id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `thumbnail600x700` varchar(255) DEFAULT NULL,
  `thumbnail150x150` varchar(255) DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `nation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `star` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `days_text` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `o_price` double DEFAULT NULL,
  `p_price` double DEFAULT NULL,
  `min_age` int(11) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `registered_people` int(11) DEFAULT NULL,
  `detail_text` text CHARACTER SET utf8,
  `departure_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `departure_time` datetime DEFAULT NULL,
  `expect_text` text CHARACTER SET utf8,
  `destination_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_tour`
--

LOCK TABLES `travel_tour` WRITE;
/*!40000 ALTER TABLE `travel_tour` DISABLE KEYS */;
INSERT INTO `travel_tour` VALUES ('02efa131-17a8-427e-9ff4-3eab8ea944c1','Demo Tour Name 5','https://i.imgur.com/EGdPGBd.jpg','https://i.imgur.com/ACJkb6o.jpg','https://i.imgur.com/GQYlTmA.jpg','Jocy','Anguilla','At vero eos et accusamus et iusto odio dignissimos ducimus qui blandi',5,6,'7 Days 8 Nights','2020-05-03 00:00:00','2020-05-03 00:00:00',44.55,33.44,11,100,56,'<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus.</span><div><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum.</span><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\"><br></span></div>','Da Nang','2020-05-03 15:21:03','<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla.</span><div><ul><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ipsum Amet Mattis Pellentesque<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ultricies Vehicula Mollis Vestibulum Fringilla<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Condimentum Sollicitudin Fusce Vestibulum Ultricies<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Sollicitudin Consectetur Quam Ligula Vehicula<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Cursus Pharetra Purus Porta Parturient<br></span></li></ul></div>','d9835078-deef-43a5-83c3-55541ebd2f52'),('23b671d8-69a9-4b4b-9d66-899727b829d7','Demo Tour Name 1','https://i.imgur.com/ZDwuggC.jpg','https://i.imgur.com/J1ZRteN.jpg','https://i.imgur.com/GQYlTmA.jpg','Timoa Rymaar','Macau','At vero eos et accusamus et iusto odio dignissimos ducimus qui blandi',5,3,'3 Days 2 Nights','2020-05-03 00:00:00','2020-05-03 00:00:00',33.44,33.44,11,100,56,'<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus.</span><div><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum.</span><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\"><br></span></div>','Da Nang','2020-04-27 15:21:01','<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla.</span><div><ul><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ipsum Amet Mattis Pellentesque<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ultricies Vehicula Mollis Vestibulum Fringilla<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Condimentum Sollicitudin Fusce Vestibulum Ultricies<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Sollicitudin Consectetur Quam Ligula Vehicula<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Cursus Pharetra Purus Porta Parturient<br></span></li></ul></div>','07307387-f1f9-487c-8b02-ab1e47b0be58'),('2c8c1de5-b14e-4d80-8016-9ff547edd355','Demo Tour Name 2','https://i.imgur.com/XXLtxhz.jpg','https://i.imgur.com/ACJkb6o.jpg','https://i.imgur.com/GQYlTmA.jpg','Marreha','The Gambia','At vero eos et accusamus et iusto odio dignissimos ducimus qui blandi',5,6,'7 Days 8 Nights','2020-05-03 15:21:02','2020-05-03 15:21:02',44.55,33.44,11,100,56,'<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus.</span><div><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum.</span><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\"><br></span></div>','Da Nang','2020-05-03 15:21:02','<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla.</span><div><ul><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ipsum Amet Mattis Pellentesque<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ultricies Vehicula Mollis Vestibulum Fringilla<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Condimentum Sollicitudin Fusce Vestibulum Ultricies<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Sollicitudin Consectetur Quam Ligula Vehicula<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Cursus Pharetra Purus Porta Parturient<br></span></li></ul></div>','46aac2a8-de6e-4c9a-9dbc-d6e9d828e35b'),('359da838-db56-493e-8fe8-344a2eeb60f0','Demo Tour Name 6','https://i.imgur.com/LxUUqZa.jpg','https://i.imgur.com/ACJkb6o.jpg','https://i.imgur.com/GQYlTmA.jpg','Croalandbia Isles','Uruguay','At vero eos et accusamus et iusto odio dignissimos ducimus qui blandi',5,6,'7 Days 8 Nights','2020-05-03 00:00:00','2020-05-03 00:00:00',44.55,33.44,11,100,56,'<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus.</span><div><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum.</span><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\"><br></span></div>','Da Nang','2020-05-03 15:21:03','<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla.</span><div><ul><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ipsum Amet Mattis Pellentesque<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ultricies Vehicula Mollis Vestibulum Fringilla<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Condimentum Sollicitudin Fusce Vestibulum Ultricies<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Sollicitudin Consectetur Quam Ligula Vehicula<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Cursus Pharetra Purus Porta Parturient<br></span></li></ul></div>','eb72ba99-7f9f-4724-8b87-6ee726d53033'),('786bea0a-c2a8-478d-a42f-d3651bad6cc9','Demo Tour Name 4','https://i.imgur.com/7burT0V.jpg','https://i.imgur.com/ACJkb6o.jpg','https://i.imgur.com/GQYlTmA.jpg','Jikyrgy','Bonaire','At vero eos et accusamus et iusto odio dignissimos ducimus qui blandi',4,6,'7 Days 8 Nights','2020-05-03 15:21:02','2020-05-03 15:21:02',44.55,33.44,11,100,56,'<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus.</span><div><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum.</span><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\"><br></span></div>','Da Nang','2020-05-03 15:21:02','<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla.</span><div><ul><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ipsum Amet Mattis Pellentesque<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ultricies Vehicula Mollis Vestibulum Fringilla<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Condimentum Sollicitudin Fusce Vestibulum Ultricies<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Sollicitudin Consectetur Quam Ligula Vehicula<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Cursus Pharetra Purus Porta Parturient<br></span></li></ul></div>','7e3332e0-b0f6-4fd9-9ccd-6bda2530336f'),('e8005764-8912-439b-9cf5-e372e0bcc5ca','Demo Tour Name 3','https://i.imgur.com/GCWCDDc.jpg','https://i.imgur.com/ACJkb6o.jpg','https://i.imgur.com/GQYlTmA.jpg','Ratnited Georne','Tokelau','At vero eos et accusamus et iusto odio dignissimos ducimus qui blandi',4,6,'7 Days 8 Nights','2020-05-03 00:00:00','2020-05-03 00:00:00',33.44,33.44,11,100,55,'<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus.</span><div><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum.</span><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\"><br></span></div>','Da Nang','2020-05-08 15:21:02','<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla.</span><div><ul><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ipsum Amet Mattis Pellentesque<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ultricies Vehicula Mollis Vestibulum Fringilla<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Condimentum Sollicitudin Fusce Vestibulum Ultricies<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Sollicitudin Consectetur Quam Ligula Vehicula<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Cursus Pharetra Purus Porta Parturient<br></span></li></ul></div>','650d54f1-559b-4bf1-a4bf-4f5dbbf5c5e1');
/*!40000 ALTER TABLE `travel_tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_tour_activity`
--

DROP TABLE IF EXISTS `travel_tour_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_tour_activity` (
  `id` varchar(255) NOT NULL,
  `tour_id` varchar(255) DEFAULT NULL,
  `activity_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_tour_activity`
--

LOCK TABLES `travel_tour_activity` WRITE;
/*!40000 ALTER TABLE `travel_tour_activity` DISABLE KEYS */;
INSERT INTO `travel_tour_activity` VALUES ('4e50e29d-4578-4b4c-8f85-2c13ec389b0f','23b671d8-69a9-4b4b-9d66-899727b829d7','ea9894d8-4aa5-4b8c-8376-8a40db23a45d'),('633dc17e-4dc2-42bb-8581-55893c9b022a','786bea0a-c2a8-478d-a42f-d3651bad6cc9','03ac7d5d-6288-4186-8dc5-66dcb29e3808'),('6d0e8087-355c-4cf6-ad8a-4de7f0eb9f2e','359da838-db56-493e-8fe8-344a2eeb60f0','765e3bda-3efa-45a0-82f7-b5b83346551b'),('949c3835-9744-48af-bafe-8e3720857e11','02efa131-17a8-427e-9ff4-3eab8ea944c1','03ac7d5d-6288-4186-8dc5-66dcb29e3808'),('c03df359-e393-45da-89ff-8738ab95c7dc','23b671d8-69a9-4b4b-9d66-899727b829d7','50091334-557e-4091-b24b-b72af88bcb55'),('cb0b6388-74f1-4408-b9ef-ac0e3bcb0897','359da838-db56-493e-8fe8-344a2eeb60f0','bfca1736-1fe1-4afc-acaa-e8c30f3bf173'),('ce434ba8-ccb6-417b-8b7b-e90a37357793','e8005764-8912-439b-9cf5-e372e0bcc5ca','bfca1736-1fe1-4afc-acaa-e8c30f3bf173'),('d07be4fd-0208-4f25-ae12-2552c9587ed0','02efa131-17a8-427e-9ff4-3eab8ea944c1','50091334-557e-4091-b24b-b72af88bcb55'),('d39b0f91-b10d-4d51-9a96-4425f097d8ed','02efa131-17a8-427e-9ff4-3eab8ea944c1','77e2e5c4-a791-4757-aabd-6b9c03e860d9'),('d3f7d152-511b-4afc-bd8f-3e0b2c5b4fe8','e8005764-8912-439b-9cf5-e372e0bcc5ca','77e2e5c4-a791-4757-aabd-6b9c03e860d9'),('d699214b-e974-45df-b79f-84ebe024e407','2c8c1de5-b14e-4d80-8016-9ff547edd355','03ac7d5d-6288-4186-8dc5-66dcb29e3808'),('d7ea97d2-ee5c-4785-89a0-872baea9950a','786bea0a-c2a8-478d-a42f-d3651bad6cc9','765e3bda-3efa-45a0-82f7-b5b83346551b'),('f07907e8-5669-43d6-8c18-0ea6ca5881a9','2c8c1de5-b14e-4d80-8016-9ff547edd355','ea9894d8-4aa5-4b8c-8376-8a40db23a45d');
/*!40000 ALTER TABLE `travel_tour_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'van_graduation_thesis'
--

--
-- Dumping routines for database 'van_graduation_thesis'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-10 21:57:38
