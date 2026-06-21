-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: adminsena
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `apprentices`
--

DROP TABLE IF EXISTS `apprentices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apprentices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cell_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `computer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `apprentices_course_id_foreign` (`course_id`),
  KEY `apprentices_computer_id_foreign` (`computer_id`),
  CONSTRAINT `apprentices_computer_id_foreign` FOREIGN KEY (`computer_id`) REFERENCES `computers` (`id`),
  CONSTRAINT `apprentices_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apprentices`
--

LOCK TABLES `apprentices` WRITE;
/*!40000 ALTER TABLE `apprentices` DISABLE KEYS */;
INSERT INTO `apprentices` VALUES (1,'Juan González','juan.gonzalez@misena.edu.co','3201234567','2026-06-21 04:13:56','2026-06-21 04:13:56',1,1),(2,'Laura Castillo','laura.castillo@misena.edu.co','3102345678','2026-06-21 04:13:56','2026-06-21 04:13:56',2,2),(3,'Diego Ramírez','diego.ramirez@misena.edu.co','3003456789','2026-06-21 04:13:56','2026-06-21 04:13:56',3,3),(4,'Valentina Ortiz','valentina.ortiz@misena.edu.co','3154567890','2026-06-21 04:13:56','2026-06-21 04:13:56',4,4),(5,'Andrés Morales','andres.morales@misena.edu.co','3225678901','2026-06-21 04:13:56','2026-06-21 04:13:56',5,5),(6,'Camila Rojas','camila.rojas@misena.edu.co','3189876543','2026-06-21 04:13:56','2026-06-21 04:13:56',1,6),(7,'Sebastián Muñoz','sebastian.munoz@misena.edu.co','3216549870','2026-06-21 04:13:56','2026-06-21 04:13:56',6,7),(8,'Daniela Castro','daniela.castro@misena.edu.co','3134567890','2026-06-21 04:13:56','2026-06-21 04:13:56',7,8),(9,'Felipe Herrera','felipe.herrera@misena.edu.co','3178901234','2026-06-21 04:13:56','2026-06-21 04:13:56',3,9),(10,'Carolina Mendoza','carolina.mendoza@misena.edu.co','3112345678','2026-06-21 04:13:56','2026-06-21 04:13:56',4,10);
/*!40000 ALTER TABLE `apprentices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'ADSO','2026-06-21 04:13:56','2026-06-21 04:13:56'),(2,'Animación Digital','2026-06-21 04:13:56','2026-06-21 04:13:56'),(3,'Producción Multimedia','2026-06-21 04:13:56','2026-06-21 04:13:56'),(4,'Sistemas Informáticos','2026-06-21 04:13:56','2026-06-21 04:13:56'),(5,'Gestión Empresarial','2026-06-21 04:13:56','2026-06-21 04:13:56'),(6,'Diseño Gráfico','2026-06-21 04:13:56','2026-06-21 04:13:56');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computers`
--

DROP TABLE IF EXISTS `computers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `computers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computers`
--

LOCK TABLES `computers` WRITE;
/*!40000 ALTER TABLE `computers` DISABLE KEYS */;
INSERT INTO `computers` VALUES (1,101,'HP','2026-06-21 04:13:56','2026-06-21 04:13:56'),(2,102,'Dell','2026-06-21 04:13:56','2026-06-21 04:13:56'),(3,103,'Lenovo','2026-06-21 04:13:56','2026-06-21 04:13:56'),(4,104,'Asus','2026-06-21 04:13:56','2026-06-21 04:13:56'),(5,105,'Acer','2026-06-21 04:13:56','2026-06-21 04:13:56'),(6,106,'HP','2026-06-21 04:13:56','2026-06-21 04:13:56'),(7,107,'Dell','2026-06-21 04:13:56','2026-06-21 04:13:56'),(8,108,'Lenovo','2026-06-21 04:13:56','2026-06-21 04:13:56'),(9,109,'Asus','2026-06-21 04:13:56','2026-06-21 04:13:56'),(10,110,'Acer','2026-06-21 04:13:56','2026-06-21 04:13:56');
/*!40000 ALTER TABLE `computers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_teachers`
--

DROP TABLE IF EXISTS `course_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_teachers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `teacher_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_teachers_course_id_foreign` (`course_id`),
  KEY `course_teachers_teacher_id_foreign` (`teacher_id`),
  CONSTRAINT `course_teachers_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `course_teachers_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_teachers`
--

LOCK TABLES `course_teachers` WRITE;
/*!40000 ALTER TABLE `course_teachers` DISABLE KEYS */;
INSERT INTO `course_teachers` VALUES (1,'2026-06-21 04:13:56','2026-06-21 04:13:56',1,1),(2,'2026-06-21 04:13:56','2026-06-21 04:13:56',2,2),(3,'2026-06-21 04:13:56','2026-06-21 04:13:56',3,3),(4,'2026-06-21 04:13:56','2026-06-21 04:13:56',4,4),(5,'2026-06-21 04:13:56','2026-06-21 04:13:56',5,5),(6,'2026-06-21 04:13:56','2026-06-21 04:13:56',6,6),(7,'2026-06-21 04:13:56','2026-06-21 04:13:56',7,7),(8,'2026-06-21 04:13:56','2026-06-21 04:13:56',1,6);
/*!40000 ALTER TABLE `course_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_number` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `area_id` bigint(20) unsigned NOT NULL,
  `training_center_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_area_id_foreign` (`area_id`),
  KEY `courses_training_center_id_foreign` (`training_center_id`),
  CONSTRAINT `courses_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`),
  CONSTRAINT `courses_training_center_id_foreign` FOREIGN KEY (`training_center_id`) REFERENCES `training_centers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'2754321','Diurna','2026-06-21 04:13:56','2026-06-21 04:13:56',1,1),(2,'2754322','Nocturna','2026-06-21 04:13:56','2026-06-21 04:13:56',2,2),(3,'2754323','Diurna','2026-06-21 04:13:56','2026-06-21 04:13:56',3,3),(4,'2754324','Mixta','2026-06-21 04:13:56','2026-06-21 04:13:56',4,4),(5,'2754325','Diurna','2026-06-21 04:13:56','2026-06-21 04:13:56',5,5),(6,'2754326','Nocturna','2026-06-21 04:13:56','2026-06-21 04:13:56',6,6),(7,'2754327','Diurna','2026-06-21 04:13:56','2026-06-21 04:13:56',1,3);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2026_03_04_024946_create_computers_table',1),(6,'2026_03_04_025128_create_training_centers_table',1),(7,'2026_03_04_025157_create_areas_table',1),(8,'2026_03_04_025320_create_teachers_table',1),(9,'2026_03_04_025336_create_courses_table',1),(10,'2026_03_04_025355_create_course_teachers_table',1),(11,'2026_03_04_025430_create_apprentices_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `area_id` bigint(20) unsigned NOT NULL,
  `training_center_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teachers_area_id_foreign` (`area_id`),
  KEY `teachers_training_center_id_foreign` (`training_center_id`),
  CONSTRAINT `teachers_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`),
  CONSTRAINT `teachers_training_center_id_foreign` FOREIGN KEY (`training_center_id`) REFERENCES `training_centers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Carlos Martínez','carlos.martinez@sena.edu.co','2026-06-21 04:13:56','2026-06-21 04:13:56',1,1),(2,'Ana Rodríguez','ana.rodriguez@sena.edu.co','2026-06-21 04:13:56','2026-06-21 04:13:56',2,2),(3,'Luis Pérez','luis.perez@sena.edu.co','2026-06-21 04:13:56','2026-06-21 04:13:56',3,3),(4,'María López','maria.lopez@sena.edu.co','2026-06-21 04:13:56','2026-06-21 04:13:56',4,4),(5,'Pedro García','pedro.garcia@sena.edu.co','2026-06-21 04:13:56','2026-06-21 04:13:56',5,5),(6,'Sofía Torres','sofia.torres@sena.edu.co','2026-06-21 04:13:56','2026-06-21 04:13:56',1,6),(7,'Diego Ramírez','diego.ramirez@sena.edu.co','2026-06-21 04:13:56','2026-06-21 04:13:56',6,1);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_centers`
--

DROP TABLE IF EXISTS `training_centers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training_centers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_centers`
--

LOCK TABLES `training_centers` WRITE;
/*!40000 ALTER TABLE `training_centers` DISABLE KEYS */;
INSERT INTO `training_centers` VALUES (1,'CEAI','Neiva','2026-06-21 04:13:56','2026-06-21 04:13:56'),(2,'CCC','Neiva','2026-06-21 04:13:56','2026-06-21 04:13:56'),(3,'CIT','Bogotá','2026-06-21 04:13:56','2026-06-21 04:13:56'),(4,'CAPI','Medellín','2026-06-21 04:13:56','2026-06-21 04:13:56'),(5,'CESGE','Cali','2026-06-21 04:13:56','2026-06-21 04:13:56'),(6,'CGA','Barranquilla','2026-06-21 04:13:56','2026-06-21 04:13:56');
/*!40000 ALTER TABLE `training_centers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2026-06-20 23:20:03
