-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: books-yoursmartchef.com
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` smallint(6) NOT NULL,
  `plan_id` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '100',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (12,'2014_10_12_000000_create_users_table',1),(13,'2014_10_12_100000_create_password_resets_table',1),(14,'2019_01_17_133109_create_books_table',1),(15,'2019_01_17_134522_create_users_books_table',1),(16,'2019_01_17_134707_create_plans_table',1),(17,'2019_04_01_133353_create_plan_texts_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
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
-- Table structure for table `plan_texts`
--

DROP TABLE IF EXISTS `plan_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_texts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_texts`
--

LOCK TABLES `plan_texts` WRITE;
/*!40000 ALTER TABLE `plan_texts` DISABLE KEYS */;
INSERT INTO `plan_texts` VALUES (1,1,'en','Beginner','2 ebooks per week','Workouts plan for a day','Trial period of 5 days at 2.99 &euro;','2019-04-01 13:39:44','2019-04-01 13:39:44'),(2,1,'it','PRINCIPIANTE','2 ebooks a settimana','Piano di allenamenti per un giorno','Periodo di prova di 5 giorni a 2,99 &euro;','2019-04-01 13:39:44','2019-04-01 13:39:44'),(3,1,'fr','Beginner','2 ebooks per week','Workouts plan for a day','Trial period of 5 days at 2.99 &euro;','2019-04-01 13:39:44','2019-04-01 13:39:44'),(4,2,'en','Basic','5 ebooks per week','Workouts plan for a week','Trial period of 5 days at 2.99','2019-04-01 13:39:44','2019-04-01 13:39:44'),(5,2,'it','DI BASE','5 ebooks a settimana','Piano di allenamenti per un giorno','Periodo di prova di 5 giorni a 2,99 &euro;','2019-04-01 13:39:44','2019-04-01 13:39:44'),(6,2,'fr','Basic','5 ebooks per week','Workouts plan for a week','Trial period of 5 days at 2.99','2019-04-01 13:39:44','2019-04-01 13:39:44'),(7,3,'en','PRO','10 ebooks per week','Workouts plan for a month','Trial period of 5 days at 2.99','2019-04-01 13:39:44','2019-04-01 13:39:44'),(8,3,'it','PRO','10 ebooks a settimana','Piano di allenamenti per un giorno','Periodo di prova di 5 giorni a 2,99 &euro;','2019-04-01 13:39:44','2019-04-01 13:39:44'),(9,3,'fr','PRO','10 ebooks per week','Workouts plan for a month','Trial period of 5 days at 2.99','2019-04-01 13:39:44','2019-04-01 13:39:44');
/*!40000 ALTER TABLE `plan_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `count_books` smallint(6) NOT NULL,
  `price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,2,'29.90','priceItem1.png','beginner','2019-04-01 13:39:44','2019-04-01 13:39:44'),(2,5,'49.90','priceItem2.png','basic','2019-04-01 13:39:44','2019-04-01 13:39:44'),(3,10,'89.90','priceItem3.png','pro','2019-04-01 13:39:44','2019-04-01 13:39:44');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribe_status` tinyint(1) NOT NULL DEFAULT '0',
  `subscribe_date` timestamp NULL DEFAULT NULL,
  `plan_id` smallint(6) NOT NULL DEFAULT '1',
  `role` enum('admin','manager','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@test.com','$2y$10$59WQXcc.lb0Lpcc/NQ9o6Ofv8grnKP9emre8Evb7Eu9uKEucwICHi','Retha','Blick','821 Kaylie Island Suite 258','Macyport','Sudan','+8872520216542','08689',1,'2019-03-22 13:39:44',3,'admin','pe2Ijdi10h','2019-03-03 13:39:44','2019-03-03 13:39:44'),(2,'andrew@test.com','$2y$10$4Hy3oBz3qeE01lkyVkC7EuyntiZTDxer9LTy3Ejt9fZl0J2elVgNq','Payton','Kessler','884 Betty Parks Apt. 816','Kristoferborough','Armenia','+8888707259960','46551-8351',1,'2019-03-27 13:39:44',1,'admin','MNwFAZzrry','2019-03-03 13:39:44','2019-03-03 13:39:44'),(3,'bruce@test.com','$2y$10$LDTDIvy/09Q.bOXKqxwhS.aQL0qnjqtW9QCo/x8ACdkre4sXO22ju','Herminia','Bartoletti','48466 Gerhold Plains','New Dawson','Iceland','+3608983077572','33342',1,'2019-03-27 13:39:44',2,'admin','0RGEavmZSg','2019-03-03 13:39:44','2019-03-03 13:39:44'),(4,'chris@test.com','$2y$10$j/.4TY0hq626ZNJ3SwqMOOAYJp80KIEoQcZciSPfYoV1n.U9Rmqn2','Remington','Conn','341 Buckridge Circles','New Hadley','Lebanon','+3565062575060','48843',1,'2019-03-27 13:39:44',3,'admin','yAzvOVesH7','2019-03-03 13:39:44','2019-03-03 13:39:44'),(5,'test@test.test','$2y$10$5/bfAnAkJ75ubA.1m9oxXuBs7dQ5i3dr3XC8HUaIxW2l6aOIKMRzu','Colton','Klocko','2617 Peyton Forges','Rustyshire','Palestinian Territories','+6801061447641','31710-5480',1,'2019-03-01 13:39:44',1,'user','NSx4iEU4Iq','2019-02-28 13:39:44','2019-02-28 13:39:44'),(6,'frank55@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Katherine','McClure','6913 Kareem Garden','North Adonis','Sri Lanka','+3718301654340','29334',0,NULL,1,'user','TOEI6GKTq3','2019-04-01 13:39:44','2019-04-01 13:39:44'),(7,'zakary.bednar@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Jane','Ankunding','107 Ruthe Falls','Christiansenborough','Moldova','+2576634954169','23371-7390',0,NULL,1,'user','G5f7FtuwIz','2019-04-01 13:39:44','2019-04-01 13:39:44'),(8,'raina73@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Joaquin','McLaughlin','369 Maggie Pines Apt. 125','New Deontae','Cote d\'Ivoire','+6206762982385','39273-8771',0,NULL,1,'user','aYcVgQwR3N','2019-04-01 13:39:44','2019-04-01 13:39:44'),(9,'abbott.olen@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Dewitt','Herzog','14634 Stokes Forest','New Jean','Armenia','+5546241472978','07640',0,NULL,1,'user','H1ke19BFHG','2019-04-01 13:39:44','2019-04-01 13:39:44'),(10,'nienow.concepcion@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Friedrich','Gerhold','248 Eino Bypass Apt. 901','Wymanfurt','Suriname','+7380175408149','98602',0,NULL,1,'user','gduYHRE9X7','2019-04-01 13:39:44','2019-04-01 13:39:44'),(11,'rosamond.okeefe@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Larissa','Runte','84862 Clemens Stream','Sawaynport','Lesotho','+8609217966775','62786',0,NULL,1,'user','ZXvt18Nhtg','2019-04-01 13:39:44','2019-04-01 13:39:44'),(12,'shany.orn@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Eleazar','Wintheiser','8612 Chaim Estate Suite 336','Carterfurt','Japan','+1565315331702','29243-9970',0,NULL,1,'user','3T07RXc1jK','2019-04-01 13:39:44','2019-04-01 13:39:44'),(13,'rhett.rowe@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Tyrel','Rohan','800 Schinner Streets','Sophiaberg','Iran','+1576043870528','62465-9714',0,NULL,1,'user','OD3M94T1WB','2019-04-01 13:39:44','2019-04-01 13:39:44'),(14,'hermiston.lawson@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Wilson','Kozey','97047 Zack Ports Apt. 653','Devynmouth','Antarctica (the territory South of 60 deg S)','+7824108850888','05370-5334',0,NULL,1,'user','wSSvnGNW0p','2019-04-01 13:39:44','2019-04-01 13:39:44'),(15,'modesta04@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Kelvin','Greenfelder','390 Linnea Crossroad Suite 286','North Hollis','Guatemala','+8031110057118','17547',0,NULL,1,'user','tnGnW5Bq7U','2019-04-01 13:39:44','2019-04-01 13:39:44');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_books`
--

DROP TABLE IF EXISTS `users_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_books`
--

LOCK TABLES `users_books` WRITE;
/*!40000 ALTER TABLE `users_books` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-02  6:53:33
