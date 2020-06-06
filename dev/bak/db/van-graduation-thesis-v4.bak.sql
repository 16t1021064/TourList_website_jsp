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
-- Table structure for table `travel_banner`
--

DROP TABLE IF EXISTS `travel_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_banner` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `text_h1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_h2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_h3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `priority` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_banner`
--

LOCK TABLES `travel_banner` WRITE;
/*!40000 ALTER TABLE `travel_banner` DISABLE KEYS */;
INSERT INTO `travel_banner` VALUES ('19ca079d-09fe-40fb-96d6-e72e370e2721','TypeC','The hidden word','Open your eye to','','https://i.imgur.com/RX4Zz6I.jpg','https://google.com','aasdsd',1,0),('36d9d0fb-746f-4538-a371-707c9a518b09','TypeB','VACATION','Find your perfect','Italy, Roma, France','https://i.imgur.com/8uoItDN.jpg','https://google.com','haha',1,4),('e8f10792-38d6-4aae-8644-609aa76ad70f','TypeA','Speciall','7 Days in England','asd, asd, asd, asds','https://i.imgur.com/mHLSXxJ.jpg','https://google.com','Click me',1,3);
/*!40000 ALTER TABLE `travel_banner` ENABLE KEYS */;
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
  `thumbnail150x150` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `summary` text,
  `content` text,
  `author` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `view_count` bigint(20) DEFAULT '0',
  `recent_view_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_blog`
--

LOCK TABLES `travel_blog` WRITE;
/*!40000 ALTER TABLE `travel_blog` DISABLE KEYS */;
INSERT INTO `travel_blog` VALUES ('247c3fa1-93ab-4f1a-80cd-0a313957dba9','Demo Blog Title 5','https://i.imgur.com/EGdPGBd.jpg','https://i.imgur.com/LSjTDDD.jpg','demo-blog-slug-5','<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.</p>\r\n','<h3>dDe Finibus Bonorum et Malorum</h3>\r\n\r\n<p>t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>\r\n\r\n<ul>\r\n	<li>At vero eos et accusamus et iusto odio dignissimos ducimus</li>\r\n	<li>At vero eos et accusamus et iusto</li>\r\n	<li>At vero eos et accusamus et iusto odio dignissimos</li>\r\n</ul>\r\n\r\n<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n','chelbay','2020-05-03 14:26:17',16,'2020-05-27 02:06:56'),('291e2d87-4474-4464-9796-325cae858c33','Demo Blog Title 1','https://i.imgur.com/ZDwuggC.jpg','https://i.imgur.com/YqbgHYb.jpg','demo-blog-slug-1','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:16',21,'2020-05-24 09:13:37'),('303ab30f-ca50-4159-9fc5-39b2f96709b5','Demo Blog Title 3','https://i.imgur.com/GCWCDDc.jpg','https://i.imgur.com/YqbgHYb.jpg','demo-blog-slug-3','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:16',14,'2020-05-27 02:07:30'),('a584c632-01e4-40a7-97f5-013f1b7404e6','Demo Blog Title 8','https://i.imgur.com/v0ecNwo.jpg','https://i.imgur.com/YqbgHYb.jpg','demo-blog-slug-8','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:17',10,'2020-05-24 08:50:14'),('c9483328-9f81-4ae4-ac61-da02b108cc17','Demo Blog Title 4','https://i.imgur.com/7burT0V.jpg','https://i.imgur.com/YqbgHYb.jpg','demo-blog-slug-4','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:16',12,'2020-05-26 23:42:37'),('df9850c9-1707-4c87-a261-3f611c458025','Demo Blog Title 7','https://i.imgur.com/uaXQNdo.jpg','https://i.imgur.com/YqbgHYb.jpg','demo-blog-slug-7','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:17',12,'2020-05-27 02:03:56'),('dfab9bb7-6caa-4ea5-9404-e623f19b7194','Demo Blog Title 2','https://i.imgur.com/XXLtxhz.jpg','https://i.imgur.com/YqbgHYb.jpg','demo-blog-slug-2','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:16',10,'2020-05-24 08:50:14'),('e2ce8811-5bff-4a08-b926-0ed74eba9496','Demo Title Blog','https://i.imgur.com/jxHmECc.png','https://i.imgur.com/YqbgHYb.jpg','home-22-11','adasd asd ad asd ad','asdsad<div><ul><li>sdddd</li><li>dddd</li></ul></div>','chelbay','2020-05-02 12:47:20',14,'2020-05-24 08:50:14'),('e711c66b-5d76-4c76-99b1-3ce5f0dff977','Demo Blog Title 6','https://i.imgur.com/LxUUqZa.jpg','https://i.imgur.com/YqbgHYb.jpg','demo-blog-slug-6','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.','<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>','chelbay','2020-05-03 14:26:17',16,'2020-05-27 02:06:08');
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
INSERT INTO `travel_blog_tag` VALUES ('01f53a5a-3c80-4e1d-8c2a-c8b103004fb1','e711c66b-5d76-4c76-99b1-3ce5f0dff977','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('0e7c5e2f-ad3c-4f6c-993f-aa20bc85f1ad','c9483328-9f81-4ae4-ac61-da02b108cc17','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('14e47fd5-1f1e-4139-b2a8-518c07d6b7a5','a584c632-01e4-40a7-97f5-013f1b7404e6','fd86897c-cbee-480e-ac95-2655c8b9588d'),('1ab06b23-b94a-42e7-be59-35d27a4940fd','df9850c9-1707-4c87-a261-3f611c458025','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('1ee16083-dceb-46e5-9404-82f8ddfb9e07','303ab30f-ca50-4159-9fc5-39b2f96709b5','fd86897c-cbee-480e-ac95-2655c8b9588d'),('1f5206cb-edf6-444c-9e63-d742f1fcb4ca','dfab9bb7-6caa-4ea5-9404-e623f19b7194','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('2575ce7d-fe0b-4c2b-9589-e39fc5d2619a','e711c66b-5d76-4c76-99b1-3ce5f0dff977','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('2e5136c6-c6cd-4c46-9551-a772802ee1d3','df9850c9-1707-4c87-a261-3f611c458025','fd86897c-cbee-480e-ac95-2655c8b9588d'),('303dc13d-5ccf-4a41-b056-55724d2e6ce2','291e2d87-4474-4464-9796-325cae858c33','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('3656c0f3-da72-43ea-9b74-a230964775c5','df9850c9-1707-4c87-a261-3f611c458025','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('47aa42bf-5335-4fdb-9dd6-9c77a7cd68a9','291e2d87-4474-4464-9796-325cae858c33','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('4dbdc737-f4f2-451d-9004-61744ce79f4a','291e2d87-4474-4464-9796-325cae858c33','fd86897c-cbee-480e-ac95-2655c8b9588d'),('59e510ef-765b-423a-9ea2-a9d5f27a91cd','dfab9bb7-6caa-4ea5-9404-e623f19b7194','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('5cdcb49d-f8b1-46b2-a743-d98dc2d385ac','291e2d87-4474-4464-9796-325cae858c33','afd66516-6e34-4a19-993e-aeb70cbdc7fe'),('5ed24fef-b7e6-48fc-8d2c-de1d0a3682bc','dfab9bb7-6caa-4ea5-9404-e623f19b7194','fd86897c-cbee-480e-ac95-2655c8b9588d'),('6e33b13f-f778-44f0-a616-4e56c0180a72','303ab30f-ca50-4159-9fc5-39b2f96709b5','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('7234313e-d5ca-43eb-b978-d7244339301e','c9483328-9f81-4ae4-ac61-da02b108cc17','fd86897c-cbee-480e-ac95-2655c8b9588d'),('7b960858-eb3a-4476-a82e-d07211687738','c9483328-9f81-4ae4-ac61-da02b108cc17','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('8809569f-6dc8-4e51-8bed-73f059ffb7e2','247c3fa1-93ab-4f1a-80cd-0a313957dba9','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('ae615eff-0a80-4e3a-a41f-05efc74dc18d','303ab30f-ca50-4159-9fc5-39b2f96709b5','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('b81d1933-2ad2-4cf6-a3a2-9a500fea341e','a584c632-01e4-40a7-97f5-013f1b7404e6','932534e2-24ff-4fcc-a8f3-b4bfa51eae33'),('ce97e876-9f57-4cd2-a331-f8fc1317c223','a584c632-01e4-40a7-97f5-013f1b7404e6','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('d5f61773-f26b-4663-9f22-c9549339fdb6','e2ce8811-5bff-4a08-b926-0ed74eba9496','afd66516-6e34-4a19-993e-aeb70cbdc7fe'),('e3207bd8-f3f5-4662-9750-321e4db7ed5f','e2ce8811-5bff-4a08-b926-0ed74eba9496','517feb38-1351-4af8-8517-6535e2a31dca'),('eeff4be5-a59d-42c7-9a98-66e31ddd7842','e711c66b-5d76-4c76-99b1-3ce5f0dff977','fd86897c-cbee-480e-ac95-2655c8b9588d'),('f3283f0e-2744-47ac-af10-22467db02ebc','247c3fa1-93ab-4f1a-80cd-0a313957dba9','0f63a9bd-0770-4483-a8f2-f46c74a95343'),('f7208b5d-692e-4dde-9439-ba43639314f4','247c3fa1-93ab-4f1a-80cd-0a313957dba9','fd86897c-cbee-480e-ac95-2655c8b9588d');
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
INSERT INTO `travel_booking` VALUES ('3abd15a9-1475-491c-b75f-9dcf80eb4995','e8005764-8912-439b-9cf5-e372e0bcc5ca',0,'ddsds','adsd','sd',6,'dfdf','2020-05-04 04:25:55'),('4a98b818-ec7f-42e3-bff6-b15aa108ae9a','23b671d8-69a9-4b4b-9d66-899727b829d7',0,'gg','gg','gg',3,'3332','2020-05-04 03:24:40'),('5980559f-8c0f-4372-932f-13a289e0ab20','23b671d8-69a9-4b4b-9d66-899727b829d7',0,'phan the vien','0357119943','chelbayqn@gmail.com',4,'hi admin, i want to book this tour. Please contact me for this tour, thank you.','2020-05-16 04:12:27'),('6e717660-a651-4abf-b84b-7a63b043208e','23b671d8-69a9-4b4b-9d66-899727b829d7',0,'phan the vien 2','02132134','chelbaytest@gmail.com',9,'sad','2020-05-16 07:02:13'),('9905d290-8ad0-46bb-a0f5-798820f3a67c','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'eee','eee','eee',2,'sad','2020-05-04 04:25:23'),('a2a10e00-dcf7-4d0b-a8ad-15a997a08574','e8005764-8912-439b-9cf5-e372e0bcc5ca',0,'ddd','dd','dd',222,'asdsad','2020-05-04 04:25:43'),('c9c08b02-d622-4f7e-9041-c32e6951a502','02efa131-17a8-427e-9ff4-3eab8ea944c1',0,'phan vien','0012302103123','chelbayqn@gmail.com',4,'dssad','2020-05-23 02:04:02'),('da713536-ba0e-471f-9320-8a3a14fc645b','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'asd','dsadsa','as',4,'ddfdfdf','2020-05-04 03:21:43');
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
INSERT INTO `travel_comment` VALUES ('0d4c9469-ca8e-45c8-8acf-3187a079391c','291e2d87-4474-4464-9796-325cae858c33','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('448d23c2-87a0-469b-98ca-395fe2bb88de','e2ce8811-5bff-4a08-b926-0ed74eba9496','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('4fdf1629-e5da-4727-9e19-8738ee36fe47','e711c66b-5d76-4c76-99b1-3ce5f0dff977','some one','admin@gmail.com','hay qÃ¡','2020-05-27 02:06:04'),('600a2dcc-dc21-4704-a983-833db5cd837e','303ab30f-ca50-4159-9fc5-39b2f96709b5','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('613b87bb-d4cb-42b8-9bb7-0ad46e63b329','247c3fa1-93ab-4f1a-80cd-0a313957dba9','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('83014d86-2cf2-4b04-9ca7-68f7d295ee91','a584c632-01e4-40a7-97f5-013f1b7404e6','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('84e5b422-bedb-4e23-934e-583be7807949','dfab9bb7-6caa-4ea5-9404-e623f19b7194','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('ada680da-4b83-48cd-95a6-d4f42c389f59','e2ce8811-5bff-4a08-b926-0ed74eba9496','Phan Vien','chelbayqn@gmail.com','that\'s good, thumbs up','2020-05-02 15:01:35'),('b24827d1-96a7-4fea-93c2-832d96162bdd','247c3fa1-93ab-4f1a-80cd-0a313957dba9','aa','aa@gmail.com','this is comment','2020-05-24 03:03:08'),('c202eff7-c82b-4533-af13-21929a4ba511','247c3fa1-93ab-4f1a-80cd-0a313957dba9','asdas','dasd','sadasdasd','2020-05-24 02:05:54'),('c6c1faf9-2c45-4fff-8d6a-045d32520e8c','df9850c9-1707-4c87-a261-3f611c458025','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('d1849c79-a28a-4a1e-a3e5-9180c033ca03','247c3fa1-93ab-4f1a-80cd-0a313957dba9','aaa','asdasda','adsadsadadsad','2020-05-24 02:05:40'),('e0fd6ced-faaf-42dc-8734-02444105dab5','e711c66b-5d76-4c76-99b1-3ce5f0dff977','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34'),('f03ff43b-16d0-4487-80f5-a598aebd3a42','c9483328-9f81-4ae4-ac61-da02b108cc17','Chelbay','chelbayqn@gmail.com','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum','2020-05-03 14:36:34');
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
INSERT INTO `travel_enquiry` VALUES ('de486a36-3a95-4a0f-b9ed-a26b23ef5a71','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'phan the vien','0357119943','chelbayqn@gmail.com','2020-05-01 00:00:00',9,'i want more infomation about this tour','2020-05-16 07:04:32');
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
INSERT INTO `travel_itinerary` VALUES ('0267217d-f50e-4303-ad72-5eef903d6297','359da838-db56-493e-8fe8-344a2eeb60f0',2,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('0dcb5ba5-75c4-401d-a031-76ae3d24b4a0','786bea0a-c2a8-478d-a42f-d3651bad6cc9',1,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('1910be01-4ddf-46ec-8741-493493d73837','359da838-db56-493e-8fe8-344a2eeb60f0',4,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('289fd745-50ab-4610-a226-dd7660b6f9f7','e8005764-8912-439b-9cf5-e372e0bcc5ca',4,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('3442dd5f-e6cc-438f-9c94-1ec4af4e687f','02efa131-17a8-427e-9ff4-3eab8ea944c1',2,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('381fb6ed-f7c3-442d-8e44-1e473e91d709','23b671d8-69a9-4b4b-9d66-899727b829d7',4,'At vero eos et accusamus et','<p>We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.</p>\r\n'),('4d497517-2694-4266-b119-997cce5265c3','2c8c1de5-b14e-4d80-8016-9ff547edd355',3,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('5763f9b1-a910-4fec-b590-81ce6b293a45','786bea0a-c2a8-478d-a42f-d3651bad6cc9',4,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('5b14a995-fa53-4460-bd02-0c80c302bc41','23b671d8-69a9-4b4b-9d66-899727b829d7',2,'At vero eos et accusamus et','<p>We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.</p>\r\n'),('5c2af0c3-a0d1-4dd7-8664-3fb81b10a600','02efa131-17a8-427e-9ff4-3eab8ea944c1',4,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('7477010f-8aef-4522-a3cf-2b153ffd4765','2c8c1de5-b14e-4d80-8016-9ff547edd355',1,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('7740826e-2223-4695-8839-3d5db25fd6b9','359da838-db56-493e-8fe8-344a2eeb60f0',3,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('7c60d645-d1cf-4ae3-9595-f1d161e41bd7','786bea0a-c2a8-478d-a42f-d3651bad6cc9',3,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('8b9a65bd-d3df-44f3-81f7-25098316d784','02efa131-17a8-427e-9ff4-3eab8ea944c1',3,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('8f89d0d2-46d3-4573-b396-898cf99855e3','e8005764-8912-439b-9cf5-e372e0bcc5ca',3,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('949445cc-9db4-4c72-a2bb-5fe279a01016','2c8c1de5-b14e-4d80-8016-9ff547edd355',2,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('953ad8b1-aa5b-4cc5-a395-b38084b78249','2c8c1de5-b14e-4d80-8016-9ff547edd355',4,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('b21dfde4-301f-4fa3-af0c-405331a86706','359da838-db56-493e-8fe8-344a2eeb60f0',1,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('beec0c61-c148-4358-8af5-364b72283a84','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('d269aa5c-fb5f-4061-adce-7326ee40c983','23b671d8-69a9-4b4b-9d66-899727b829d7',3,'At vero eos et accusamus et','<p>qWe’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.</p>\r\n'),('d4de8483-e09b-4aee-b7c6-70d9ba22bbfe','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('ea6e8ca7-e0e2-4d1c-9706-8dd47930904c','786bea0a-c2a8-478d-a42f-d3651bad6cc9',2,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.'),('f0a89cb2-b792-4f07-aa63-64bce6f810ec','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'At vero eos et accusamus et','<p>We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.</p>'),('fd6356ef-0dbc-44ec-89c5-acb4e7cdc32b','e8005764-8912-439b-9cf5-e372e0bcc5ca',2,'At vero eos et accusamus et','We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.');
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
INSERT INTO `travel_service` VALUES ('021c87b0-10cf-4d54-93a9-0e40ba62dd16','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('03cf9f74-03b4-4efc-9bef-b9c083635f6a','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('06dd8af0-74e9-4c21-954e-d3c2eda9312b','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('0db01b3c-c3f3-4f43-b171-db2b42936434','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('1e69f019-35ba-4cf4-9bce-d2c28b2acc26','359da838-db56-493e-8fe8-344a2eeb60f0',1,'Service Name 6'),('2a79bca0-febd-489c-aed9-0a9f5c60aaf7','359da838-db56-493e-8fe8-344a2eeb60f0',0,'Service Name 6'),('2b306852-c73c-490d-a4fb-0894bc59fd89','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'Service Name 1'),('2c167c31-50c3-45aa-9e4b-576acdfcf539','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('3c0a6f82-8d21-4ce4-aca7-9613107c90e4','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'Service Name 1'),('3e9233e9-8063-485c-b2b6-1267090995bc','359da838-db56-493e-8fe8-344a2eeb60f0',1,'Service Name 6'),('3f6f98cf-7455-45d5-83c9-0f143b39a589','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('40cfacf1-cf01-4a70-a767-fb84abd2c0a5','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('40f0fce0-498a-4eba-a6a8-0a81e987515f','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('58ff5030-0444-4c12-aca0-6f5483499b41','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'Service Name 1'),('59bb9c95-e0d8-4ebb-b4fe-1850b9ea3573','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('5daae189-835f-4059-a882-64052d94ddd3','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('62eb6ece-5066-4889-8c59-6ff1746b6204','23b671d8-69a9-4b4b-9d66-899727b829d7',0,'Service Name 1'),('6781cc2f-0aaf-4994-a782-b645d164d4d6','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('67edcb5a-d8d8-4a91-8056-61c9b972ceb2','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('6df51ba6-7668-4790-bd27-268e99b79027','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('7e833510-c031-4216-bab6-80d5d1102b80','359da838-db56-493e-8fe8-344a2eeb60f0',1,'Service Name 6'),('81469aa7-f1cd-4052-a2dc-6732402ae10e','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('8195c5f1-980e-43e1-89e3-bb6b4523b748','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('8c0784ce-4b35-4919-89b7-4a85d9da8a6a','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('8f6b3d33-b496-40b7-bc47-eef350cd7436','359da838-db56-493e-8fe8-344a2eeb60f0',1,'Service Name 6'),('9d3bd0c0-7888-4bcb-ae52-1ba39e5d64e8','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('a35a35ea-69f4-4745-aaba-66ccc59da418','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('a4d6348a-ba50-4747-8cd3-2cfd9a24d31d','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'Service Name 1'),('a76e0b99-135f-40f8-9164-c740ae4ffa4d','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('a77ce7e8-677e-45dc-9ea5-fd705695ecdd','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('adb49b1f-063a-4122-8640-19ce42e87e87','23b671d8-69a9-4b4b-9d66-899727b829d7',0,'Service Name 1'),('ae032fd4-14a7-469f-a764-9bf4af1391b9','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('b21fdd47-9a0c-441f-aa40-9abd39b74f4d','23b671d8-69a9-4b4b-9d66-899727b829d7',0,'Service Name 1'),('b76c5ff8-505e-47d4-88a9-7d950bc64452','786bea0a-c2a8-478d-a42f-d3651bad6cc9',0,'Service Name 4'),('b911b41e-60e7-407e-a3d2-d9535e2aa571','23b671d8-69a9-4b4b-9d66-899727b829d7',1,'Service Name 1'),('c57ef80b-c5fe-45e3-9ed4-32fc272222ce','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('caa7d5bd-eab6-4afd-8e1b-5254a4193501','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('caea873f-976a-46f3-9dcc-7c22baf47250','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('e6677729-0963-4c58-a394-bbe98273cb15','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('e80082e9-30de-4f6f-bd21-8c4e7d39a715','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('e8e7a6de-126e-48a4-898f-34e5868b8f36','359da838-db56-493e-8fe8-344a2eeb60f0',0,'Service Name 6'),('ea5c07b5-3ddb-4d09-9130-eea11d6a69e8','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('ee4b3f28-7eca-4d80-a0f1-d8e4c479d9ba','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5'),('f8d7d085-291c-427b-b59b-54366ed87d92','e8005764-8912-439b-9cf5-e372e0bcc5ca',1,'Service Name 3'),('fcd7f173-d30b-4bde-9db5-2394e2d46abb','2c8c1de5-b14e-4d80-8016-9ff547edd355',0,'Service Name 2'),('fed7750d-befd-4a6a-b475-cdf473fe8eca','02efa131-17a8-427e-9ff4-3eab8ea944c1',1,'Service Name 5');
/*!40000 ALTER TABLE `travel_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_service_item`
--

DROP TABLE IF EXISTS `travel_service_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_service_item` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(4) DEFAULT NULL,
  `priority` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_service_item`
--

LOCK TABLES `travel_service_item` WRITE;
/*!40000 ALTER TABLE `travel_service_item` DISABLE KEYS */;
INSERT INTO `travel_service_item` VALUES ('100cb635-15dc-4232-9f22-c25e0aee7e5e','Clever System','icon_cone_alt','On her way she met a copy. The copy warn ed the Little Blind Text, that where it came from it would have been.',1,0),('11cd170b-f638-433d-9903-09a08252f2f6','Clever System','icon_cone_alt','On her way she met a copy. The copy warn ed the Little Blind Text, that where it came from it would have been.',1,0),('24e4621e-6d1a-4d00-b6ba-e7b5bada2746','Clever System','icon_cone_alt','On her way she met a copy. The copy warn ed the Little Blind Text, that where it came from it would have been.',1,0),('6814dcf4-1731-426b-9b18-5ae7a7c567f9','Clever System','icon_cone_alt','nnOn her way she met a copy. The copy warn ed the Little Blind Text, that where it came from it would have been.',1,5),('c50938e4-11d4-4e6c-b4e9-8446f9450ac2','Clever System','icon_cone_alt','On her way she met a copy. The copy warn ed the Little Blind Text, that where it came from it would have been.',1,0),('e7f76733-f625-436b-aa6c-a995ea565ef7','Clever System','icon_cone_alt','On her way she met a copy. The copy warn ed the Little Blind Text, that where it came from it would have been.',1,4);
/*!40000 ALTER TABLE `travel_service_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_service_panel`
--

DROP TABLE IF EXISTS `travel_service_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_service_panel` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_h1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_h2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_service_panel`
--

LOCK TABLES `travel_service_panel` WRITE;
/*!40000 ALTER TABLE `travel_service_panel` DISABLE KEYS */;
INSERT INTO `travel_service_panel` VALUES ('642f5047-ee7d-48a4-a602-621467c0dda3','A Little About Us','Our Story','A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.','https://i.imgur.com/BoHcYz3.jpg',0),('ca3757eb-dea6-4532-9ec1-e2c86740c8af','A Little About Us','Our Story','A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.','https://i.imgur.com/BoHcYz3.jpg',0),('d7e736a7-1bf2-47c3-adb4-9b54517674b9','A Little About Us','Our Story','A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.','https://i.imgur.com/BoHcYz3.jpg',1),('df27e576-01c3-473b-b5e8-b98603c4569e','A Little About Us','Our Story','A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.','https://i.imgur.com/BoHcYz3.jpg',0);
/*!40000 ALTER TABLE `travel_service_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_setting`
--

DROP TABLE IF EXISTS `travel_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_setting` (
  `key` varchar(255) NOT NULL,
  `value` text,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_setting`
--

LOCK TABLES `travel_setting` WRITE;
/*!40000 ALTER TABLE `travel_setting` DISABLE KEYS */;
INSERT INTO `travel_setting` VALUES ('',NULL),('fe_footer','{\"awards\":[\"https://i.imgur.com/tcCOgPe.png\",\"https://i.imgur.com/X9OVry3.png\"],\"description\":\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.\"}'),('shop_infos','{\"shop_media_tw\":\"https://google.com\",\"shop_media_ig\":\"https://google.com\",\"shop_email\":\"abb.com\",\"shop_media_fb\":\"https://google.com\",\"shop_media_yt\":\"https://google.com\",\"shop_phone\":\"0123456789\",\"shop_name\":\"ABCSHOP\",\"shop_logo\":\"https://i.imgur.com/iFfuGkw.png\",\"shop_address\":\"77 Nguyen Hue, Tp Hue, TT-Hue\"}'),('shop_page_about','{\"foritem\":{\"stretch_description\":\"Vestibulum id ligula porta felis euismod semper. Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Ligula Dolor.\",\"stretch_h1\":\"Etiam Vehicula Euismod Fusce Fermentum.\",\"head_h2\":\"A small river named Duden flows by their place.\",\"head_h1\":\"sadasd\"},\"section_c\":{\"bg\":\"asdsdjjjaaaaa\",\"list\":[{\"prefix\":\"\",\"name\":\"sdasd\",\"count\":500,\"suffix\":\"\"},{\"prefix\":\"\",\"name\":\"Customers\",\"count\":4,\"suffix\":\"+\"}]},\"head_bg\":\"https://i.imgur.com/ILh9vwh.jpg\",\"section_b\":{\"bg\":\"https://i.imgur.com/U5yWxNx.jpg\",\"link\":\"https://google.com\",\"description\":\"Sollicitudin Vestibulum Vulputate Ipsum demo\",\"title_h1\":\"Sollicitudin Vestibulum Vulputate Ipsum demo\",\"link_label\":\"Hold me\",\"list\":[{\"description\":\"demo\",\"title\":\"demo \"},{\"description\":\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there.sd\",\"title\":\"Business Plan change\"}]},\"section_a\":[{\"description\":\"new demo b\",\"title\":\"new demo a\"},{\"description\":\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there. demo\",\"title\":\"Business Plan demo\"}]}'),('shop_page_contact','{\"foritem\":{\"head_h2\":\"Get Intouch\",\"head_h1\":\"Contact Us\",\"form_title_h1\":\"Leave us your info\",\"form_title_h2\":\"and we will get back to you.\",\"form_holder_name\":\"Your Name (required)\",\"form_holder_email\":\"Your Email (required)\",\"form_holder_message\":\"Message\",\"form_button_submit\":\"Submit\"},\"head_bg\":\"asd\",\"section_a\":[{\"title\":\"Business Plan\",\"description\":\"Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there.\",\"link\":\"http://google.com\",\"link_label\":\"click me\"}],\"map\":{\"center_lat\":\"16.459412\",\"center_lng\":\"107.599328\",\"marker_lat\":\"16.459412\",\"marker_lng\":\"107.599328\"}}'),('shop_page_service','{\"foritem\":{\"stretch_h1\":\"jhjhj\",\"stretch_h2\":\"ksdhsd\",\"stretch_button\":\"hdfdf\",\"head_h2\":\"hfhgfgh\",\"head_h1\":\"hghgd\"},\"head_bg\":\"https://i.imgur.com/bWjxo2F.jpg\",\"service_panel_count\":4,\"panel_item_image_bg\":\"https://i.imgur.com/Ml9z27V.jpg\",\"service_item_count\":6}');
/*!40000 ALTER TABLE `travel_setting` ENABLE KEYS */;
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
INSERT INTO `travel_tag` VALUES ('0f63a9bd-0770-4483-a8f2-f46c74a95343','hot',20),('517feb38-1351-4af8-8517-6535e2a31dca','aa',9),('6671010f-1017-4dd0-9d93-7183a3eae7ef','test',0),('932534e2-24ff-4fcc-a8f3-b4bfa51eae33','cheap',22),('afd66516-6e34-4a19-993e-aeb70cbdc7fe','ss',18),('fd86897c-cbee-480e-ac95-2655c8b9588d','travel',20);
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
  `gallery` text,
  `videos` text,
  `map` text,
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
INSERT INTO `travel_tour` VALUES ('02efa131-17a8-427e-9ff4-3eab8ea944c1','Demo Tour Name 5','https://i.imgur.com/EGdPGBd.jpg','https://i.imgur.com/ACJkb6o.jpg','https://i.imgur.com/GQYlTmA.jpg','https://i.imgur.com/sjrjtg6.jpg','',NULL,'Jocy','Anguilla','At vero eos et accusamus et iusto odio dignissimos ducimus qui blandi',5,6,'7 Days 8 Nights','2020-05-03 00:00:00','2020-05-03 00:00:00',44.55,33.44,11,100,56,'<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus.</span><div><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum.</span><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\"><br></span></div>','Da Nang','2020-05-03 15:21:03','<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla.</span><div><ul><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ipsum Amet Mattis Pellentesque<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ultricies Vehicula Mollis Vestibulum Fringilla<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Condimentum Sollicitudin Fusce Vestibulum Ultricies<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Sollicitudin Consectetur Quam Ligula Vehicula<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Cursus Pharetra Purus Porta Parturient<br></span></li></ul></div>','d9835078-deef-43a5-83c3-55541ebd2f52'),('23b671d8-69a9-4b4b-9d66-899727b829d7','Demo Tour Name 1','https://i.imgur.com/ZDwuggC.jpg','https://i.imgur.com/J1ZRteN.jpg','https://i.imgur.com/GQYlTmA.jpg','https://i.imgur.com/D5bEery.jpg','1pURXP0nXIQ|1pURXP0nXIQ','<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d61349.62126480789!2d108.17168646963158!3d16.047248394671165!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2s!4v1589566216907!5m2!1sen!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>','Timoa Rymaar','Macau','At vero eos et accusamus et iusto odio dignissimos ducimus qui blandi',5,3,'3 Days 2 Nights','2020-05-03 00:00:00','2020-05-03 00:00:00',33.44,33.44,11,100,56,'<p>Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus.</p>\r\n\r\n<p>Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum.</p>\r\n','Da Nang','2020-04-27 15:21:01','<p>Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla.</p>\r\n\r\n<ul>\r\n	<li>Ipsum Amet Mattis Pellentesque</li>\r\n	<li>Ultricies Vehicula Mollis Vestibulum Fringilla</li>\r\n	<li>Condimentum Sollicitudin Fusce Vestibulum Ultricies</li>\r\n	<li>Sollicitudin Consectetur Quam Ligula Vehicula</li>\r\n	<li>Cursus Pharetra Purus Porta Parturient</li>\r\n</ul>\r\n','07307387-f1f9-487c-8b02-ab1e47b0be58'),('2c8c1de5-b14e-4d80-8016-9ff547edd355','Demo Tour Name 2','https://i.imgur.com/XXLtxhz.jpg','https://i.imgur.com/ACJkb6o.jpg','https://i.imgur.com/GQYlTmA.jpg','https://i.imgur.com/sjrjtg6.jpg','',NULL,'Marreha','The Gambia','At vero eos et accusamus et iusto odio dignissimos ducimus qui blandi',5,6,'7 Days 8 Nights','2020-05-03 00:00:00','2020-05-03 00:00:00',44.55,33.44,11,100,56,'<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus.</span><div><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum.</span><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\"><br></span></div>','Da Nang','2020-05-03 15:21:02','<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla.</span><div><ul><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ipsum Amet Mattis Pellentesque<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ultricies Vehicula Mollis Vestibulum Fringilla<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Condimentum Sollicitudin Fusce Vestibulum Ultricies<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Sollicitudin Consectetur Quam Ligula Vehicula<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Cursus Pharetra Purus Porta Parturient<br></span></li></ul></div>','46aac2a8-de6e-4c9a-9dbc-d6e9d828e35b'),('359da838-db56-493e-8fe8-344a2eeb60f0','Demo Tour Name 6','https://i.imgur.com/LxUUqZa.jpg','https://i.imgur.com/ACJkb6o.jpg','https://i.imgur.com/GQYlTmA.jpg','https://i.imgur.com/sjrjtg6.jpg','',NULL,'Croalandbia Isles','Uruguay','At vero eos et accusamus et iusto odio dignissimos ducimus qui blandi',5,6,'7 Days 8 Nights','2020-05-03 00:00:00','2020-05-03 00:00:00',44.55,33.44,11,100,56,'<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus.</span><div><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum.</span><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\"><br></span></div>','Da Nang','2020-05-03 15:21:03','<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla.</span><div><ul><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ipsum Amet Mattis Pellentesque<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ultricies Vehicula Mollis Vestibulum Fringilla<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Condimentum Sollicitudin Fusce Vestibulum Ultricies<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Sollicitudin Consectetur Quam Ligula Vehicula<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Cursus Pharetra Purus Porta Parturient<br></span></li></ul></div>','eb72ba99-7f9f-4724-8b87-6ee726d53033'),('786bea0a-c2a8-478d-a42f-d3651bad6cc9','Demo Tour Name 4','https://i.imgur.com/7burT0V.jpg','https://i.imgur.com/ACJkb6o.jpg','https://i.imgur.com/GQYlTmA.jpg','https://i.imgur.com/sjrjtg6.jpg','',NULL,'Jikyrgy','Bonaire','At vero eos et accusamus et iusto odio dignissimos ducimus qui blandi',4,6,'7 Days 8 Nights','2020-05-03 00:00:00','2020-05-03 00:00:00',44.55,33.44,11,100,56,'<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus.</span><div><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum.</span><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\"><br></span></div>','Da Nang','2020-05-03 15:21:02','<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla.</span><div><ul><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ipsum Amet Mattis Pellentesque<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ultricies Vehicula Mollis Vestibulum Fringilla<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Condimentum Sollicitudin Fusce Vestibulum Ultricies<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Sollicitudin Consectetur Quam Ligula Vehicula<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Cursus Pharetra Purus Porta Parturient<br></span></li></ul></div>','7e3332e0-b0f6-4fd9-9ccd-6bda2530336f'),('e8005764-8912-439b-9cf5-e372e0bcc5ca','Demo Tour Name 3','https://i.imgur.com/GCWCDDc.jpg','https://i.imgur.com/ACJkb6o.jpg','https://i.imgur.com/GQYlTmA.jpg','https://i.imgur.com/4DfoSII.jpg','',NULL,'Ratnited Georne','Tokelau','At vero eos et accusamus et iusto odio dignissimos ducimus qui blandi',4,6,'7 Days 8 Nights','2020-05-03 00:00:00','2020-05-03 00:00:00',33.44,33.44,11,100,55,'<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus.</span><div><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum.</span><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\"><br></span></div>','Da Nang','2020-05-08 15:21:02','<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla.</span><div><ul><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ipsum Amet Mattis Pellentesque<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ultricies Vehicula Mollis Vestibulum Fringilla<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Condimentum Sollicitudin Fusce Vestibulum Ultricies<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Sollicitudin Consectetur Quam Ligula Vehicula<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Cursus Pharetra Purus Porta Parturient<br></span></li></ul></div>','650d54f1-559b-4bf1-a4bf-4f5dbbf5c5e1');
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
INSERT INTO `travel_tour_activity` VALUES ('1fdbaadc-d3fb-49c4-b98a-53ecd1065cc5','2c8c1de5-b14e-4d80-8016-9ff547edd355','ea9894d8-4aa5-4b8c-8376-8a40db23a45d'),('43227fc6-ab00-42b9-98f1-1c7e264aa6a5','02efa131-17a8-427e-9ff4-3eab8ea944c1','77e2e5c4-a791-4757-aabd-6b9c03e860d9'),('4dd71ba0-bde4-4f02-bf87-f1ef8eae5d31','e8005764-8912-439b-9cf5-e372e0bcc5ca','bfca1736-1fe1-4afc-acaa-e8c30f3bf173'),('4e2cf841-475c-483d-bcf8-1916ef1bdaee','02efa131-17a8-427e-9ff4-3eab8ea944c1','50091334-557e-4091-b24b-b72af88bcb55'),('5bbb17ce-7fda-471d-9c42-30ea324afc39','2c8c1de5-b14e-4d80-8016-9ff547edd355','03ac7d5d-6288-4186-8dc5-66dcb29e3808'),('5f9018fb-4a57-4ac2-8184-ab649f247f2c','23b671d8-69a9-4b4b-9d66-899727b829d7','ea9894d8-4aa5-4b8c-8376-8a40db23a45d'),('6015f0a4-7228-4150-a702-9f1a467cb603','359da838-db56-493e-8fe8-344a2eeb60f0','bfca1736-1fe1-4afc-acaa-e8c30f3bf173'),('7ccf73cd-4607-4f0b-afcc-7c7758102b4b','359da838-db56-493e-8fe8-344a2eeb60f0','765e3bda-3efa-45a0-82f7-b5b83346551b'),('829fadf1-d2d5-4993-ab7c-33ad3a06d34f','02efa131-17a8-427e-9ff4-3eab8ea944c1','03ac7d5d-6288-4186-8dc5-66dcb29e3808'),('8807b736-91aa-49ee-837f-21f2d2411463','786bea0a-c2a8-478d-a42f-d3651bad6cc9','765e3bda-3efa-45a0-82f7-b5b83346551b'),('95245f41-b3ce-4664-93c1-f7b1a9e58434','786bea0a-c2a8-478d-a42f-d3651bad6cc9','03ac7d5d-6288-4186-8dc5-66dcb29e3808'),('affbf2f6-70d8-4ef6-81d9-a8268d67a620','e8005764-8912-439b-9cf5-e372e0bcc5ca','77e2e5c4-a791-4757-aabd-6b9c03e860d9'),('e29a2dca-7862-4d19-bc0a-82e426bfd97b','23b671d8-69a9-4b4b-9d66-899727b829d7','50091334-557e-4091-b24b-b72af88bcb55');
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

-- Dump completed on 2020-06-01 13:32:49
