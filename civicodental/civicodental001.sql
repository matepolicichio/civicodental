-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: civicodental
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add contact',1,'add_contact'),(2,'Can change contact',1,'change_contact'),(3,'Can delete contact',1,'delete_contact'),(4,'Can view contact',1,'view_contact'),(5,'Can add page',2,'add_page'),(6,'Can change page',2,'change_page'),(7,'Can delete page',2,'delete_page'),(8,'Can view page',2,'view_page'),(9,'Can add section',3,'add_section'),(10,'Can change section',3,'change_section'),(11,'Can delete section',3,'delete_section'),(12,'Can view section',3,'view_section'),(13,'Can add section selection',4,'add_sectionselection'),(14,'Can change section selection',4,'change_sectionselection'),(15,'Can delete section selection',4,'delete_sectionselection'),(16,'Can view section selection',4,'view_sectionselection'),(17,'Can add log entry',5,'add_logentry'),(18,'Can change log entry',5,'change_logentry'),(19,'Can delete log entry',5,'delete_logentry'),(20,'Can view log entry',5,'view_logentry'),(21,'Can add permission',6,'add_permission'),(22,'Can change permission',6,'change_permission'),(23,'Can delete permission',6,'delete_permission'),(24,'Can view permission',6,'view_permission'),(25,'Can add group',7,'add_group'),(26,'Can change group',7,'change_group'),(27,'Can delete group',7,'delete_group'),(28,'Can view group',7,'view_group'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add content type',9,'add_contenttype'),(34,'Can change content type',9,'change_contenttype'),(35,'Can delete content type',9,'delete_contenttype'),(36,'Can view content type',9,'view_contenttype'),(37,'Can add session',10,'add_session'),(38,'Can change session',10,'change_session'),(39,'Can delete session',10,'delete_session'),(40,'Can view session',10,'view_session'),(41,'Can add profile',11,'add_profile'),(42,'Can change profile',11,'change_profile'),(43,'Can delete profile',11,'delete_profile'),(44,'Can view profile',11,'view_profile'),(45,'Can add category',12,'add_category'),(46,'Can change category',12,'change_category'),(47,'Can delete category',12,'delete_category'),(48,'Can view category',12,'view_category'),(49,'Can add page',13,'add_page'),(50,'Can change page',13,'change_page'),(51,'Can delete page',13,'delete_page'),(52,'Can view page',13,'view_page'),(53,'Can add tag',14,'add_tag'),(54,'Can change tag',14,'change_tag'),(55,'Can delete tag',14,'delete_tag'),(56,'Can view tag',14,'view_tag'),(57,'Can add post',15,'add_post'),(58,'Can change post',15,'change_post'),(59,'Can delete post',15,'delete_post'),(60,'Can view post',15,'view_post'),(61,'Can add comment',16,'add_comment'),(62,'Can change comment',16,'change_comment'),(63,'Can delete comment',16,'delete_comment'),(64,'Can view comment',16,'view_comment'),(65,'Can add category',17,'add_category'),(66,'Can change category',17,'change_category'),(67,'Can delete category',17,'delete_category'),(68,'Can view category',17,'view_category'),(69,'Can add page',18,'add_page'),(70,'Can change page',18,'change_page'),(71,'Can delete page',18,'delete_page'),(72,'Can view page',18,'view_page'),(73,'Can add tag',19,'add_tag'),(74,'Can change tag',19,'change_tag'),(75,'Can delete tag',19,'delete_tag'),(76,'Can view tag',19,'view_tag'),(77,'Can add post',20,'add_post'),(78,'Can change post',20,'change_post'),(79,'Can delete post',20,'delete_post'),(80,'Can view post',20,'view_post'),(81,'Can add comment',21,'add_comment'),(82,'Can change comment',21,'change_comment'),(83,'Can delete comment',21,'delete_comment'),(84,'Can view comment',21,'view_comment'),(85,'Can add call to action',22,'add_calltoaction'),(86,'Can change call to action',22,'change_calltoaction'),(87,'Can delete call to action',22,'delete_calltoaction'),(88,'Can view call to action',22,'view_calltoaction'),(89,'Can add page list',23,'add_pagelist'),(90,'Can change page list',23,'change_pagelist'),(91,'Can delete page list',23,'delete_pagelist'),(92,'Can view page list',23,'view_pagelist'),(93,'Can add section list',24,'add_sectionlist'),(94,'Can change section list',24,'change_sectionlist'),(95,'Can delete section list',24,'delete_sectionlist'),(96,'Can view section list',24,'view_sectionlist'),(97,'Can add section selection',25,'add_sectionselection'),(98,'Can change section selection',25,'change_sectionselection'),(99,'Can delete section selection',25,'delete_sectionselection'),(100,'Can view section selection',25,'view_sectionselection'),(101,'Can add call to action',26,'add_calltoaction'),(102,'Can change call to action',26,'change_calltoaction'),(103,'Can delete call to action',26,'delete_calltoaction'),(104,'Can view call to action',26,'view_calltoaction'),(105,'Can add call to action',27,'add_calltoaction'),(106,'Can change call to action',27,'change_calltoaction'),(107,'Can delete call to action',27,'delete_calltoaction'),(108,'Can view call to action',27,'view_calltoaction'),(109,'Can add page enabled',28,'add_pageenabled'),(110,'Can change page enabled',28,'change_pageenabled'),(111,'Can delete page enabled',28,'delete_pageenabled'),(112,'Can view page enabled',28,'view_pageenabled'),(113,'Can add section enabled',29,'add_sectionenabled'),(114,'Can change section enabled',29,'change_sectionenabled'),(115,'Can delete section enabled',29,'delete_sectionenabled'),(116,'Can view section enabled',29,'view_sectionenabled'),(117,'Can add section selection',30,'add_sectionselection'),(118,'Can change section selection',30,'change_sectionselection'),(119,'Can delete section selection',30,'delete_sectionselection'),(120,'Can view section selection',30,'view_sectionselection'),(121,'Can add hero',31,'add_hero'),(122,'Can change hero',31,'change_hero'),(123,'Can delete hero',31,'delete_hero'),(124,'Can view hero',31,'view_hero');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$TfM4vnGQcLIWNWASDRISdI$LJxchz408UHCbfrc9xISfV7tFs6UzAW89CG+JsafwIc=','2023-12-22 14:40:45.422033',1,'martin','Martin','Policichio','martinpolicichio@gmail.com',1,1,'2023-12-09 19:29:46.000000'),(2,'pbkdf2_sha256$600000$FDXIrSLtIP0FufPtkoPATd$iokUqjgk09iyJn3bOZ1LpQpPVY76Fk7WTUwULKz0VFA=','2023-12-24 14:41:52.021426',1,'mateo','Mateo','Policichio','mateopolicichio@gmail.com',1,1,'2023-12-22 14:38:53.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calltoaction_calltoaction`
--

DROP TABLE IF EXISTS `calltoaction_calltoaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calltoaction_calltoaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `whatsapp_number` varchar(20) DEFAULT NULL,
  `whatsapp_message` longtext,
  `btn_text` varchar(50) NOT NULL,
  `background_image` varchar(100) DEFAULT NULL,
  `is_mainpage_enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calltoaction_calltoaction`
--

LOCK TABLES `calltoaction_calltoaction` WRITE;
/*!40000 ALTER TABLE `calltoaction_calltoaction` DISABLE KEYS */;
INSERT INTO `calltoaction_calltoaction` VALUES (1,'Tu Salud Bucal es Nuestra Prioridad','Únete a nosotros para experimentar una odontología de calidad, personalizada y avanzada que transformará tu sonrisa y tu confianza. Nuestro equipo dedicado está aquí para cuidar de tu bienestar bucal y crear resultados que te hagan sonreír todos los días.','5216869464883','Hola, me gustaría recibir más información...','Agenda tu cita','images/promociones/call2action/pexels-shvets-production-8413345_qcCk5gH.jpg',1),(2,'¡Prioriza la Salud de tus Encías con nuestra Periodoncia!','Descubre el poder de una salud bucal óptima con nuestro equipo especializado en Periodoncia. ¡Agenda tu cita ahora y da el primer paso hacia unas encías fuertes y una sonrisa radiante!','5216869464883','Hola, me gustaría recibir más información acerca de los servicios de Periodoncia.','Contáctenos','images/promociones/call2action/pexels-karolina-grabowska-6627277.jpg',0),(3,'¡Transforma Tu Sonrisa con Nuestros Blanqueamientos!','Descubre la magia de una sonrisa más brillante y segura en manos de nuestro equipo de expertos.','5216869464883','Hola, me gustaría recibir más información acerca de los servicios de Blanqueamiento.','¡Contáctanos!','images/promociones/call2action/pexels-anna-shvets-3845709.jpg',0),(4,'¡Recupera tu Sonrisa con Nuestros Tratamientos de Restauraciones!','Agenda tu cita hoy y descubre cómo nuestras restauraciones dentales pueden mejorar la salud y apariencia de tu sonrisa.','5216869464883','Hola, me gustaría recibir más información acerca de los servicios de Restauraciones Dentales.','¡Contáctanos!','images/promociones/call2action/pexels-cedric-fauntleroy-4269357.jpg',0),(5,'¡Recupera la Salud y Vida de tus Dientes con Nuestra Endodoncia!','Agenda tu cita hoy y descubre cómo nuestros tratamientos de endodoncia pueden salvar tus dientes y aliviar el dolor.','5216869464883','Hola, me gustaría recibir más información acerca de los servicios de Endodoncia.','¡Contáctanos!','images/promociones/call2action/pexels-andrea-piacquadio-3881170.jpg',0),(6,'¡Despierta Tu Sonrisa con Nuestras Carillas Dentales!','Agenda tu cita hoy y descubre cómo nuestras carillas dentales pueden rejuvenecer tu sonrisa con elegancia y naturalidad.','5216869464883','Hola, me gustaría recibir más información acerca de los servicios de Carillas Dentales.','¡Contáctanos!','images/promociones/call2action/pexels-anna-shvets-3845548.jpg',0),(7,'¡Transforma Tu Sonrisa con Nuestra Ortodoncia!','Agenda tu cita hoy y descubre cómo nuestros tratamientos de ortodoncia pueden alinear tu sonrisa con armonía y confianza.','5216869464883','Hola, me gustaría recibir más información acerca de los servicios de Ortodoncia.','¡Contáctanos!','images/promociones/call2action/pexels-cottonbro-studio-6528907.jpg',0),(8,'¡Recupera la Función y Belleza de tu Sonrisa con Nuestros Implantes Dentales!','Agenda tu cita hoy y descubre cómo nuestros tratamientos de implantes dentales pueden devolverte una sonrisa completa y funcional.','5216869464883','Hola, me gustaría recibir más información acerca de los servicios de Implantes Dentales.','¡Contáctanos!','images/promociones/call2action/pexels-shvets-production-8413345.jpg',0),(9,'¡Revitaliza tu Sonrisa con Nuestra Limpieza Dental Profesional!','Agenda tu cita hoy y descubre cómo nuestras limpiezas dentales pueden devolverle a tu sonrisa la frescura y la salud que se merece.','5216869464883','Hola, me gustaría recibir más información acerca de los servicios de Limpieza Dental.','¡Contáctanos!','images/promociones/call2action/pexels-cedric-fauntleroy-4269694.jpg',0),(10,'Tu Sonrisa, Nuestra Misión','Descubre una odontología excepcional que va más allá de la excelencia. Únete a nosotros para experimentar un cuidado personalizado y avanzado que transformará tu sonrisa y elevará tu confianza.','5216869464883','Hola, me gustaría recibir más información sobre sus servicios de odontología.','Reserva tu Consulta','images/promociones/call2action/CIVICO_20.JPG',1),(11,'Sonríe con Confianza, Cuida tu Salud Bucal','En Cívico Dental Care, nos dedicamos a tu salud bucal con un enfoque personalizado y avanzado. Únete a nosotros para experimentar una odontología de calidad que transformará tu sonrisa y aumentará tu confianza.','5216869464883','Hola, me gustaría recibir más información sobre sus servicios de odontología.','¡Agenda tu Cita Ahora!','images/promociones/call2action/Publi_15_civ.JPG',1);
/*!40000 ALTER TABLE `calltoaction_calltoaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `civico_contact`
--

DROP TABLE IF EXISTS `civico_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `civico_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `mensaje` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `civico_contact`
--

LOCK TABLES `civico_contact` WRITE;
/*!40000 ALTER TABLE `civico_contact` DISABLE KEYS */;
INSERT INTO `civico_contact` VALUES (1,'Rene Benjamin','DDeNCQ.dmtphwc@tonetics.biz','Rene Benjamin','Rene Benjamin'),(2,'Mateo','mateopolicichio@gmail.com','Hola','hola'),(3,'Mateo','mateopolicichio@gmail.com','Hola','hola'),(4,'Mateo','mateopolicichio@gmail.com','Hola','afdas'),(5,'efaxadihemy','avciyifo@a.trendesmail.com','Commonest nodules; replaces accelerates scaly, humanity tense.','[url=http://fjksldhyaodh.com/]Eosupet[/url] <a href=\"http://fjksldhyaodh.com/\">Agilehou</a> xxo.fkbx.civicodentalcaremexicali.com.ztj.qf http://fjksldhyaodh.com/'),(6,'efaxadihemy','avciyifo@a.trendesmail.com','Early non-neoplastic silicone urge scaly, shadowing fits.','[url=http://fjksldhyaodh.com/]Eosupet[/url] <a href=\"http://fjksldhyaodh.com/\">Agilehou</a> xxo.fkbx.civicodentalcaremexicali.com.ztj.qf http://fjksldhyaodh.com/'),(7,'Mike Morrison','peterInsotonola@gmail.com','Whitehat SEO for civicodentalcaremexicali.com','Howdy \r\n \r\nI have just took a look on your SEO for  civicodentalcaremexicali.com for its SEO metrics and saw that your website could use an upgrade. \r\n \r\nWe will enhance your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.digital-x-press.com/unbeatable-seo/ \r\n \r\nDecember SALE -30% coupon: XMS30 \r\n \r\nRegards \r\nMike Morrison\r\n \r\nDigital X SEO Experts'),(8,'Davidkit','yefri_lgars@hotmail.jp','THE $50K MINING CODE: CRACKING THE PASSIVE INCOME FORMULA','MINING FOR GOLD: TRANSFORMING $50,000 INTO PASSIVE INCOME STREAMS http://luirig.altervista.org/search/reind.php?ind=https%3A%2F%2F1010-euro.blogspot.com%3F3389 \r\n \r\n \r\n \r\n \r\n \r\n \r\nb1jv6g4e5p6g7g2k \r\nc9ib9a0b9m9x6q4a \r\nf9bi2q9w2o8g5j6c'),(9,'Web3loyaf','web3Lam@gmail.com','Privat Web3 Mystery Box','Buenas tardes queridos amigos! \r\nTe invitamos a unirte a nuestra comunidad WEB3 y recibir valiosos obsequios y premios en efectivo \r\nDesbloqueando el potencial de DeFi con WEB3BOX \r\n Obtén Todo Lo Que Quieras en Web3 Mystery BOX \r\n[url=https://web3box.pages.dev]\"Get a free gift airdrop\"[/url] \r\nLa invitación es limitada, date prisa para tener esta oportunidad \r\nSu cupón para una Caja Misteriosa adicional gratuita - 165176'),(10,'Martin','martin@gmail.com','Prueba','asdfasdf');
/*!40000 ALTER TABLE `civico_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=396 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-09 20:49:14.428478','1','civico/index.html | civico - mainpage',1,'[{\"added\": {}}]',2,1),(2,'2023-12-09 20:49:45.950588','2','promociones/home.html | Listado de Promociones',1,'[{\"added\": {}}]',2,1),(3,'2023-12-09 20:50:07.781341','3','promociones/article_details.html | Detalle de Promociones',1,'[{\"added\": {}}]',2,1),(4,'2023-12-09 20:50:36.035386','4','services/home.html | Listado de Servicios',1,'[{\"added\": {}}]',2,1),(5,'2023-12-09 20:50:52.971335','5','services/article_details.html | Detalle de Servicios',1,'[{\"added\": {}}]',2,1),(6,'2023-12-09 20:52:05.909887','1','civico/section/about.html | Nosotros',1,'[{\"added\": {}}]',3,1),(7,'2023-12-09 20:52:32.264335','2','civico/section/call2action.html | Llamanos',1,'[{\"added\": {}}]',3,1),(8,'2023-12-09 20:52:46.647336','3','civico/section/contact.html | Contacto',1,'[{\"added\": {}}]',3,1),(9,'2023-12-09 20:53:21.978479','4','civico/section/faq.html | Preguntas Frecuentes',1,'[{\"added\": {}}]',3,1),(10,'2023-12-09 20:53:47.182866','5','civico/section/features.html | Distintivos',1,'[{\"added\": {}}]',3,1),(11,'2023-12-09 20:54:05.107326','6','civico/section/hero.html | Hero',1,'[{\"added\": {}}]',3,1),(12,'2023-12-09 20:54:56.726703','7','civico/section/portfolio.html | Experiencia',1,'[{\"added\": {}}]',3,1),(13,'2023-12-09 20:55:57.155101','8','civico/section/promotions.html | Promociones',1,'[{\"added\": {}}]',3,1),(14,'2023-12-09 20:56:16.189932','9','civico/section/services.html | Servicios',1,'[{\"added\": {}}]',3,1),(15,'2023-12-09 20:56:35.456519','10','civico/section/stats.html | Estadisticas',1,'[{\"added\": {}}]',3,1),(16,'2023-12-09 20:56:54.810839','11','civico/section/team.html | Especialistas',1,'[{\"added\": {}}]',3,1),(17,'2023-12-09 20:57:21.112781','12','civico/section/testimonials.html | Testimonios',1,'[{\"added\": {}}]',3,1),(18,'2023-12-09 20:58:56.490144','13','promociones/section/posts.html | Listado de Promociones',1,'[{\"added\": {}}]',3,1),(19,'2023-12-09 20:59:47.734064','14','services/section/posts.html | Listado de Servicios',1,'[{\"added\": {}}]',3,1),(20,'2023-12-09 21:00:03.212844','13','promociones/section/posts.html | Listado de Promociones',2,'[{\"changed\": {\"fields\": [\"Html id\"]}}]',3,1),(21,'2023-12-09 21:01:20.774024','1','SectionSelection object (1)',1,'[{\"added\": {}}]',4,1),(22,'2023-12-09 21:05:43.483205','2','SectionSelection object (2)',1,'[{\"added\": {}}]',4,1),(23,'2023-12-09 21:06:26.543069','2','SectionSelection object (2)',2,'[{\"changed\": {\"fields\": [\"Nav enabled\"]}}]',4,1),(24,'2023-12-09 21:10:12.997134','3','SectionSelection object (3)',1,'[{\"added\": {}}]',4,1),(25,'2023-12-09 21:11:11.672796','3','SectionSelection object (3)',3,'',4,1),(26,'2023-12-09 21:12:07.514829','4','SectionSelection object (4)',1,'[{\"added\": {}}]',4,1),(27,'2023-12-09 21:13:09.797810','4','SectionSelection object (4)',2,'[{\"changed\": {\"fields\": [\"Page\"]}}]',4,1),(28,'2023-12-09 21:13:30.840641','4','SectionSelection object (4)',2,'[{\"changed\": {\"fields\": [\"Page\", \"Section\"]}}]',4,1),(29,'2023-12-09 21:14:14.805531','9','civico/section/services.html | Servicios',3,'',3,1),(30,'2023-12-09 21:14:44.934998','14','services/section/posts.html | Servicios',2,'[{\"changed\": {\"fields\": [\"Name\", \"Html id\"]}}]',3,1),(31,'2023-12-09 21:15:12.156098','8','civico/section/promotions.html | Promociones',3,'',3,1),(32,'2023-12-09 21:15:27.611282','13','promociones/section/posts.html | Promociones',2,'[{\"changed\": {\"fields\": [\"Name\", \"Html id\"]}}]',3,1),(33,'2023-12-09 21:16:44.846720','1','Servicios',1,'[{\"added\": {}}]',18,1),(34,'2023-12-09 21:22:39.716784','5','SectionSelection object (5)',1,'[{\"added\": {}}]',4,1),(35,'2023-12-09 21:24:09.990688','6','SectionSelection object (6)',1,'[{\"added\": {}}]',4,1),(36,'2023-12-09 21:25:02.332233','6','SectionSelection object (6)',2,'[{\"changed\": {\"fields\": [\"Page\"]}}]',4,1),(37,'2023-12-09 21:25:51.158924','1','Promociones',1,'[{\"added\": {}}]',12,1),(38,'2023-12-09 21:26:12.143686','1','Promociones',3,'',12,1),(39,'2023-12-09 21:26:21.698493','1','Promociones',1,'[{\"added\": {}}]',13,1),(40,'2023-12-09 21:26:50.690491','1','Promociones',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',13,1),(41,'2023-12-09 21:27:58.802589','7','SectionSelection object (7)',1,'[{\"added\": {}}]',4,1),(42,'2023-12-09 21:29:06.787825','8','SectionSelection object (8)',1,'[{\"added\": {}}]',4,1),(43,'2023-12-09 21:30:41.417882','9','SectionSelection object (9)',1,'[{\"added\": {}}]',4,1),(44,'2023-12-09 21:31:56.175144','10','SectionSelection object (10)',1,'[{\"added\": {}}]',4,1),(45,'2023-12-09 21:32:57.538833','11','SectionSelection object (11)',1,'[{\"added\": {}}]',4,1),(46,'2023-12-09 21:33:06.245144','11','SectionSelection object (11)',2,'[{\"changed\": {\"fields\": [\"Nav enabled\"]}}]',4,1),(47,'2023-12-10 14:18:54.279416','12','SectionSelection object (12)',1,'[{\"added\": {}}]',4,1),(48,'2023-12-10 14:19:29.641555','13','SectionSelection object (13)',1,'[{\"added\": {}}]',4,1),(49,'2023-12-11 20:54:08.372650','2','Coronas Dentales',1,'[{\"added\": {}}]',12,1),(50,'2023-12-11 20:54:18.218640','2','Coronas Dentales',2,'[]',12,1),(51,'2023-12-11 20:57:54.617713','3','Periodoncia',1,'[{\"added\": {}}]',12,1),(52,'2023-12-11 20:58:03.886960','4','Endodoncia',1,'[{\"added\": {}}]',12,1),(53,'2023-12-11 20:58:17.821191','5','Blanqueamiento',1,'[{\"added\": {}}]',12,1),(54,'2023-12-11 20:58:32.510183','6','Ortodoncia',1,'[{\"added\": {}}]',12,1),(55,'2023-12-11 20:58:46.501926','7','Implantes',1,'[{\"added\": {}}]',12,1),(56,'2023-12-11 20:58:58.181072','8','Limpieza Dental',1,'[{\"added\": {}}]',12,1),(57,'2023-12-11 20:59:12.032003','9','Carillas Dentales',1,'[{\"added\": {}}]',12,1),(58,'2023-12-11 20:59:22.673466','10','Restauraciones',1,'[{\"added\": {}}]',12,1),(59,'2023-12-11 21:00:52.320811','1','Ortodoncia',1,'[{\"added\": {}}]',14,1),(60,'2023-12-11 21:01:02.096449','2','Periodontitis',1,'[{\"added\": {}}]',14,1),(61,'2023-12-11 21:01:15.321688','3','Cirugía Dental',1,'[{\"added\": {}}]',14,1),(62,'2023-12-11 21:01:22.972833','4','Salud Bucal',1,'[{\"added\": {}}]',14,1),(63,'2023-12-11 21:01:34.803187','5','Estética Dental',1,'[{\"added\": {}}]',14,1),(64,'2023-12-11 21:01:43.723945','6','Higiene Oral',1,'[{\"added\": {}}]',14,1),(65,'2023-12-11 21:05:29.486491','1','Coronas Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Title tag\", \"Body\", \"Likes\", \"Category\", \"Tags\"]}}]',15,1),(66,'2023-12-11 21:08:06.846787','14','SectionSelection object (14)',1,'[{\"added\": {}}]',4,1),(67,'2023-12-11 21:17:06.495652','2','Limpieza Dental | martin',1,'[{\"added\": {}}]',15,1),(68,'2023-12-11 21:24:40.109469','3','Beneficios | martin',1,'[{\"added\": {}}]',15,1),(69,'2023-12-11 21:34:02.820830','4','Promocion 2x | martin',1,'[{\"added\": {}}]',15,1),(70,'2023-12-11 22:49:34.743588','5','Implantes Dentales | martin',1,'[{\"added\": {}}]',15,1),(71,'2023-12-11 22:49:55.395367','3','Beneficios | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',15,1),(72,'2023-12-11 23:07:19.544119','2','Limpieza Dental | martin',1,'[{\"added\": {}}]',20,1),(73,'2023-12-11 23:10:36.054900','3','Implantes Dentales | martin',1,'[{\"added\": {}}]',20,1),(74,'2023-12-11 23:13:10.070942','4','Ortodoncia | martin',1,'[{\"added\": {}}]',20,1),(75,'2023-12-11 23:14:28.198324','5','Carillas Dentales | martin',1,'[{\"added\": {}}]',20,1),(76,'2023-12-11 23:16:10.127607','6','Blanqueamientos | martin',1,'[{\"added\": {}}]',20,1),(77,'2023-12-11 23:17:24.329461','7','Endodoncia | martin',1,'[{\"added\": {}}]',20,1),(78,'2023-12-11 23:18:56.602044','8','Periodoncia | martin',1,'[{\"added\": {}}]',20,1),(79,'2023-12-14 22:56:06.884849','1','servicios - listado',1,'[{\"added\": {}}]',23,1),(80,'2023-12-14 22:56:48.749243','2','servicios - detalle',1,'[{\"added\": {}}]',23,1),(81,'2023-12-14 22:58:13.821259','1','servicios - listado',1,'[{\"added\": {}}]',24,1),(82,'2023-12-14 22:58:53.654245','2','servicios - call to action',1,'[{\"added\": {}}]',24,1),(83,'2023-12-14 22:59:34.250505','1','SectionSelection object (1)',1,'[{\"added\": {}}]',25,1),(84,'2023-12-14 22:59:51.228491','2','SectionSelection object (2)',1,'[{\"added\": {}}]',25,1),(85,'2023-12-14 23:00:31.643044','3','SectionSelection object (3)',1,'[{\"added\": {}}]',25,1),(86,'2023-12-14 23:04:04.607242','1','Restauraciones',1,'[{\"added\": {}}]',17,1),(87,'2023-12-14 23:04:17.244255','1','Estetica Dental',1,'[{\"added\": {}}]',19,1),(88,'2023-12-14 23:12:12.949391','1','Tu Salud Bucal es Nuestra Prioridad',1,'[{\"added\": {}}]',22,1),(89,'2023-12-14 23:12:50.638990','1','Restauraciones Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Title tag\", \"Likes\", \"Category\", \"Tags\", \"Calltoaction\"]}}]',20,1),(90,'2023-12-14 23:16:38.431991','1','Tu Salud Bucal es Nuestra Prioridad',2,'[{\"changed\": {\"fields\": [\"Whatsapp number\"]}}]',22,1),(91,'2023-12-14 23:20:13.481236','2','Blanqueamiento',1,'[{\"added\": {}}]',17,1),(92,'2023-12-14 23:20:27.211388','2','Salud Bucal',1,'[{\"added\": {}}]',19,1),(93,'2023-12-15 13:55:25.407807','6','Blanqueamientos | martin',2,'[{\"changed\": {\"fields\": [\"Calltoaction\"]}}]',20,1),(94,'2023-12-15 18:25:02.513272','8','Periodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Calltoaction is mainpage enabled\"]}}]',20,1),(95,'2023-12-15 18:25:12.215410','7','Endodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Calltoaction is mainpage enabled\"]}}]',20,1),(96,'2023-12-15 18:25:38.331950','6','Blanqueamientos | martin',2,'[]',20,1),(97,'2023-12-15 18:26:00.849406','5','Carillas Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Calltoaction is mainpage enabled\"]}}]',20,1),(98,'2023-12-15 18:26:14.427543','4','Ortodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Calltoaction is mainpage enabled\"]}}]',20,1),(99,'2023-12-15 18:26:22.696317','3','Implantes Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Calltoaction is mainpage enabled\"]}}]',20,1),(100,'2023-12-15 18:26:28.263150','2','Limpieza Dental | martin',2,'[{\"changed\": {\"fields\": [\"Calltoaction is mainpage enabled\"]}}]',20,1),(101,'2023-12-15 22:48:01.461731','2','¡Transforma Tu Sonrisa Hoy!',1,'[{\"added\": {}}]',22,1),(102,'2023-12-15 22:48:22.286617','8','Periodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Body\", \"Calltoaction\"]}}]',20,1),(103,'2023-12-15 22:55:41.234876','8','Periodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Calltoaction is mainpage enabled\"]}}]',20,1),(104,'2023-12-15 22:57:44.622561','2','¡Descubre el Bienestar con Nuestra Especialidad en Periodoncia!',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',22,1),(105,'2023-12-15 22:58:01.809597','8','Periodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Calltoaction is mainpage enabled\"]}}]',20,1),(106,'2023-12-15 23:02:24.199377','2','¡Descubre el Bienestar con Nuestra Especialidad en Periodoncia!',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',22,1),(107,'2023-12-15 23:02:29.231141','8','Periodoncia | martin',2,'[]',20,1),(108,'2023-12-15 23:16:33.925499','8','Periodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(109,'2023-12-15 23:38:07.951458','1','Restauraciones Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(110,'2023-12-15 23:38:14.725945','8','Periodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(111,'2023-12-15 23:43:59.726164','2','Limpieza Dental | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(112,'2023-12-16 01:07:25.396095','3','¡Transforma Tu Sonrisa con Nuestros Blanqueamientos!',1,'[{\"added\": {}}]',22,1),(113,'2023-12-16 01:07:36.762812','2','¡Descubre el Bienestar con Nuestra Especialidad en Periodoncia!',2,'[]',22,1),(114,'2023-12-16 01:08:34.586275','1','Tu Salud Bucal es Nuestra Prioridad',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',22,1),(115,'2023-12-16 01:09:43.243299','3','¡Transforma Tu Sonrisa con Nuestros Blanqueamientos!',2,'[]',22,1),(116,'2023-12-16 01:10:13.589166','3','¡Transforma Tu Sonrisa con Nuestros Blanqueamientos!',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\", \"Btn text\"]}}]',22,1),(117,'2023-12-16 01:10:54.452058','6','Blanqueamientos | martin',2,'[{\"changed\": {\"fields\": [\"Body\", \"Category\", \"Tags\", \"Calltoaction\", \"Calltoaction is mainpage enabled\"]}}]',20,1),(118,'2023-12-16 01:22:42.052996','4','¡Recupera tu Sonrisa con Nuestros Tratamientos de Restauraciones!',1,'[{\"added\": {}}]',22,1),(119,'2023-12-16 01:22:46.451755','1','Restauraciones Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Body\", \"Calltoaction\", \"Calltoaction is mainpage enabled\"]}}]',20,1),(120,'2023-12-16 01:24:30.052629','2','¡Prioriza la Salud de tus Encías con Nuestra Periodoncia!',2,'[{\"changed\": {\"fields\": [\"Title\", \"Whatsapp message\"]}}]',22,1),(121,'2023-12-16 01:24:33.025657','8','Periodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Body\", \"Tags\"]}}]',20,1),(122,'2023-12-16 01:25:03.070863','3','¡Transforma Tu Sonrisa con Nuestros Blanqueamientos!',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',22,1),(123,'2023-12-16 01:25:04.498031','6','Blanqueamientos | martin',2,'[]',20,1),(124,'2023-12-16 01:25:56.528890','2','¡Prioriza la Salud de tus Encías con nuestra Periodoncia!',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',22,1),(125,'2023-12-16 01:25:57.660285','8','Periodoncia | martin',2,'[]',20,1),(126,'2023-12-16 01:26:31.375300','4','¡Recupera tu Sonrisa con Nuestros Tratamientos de Restauraciones!',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',22,1),(127,'2023-12-16 01:27:19.615915','1','Restauraciones Dentales | martin',2,'[]',20,1),(128,'2023-12-16 01:33:03.305509','5','¡Recupera la Salud y Vida de tus Dientes con Nuestra Endodoncia!',1,'[{\"added\": {}}]',22,1),(129,'2023-12-16 01:33:19.880651','5','¡Recupera la Salud y Vida de tus Dientes con Nuestra Endodoncia!',2,'[{\"changed\": {\"fields\": [\"Btn text\"]}}]',22,1),(130,'2023-12-16 01:36:19.006285','5','¡Recupera la Salud y Vida de tus Dientes con Nuestra Endodoncia!',2,'[]',22,1),(131,'2023-12-16 01:36:23.921450','7','Endodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Body\", \"Tags\", \"Calltoaction\"]}}]',20,1),(132,'2023-12-16 01:42:53.651040','6','¡Despierta Tu Sonrisa con Nuestras Carillas Dentales!',1,'[{\"added\": {}}]',22,1),(133,'2023-12-16 01:43:26.012436','6','¡Despierta Tu Sonrisa con Nuestras Carillas Dentales!',2,'[{\"changed\": {\"fields\": [\"Btn text\"]}}]',22,1),(134,'2023-12-16 01:43:57.508697','5','Carillas Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Body\", \"Tags\", \"Calltoaction\"]}}]',20,1),(135,'2023-12-16 01:51:36.790273','7','¡Transforma Tu Sonrisa con Nuestra Ortodoncia!',1,'[{\"added\": {}}]',22,1),(136,'2023-12-16 01:51:51.605098','7','¡Transforma Tu Sonrisa con Nuestra Ortodoncia!',2,'[{\"changed\": {\"fields\": [\"Btn text\"]}}]',22,1),(137,'2023-12-16 01:51:53.235675','4','Ortodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Body\", \"Tags\", \"Calltoaction\"]}}]',20,1),(138,'2023-12-16 01:57:06.034721','8','¡Recupera la Función y Belleza de tu Sonrisa con Nuestros Implantes Dentales!',1,'[{\"added\": {}}]',22,1),(139,'2023-12-16 01:57:19.136358','8','¡Recupera la Función y Belleza de tu Sonrisa con Nuestros Implantes Dentales!',2,'[{\"changed\": {\"fields\": [\"Btn text\"]}}]',22,1),(140,'2023-12-16 01:57:21.679400','3','Implantes Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Body\", \"Tags\", \"Calltoaction\"]}}]',20,1),(141,'2023-12-16 02:01:50.545261','9','¡Revitaliza tu Sonrisa con Nuestra Limpieza Dental Profesional!',1,'[{\"added\": {}}]',22,1),(142,'2023-12-16 02:02:03.508335','9','¡Revitaliza tu Sonrisa con Nuestra Limpieza Dental Profesional!',2,'[{\"changed\": {\"fields\": [\"Btn text\"]}}]',22,1),(143,'2023-12-16 02:02:11.995939','2','Limpieza Dental | martin',2,'[{\"changed\": {\"fields\": [\"Body\", \"Calltoaction\"]}}]',20,1),(144,'2023-12-16 02:07:36.491575','2','Limpieza Dental | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(145,'2023-12-16 02:10:26.355212','2','Limpieza Dental | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(146,'2023-12-16 02:11:04.287496','2','Limpieza Dental | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(147,'2023-12-16 02:19:49.229162','2','Limpieza Dental | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(148,'2023-12-16 02:42:21.599177','4','Ortodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(149,'2023-12-16 02:43:23.177837','2','Limpieza Dental | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(150,'2023-12-16 02:44:22.658790','4','Ortodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',20,1),(151,'2023-12-16 02:45:09.865827','4','Ortodoncia | martin',2,'[]',20,1),(152,'2023-12-17 19:17:14.003011','1','civico - mainpage',1,'[{\"added\": {}}]',28,1),(153,'2023-12-17 19:17:45.030392','2','servicios - listado',1,'[{\"added\": {}}]',28,1),(154,'2023-12-17 19:17:58.659833','3','servicios - detalle',1,'[{\"added\": {}}]',28,1),(155,'2023-12-17 19:18:12.423509','4','promociones - listado',1,'[{\"added\": {}}]',28,1),(156,'2023-12-17 19:18:27.834684','5','promociones - detalle',1,'[{\"added\": {}}]',28,1),(157,'2023-12-17 19:18:59.907018','1','main - hero',1,'[{\"added\": {}}]',29,1),(158,'2023-12-17 19:20:08.729259','2','main - nosotros',1,'[{\"added\": {}}]',29,1),(159,'2023-12-17 19:20:44.899153','3','calltoaction - llámanos',1,'[{\"added\": {}}]',29,1),(160,'2023-12-17 19:21:09.754838','4','main - contacto',1,'[{\"added\": {}}]',29,1),(161,'2023-12-17 19:21:27.469025','5','main - preguntas frecuentes',1,'[{\"added\": {}}]',29,1),(162,'2023-12-17 19:21:46.623799','6','main - distintivos',1,'[{\"added\": {}}]',29,1),(163,'2023-12-17 19:24:49.757612','7','main - experiencia',1,'[{\"added\": {}}]',29,1),(164,'2023-12-17 19:25:54.097229','8','main - equipo',1,'[{\"added\": {}}]',29,1),(165,'2023-12-17 19:26:33.164708','9','main - testimonios',1,'[{\"added\": {}}]',29,1),(166,'2023-12-17 19:27:14.310526','10','promociones - listado',1,'[{\"added\": {}}]',29,1),(167,'2023-12-17 19:27:50.844594','11','servicios - listado',1,'[{\"added\": {}}]',29,1),(168,'2023-12-17 19:28:38.876424','1','SectionSelection object (1)',1,'[{\"added\": {}}]',30,1),(169,'2023-12-17 19:29:08.348952','2','SectionSelection object (2)',1,'[{\"added\": {}}]',30,1),(170,'2023-12-17 19:31:19.519097','3','SectionSelection object (3)',1,'[{\"added\": {}}]',30,1),(171,'2023-12-17 19:43:29.098179','4','SectionSelection object (4)',1,'[{\"added\": {}}]',30,1),(172,'2023-12-17 19:44:29.387824','4','SectionSelection object (4)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,1),(173,'2023-12-17 19:45:04.072324','5','SectionSelection object (5)',1,'[{\"added\": {}}]',30,1),(174,'2023-12-17 19:46:10.674095','12','main - estadísticas',1,'[{\"added\": {}}]',29,1),(175,'2023-12-17 19:46:22.693541','4','SectionSelection object (4)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,1),(176,'2023-12-17 19:46:52.801402','6','SectionSelection object (6)',1,'[{\"added\": {}}]',30,1),(177,'2023-12-17 19:47:22.549123','7','SectionSelection object (7)',1,'[{\"added\": {}}]',30,1),(178,'2023-12-17 19:48:00.873778','8','SectionSelection object (8)',1,'[{\"added\": {}}]',30,1),(179,'2023-12-17 19:48:41.459178','9','SectionSelection object (9)',1,'[{\"added\": {}}]',30,1),(180,'2023-12-17 19:49:19.833008','10','SectionSelection object (10)',1,'[{\"added\": {}}]',30,1),(181,'2023-12-17 19:50:06.752171','11','SectionSelection object (11)',1,'[{\"added\": {}}]',30,1),(182,'2023-12-17 19:50:40.276131','12','SectionSelection object (12)',1,'[{\"added\": {}}]',30,1),(183,'2023-12-17 19:50:51.738921','12','SectionSelection object (12)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,1),(184,'2023-12-17 19:51:16.057523','13','SectionSelection object (13)',1,'[{\"added\": {}}]',30,1),(185,'2023-12-17 19:51:35.372596','14','SectionSelection object (14)',1,'[{\"added\": {}}]',30,1),(186,'2023-12-17 19:52:00.993259','15','SectionSelection object (15)',1,'[{\"added\": {}}]',30,1),(187,'2023-12-17 19:52:20.391148','16','SectionSelection object (16)',1,'[{\"added\": {}}]',30,1),(188,'2023-12-17 19:58:23.724706','1','Tu Salud Bucal es Nuestra Prioridad',1,'[{\"added\": {}}]',27,1),(189,'2023-12-17 19:59:14.900010','2','¡Prioriza la Salud de tus Encías con nuestra Periodoncia!',1,'[{\"added\": {}}]',27,1),(190,'2023-12-17 20:00:52.986113','3','¡Transforma Tu Sonrisa con Nuestros Blanqueamientos!',1,'[{\"added\": {}}]',27,1),(191,'2023-12-17 20:01:59.450180','4','¡Recupera tu Sonrisa con Nuestros Tratamientos de Restauraciones!',1,'[{\"added\": {}}]',27,1),(192,'2023-12-17 20:04:02.487251','5','¡Recupera la Salud y Vida de tus Dientes con Nuestra Endodoncia!',1,'[{\"added\": {}}]',27,1),(193,'2023-12-17 20:04:54.665839','6','¡Despierta Tu Sonrisa con Nuestras Carillas Dentales!',1,'[{\"added\": {}}]',27,1),(194,'2023-12-17 20:05:46.786128','7','¡Transforma Tu Sonrisa con Nuestra Ortodoncia!',1,'[{\"added\": {}}]',27,1),(195,'2023-12-17 20:06:42.532808','8','¡Recupera la Función y Belleza de tu Sonrisa con Nuestros Implantes Dentales!',1,'[{\"added\": {}}]',27,1),(196,'2023-12-17 20:07:43.923905','9','¡Revitaliza tu Sonrisa con Nuestra Limpieza Dental Profesional!',1,'[{\"added\": {}}]',27,1),(197,'2023-12-17 20:10:06.466504','1','Restauraciones Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',20,1),(198,'2023-12-17 20:11:01.517484','2','Limpieza Dental | martin',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',20,1),(199,'2023-12-17 20:51:14.251814','3','Implantes Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',20,1),(200,'2023-12-17 20:53:01.824904','4','Ortodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',20,1),(201,'2023-12-17 20:53:39.275122','5','Carillas Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',20,1),(202,'2023-12-17 20:53:59.272350','6','Blanqueamientos | martin',2,'[]',20,1),(203,'2023-12-17 20:54:11.952993','6','Blanqueamientos | martin',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',20,1),(204,'2023-12-17 20:55:03.020712','7','Endodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',20,1),(205,'2023-12-17 20:55:20.602125','8','Periodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',20,1),(206,'2023-12-18 22:12:48.961754','1','Promociones Especiales',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',13,1),(207,'2023-12-18 22:13:26.829775','2','Promociones',1,'[{\"added\": {}}]',13,1),(208,'2023-12-18 22:13:49.351452','3','Ofertas Exclusivas para tu Sonrisa',1,'[{\"added\": {}}]',13,1),(209,'2023-12-18 22:14:54.054780','4','Ofertas Dentales del Mes',1,'[{\"added\": {}}]',13,1),(210,'2023-12-18 22:15:17.037490','5','Promociones Destacadas',1,'[{\"added\": {}}]',13,1),(211,'2023-12-18 22:15:41.904273','6','¡Sonríe con Nuestras Promociones!',1,'[{\"added\": {}}]',13,1),(212,'2023-12-18 22:16:09.139635','7','Descuentos Especiales en Tratamientos Dentales',1,'[{\"added\": {}}]',13,1),(213,'2023-12-18 22:16:34.293302','8','Ofertas Irresistibles para Tu Sonrisa',1,'[{\"added\": {}}]',13,1),(214,'2023-12-18 22:17:43.723502','3','Implantes',1,'[{\"added\": {}}]',17,1),(215,'2023-12-18 22:17:55.456121','4','Endodoncia',1,'[{\"added\": {}}]',17,1),(216,'2023-12-18 22:18:16.824685','5','Carillas Dentales',1,'[{\"added\": {}}]',17,1),(217,'2023-12-18 22:18:26.359003','3','Implantes Dentales',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',17,1),(218,'2023-12-18 22:18:42.474019','1','Restauraciones Dentales',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',17,1),(219,'2023-12-18 22:18:52.070522','6','Periodoncia',1,'[{\"added\": {}}]',17,1),(220,'2023-12-18 22:19:20.155661','7','Limpieza Dental',1,'[{\"added\": {}}]',17,1),(221,'2023-12-18 22:19:32.704605','8','Ortodoncia',1,'[{\"added\": {}}]',17,1),(222,'2023-12-18 22:20:47.606649','3','Higiene Oral',1,'[{\"added\": {}}]',19,1),(223,'2023-12-18 22:21:04.603035','4','Cirugía Dental',1,'[{\"added\": {}}]',19,1),(224,'2023-12-18 22:21:18.038952','5','Periodontitis',1,'[{\"added\": {}}]',19,1),(225,'2023-12-18 22:21:32.797625','6','Piezas Dentales',1,'[{\"added\": {}}]',19,1),(226,'2023-12-18 22:21:43.941583','7','Ortodoncia',1,'[{\"added\": {}}]',19,1),(227,'2023-12-18 22:22:03.902398','3','SectionSelection object (3)',3,'',25,1),(228,'2023-12-18 22:22:04.016649','1','SectionSelection object (1)',3,'',25,1),(229,'2023-12-18 22:22:04.160274','2','SectionSelection object (2)',3,'',25,1),(230,'2023-12-18 22:22:15.740706','2','servicios - call to action',3,'',24,1),(231,'2023-12-18 22:22:15.791455','1','servicios - listado',3,'',24,1),(232,'2023-12-18 22:22:30.580140','2','servicios - detalle',3,'',23,1),(233,'2023-12-18 22:22:30.645867','1','servicios - listado',3,'',23,1),(234,'2023-12-18 22:23:25.417573','1','Tu Salud Bucal es Nuestra Prioridad',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(235,'2023-12-18 22:23:34.878971','2','¡Prioriza la Salud de tus Encías con nuestra Periodoncia!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(236,'2023-12-18 22:23:43.416132','3','¡Transforma Tu Sonrisa con Nuestros Blanqueamientos!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(237,'2023-12-18 22:23:52.300229','4','¡Recupera tu Sonrisa con Nuestros Tratamientos de Restauraciones!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(238,'2023-12-18 22:23:58.118797','5','¡Recupera la Salud y Vida de tus Dientes con Nuestra Endodoncia!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(239,'2023-12-18 22:24:11.565833','6','¡Despierta Tu Sonrisa con Nuestras Carillas Dentales!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(240,'2023-12-18 22:24:17.459366','7','¡Transforma Tu Sonrisa con Nuestra Ortodoncia!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(241,'2023-12-18 22:24:22.760216','8','¡Recupera la Función y Belleza de tu Sonrisa con Nuestros Implantes Dentales!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(242,'2023-12-18 22:24:26.652515','9','¡Revitaliza tu Sonrisa con Nuestra Limpieza Dental Profesional!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(243,'2023-12-18 22:27:34.028031','12','SectionSelection object (12)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,1),(244,'2023-12-18 22:27:49.685364','11','SectionSelection object (11)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,1),(245,'2023-12-18 22:30:03.256189','1','SectionSelection object (1)',3,'',4,1),(246,'2023-12-18 22:30:03.409587','2','SectionSelection object (2)',3,'',4,1),(247,'2023-12-18 22:30:03.536284','4','SectionSelection object (4)',3,'',4,1),(248,'2023-12-18 22:30:03.703822','5','SectionSelection object (5)',3,'',4,1),(249,'2023-12-18 22:30:03.858596','6','SectionSelection object (6)',3,'',4,1),(250,'2023-12-18 22:30:03.995826','7','SectionSelection object (7)',3,'',4,1),(251,'2023-12-18 22:30:04.124283','8','SectionSelection object (8)',3,'',4,1),(252,'2023-12-18 22:30:04.390257','9','SectionSelection object (9)',3,'',4,1),(253,'2023-12-18 22:30:04.865082','10','SectionSelection object (10)',3,'',4,1),(254,'2023-12-18 22:30:05.081593','11','SectionSelection object (11)',3,'',4,1),(255,'2023-12-18 22:30:05.339975','12','SectionSelection object (12)',3,'',4,1),(256,'2023-12-18 22:30:05.860671','14','SectionSelection object (14)',3,'',4,1),(257,'2023-12-18 22:30:05.986463','13','SectionSelection object (13)',3,'',4,1),(258,'2023-12-18 22:30:15.651413','14','services/section/posts.html | Servicios',3,'',3,1),(259,'2023-12-18 22:30:15.835364','13','promociones/section/posts.html | Promociones',3,'',3,1),(260,'2023-12-18 22:30:15.971898','12','civico/section/testimonials.html | Testimonios',3,'',3,1),(261,'2023-12-18 22:30:16.229179','11','civico/section/team.html | Especialistas',3,'',3,1),(262,'2023-12-18 22:30:16.492400','10','civico/section/stats.html | Estadisticas',3,'',3,1),(263,'2023-12-18 22:30:16.627264','7','civico/section/portfolio.html | Experiencia',3,'',3,1),(264,'2023-12-18 22:30:16.747497','6','civico/section/hero.html | Hero',3,'',3,1),(265,'2023-12-18 22:30:16.880195','5','civico/section/features.html | Distintivos',3,'',3,1),(266,'2023-12-18 22:30:17.007626','4','civico/section/faq.html | Preguntas Frecuentes',3,'',3,1),(267,'2023-12-18 22:30:17.133838','3','civico/section/contact.html | Contacto',3,'',3,1),(268,'2023-12-18 22:30:17.224897','2','civico/section/call2action.html | Llamanos',3,'',3,1),(269,'2023-12-18 22:30:17.334603','1','civico/section/about.html | Nosotros',3,'',3,1),(270,'2023-12-18 22:30:25.665111','5','services/article_details.html | Detalle de Servicios',3,'',2,1),(271,'2023-12-18 22:30:25.841219','4','services/home.html | Listado de Servicios',3,'',2,1),(272,'2023-12-18 22:30:25.958722','3','promociones/article_details.html | Detalle de Promociones',3,'',2,1),(273,'2023-12-18 22:30:26.686687','2','promociones/home.html | Listado de Promociones',3,'',2,1),(274,'2023-12-18 22:30:27.387145','1','civico/index.html | civico - mainpage',3,'',2,1),(275,'2023-12-19 02:06:27.207190','9','¡Revitaliza tu Sonrisa con Nuestra Limpieza Dental Profesional!',3,'',22,1),(276,'2023-12-19 02:06:27.298431','8','¡Recupera la Función y Belleza de tu Sonrisa con Nuestros Implantes Dentales!',3,'',22,1),(277,'2023-12-19 02:06:27.453982','7','¡Transforma Tu Sonrisa con Nuestra Ortodoncia!',3,'',22,1),(278,'2023-12-19 02:06:27.836091','6','¡Despierta Tu Sonrisa con Nuestras Carillas Dentales!',3,'',22,1),(279,'2023-12-19 02:06:27.977875','5','¡Recupera la Salud y Vida de tus Dientes con Nuestra Endodoncia!',3,'',22,1),(280,'2023-12-19 02:06:28.056244','4','¡Recupera tu Sonrisa con Nuestros Tratamientos de Restauraciones!',3,'',22,1),(281,'2023-12-19 02:06:28.221679','3','¡Transforma Tu Sonrisa con Nuestros Blanqueamientos!',3,'',22,1),(282,'2023-12-19 02:06:28.383819','2','¡Prioriza la Salud de tus Encías con nuestra Periodoncia!',3,'',22,1),(283,'2023-12-19 02:06:28.495180','1','Tu Salud Bucal es Nuestra Prioridad',3,'',22,1),(284,'2023-12-19 20:36:28.074205','9','Periodoncia | martin',1,'[{\"added\": {}}]',20,1),(285,'2023-12-19 20:55:02.052354','9','Periodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',20,1),(286,'2023-12-19 21:04:06.711650','10','Endodoncia | martin',1,'[{\"added\": {}}]',20,1),(287,'2023-12-19 21:07:16.544484','2','Blanqueamientos',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',17,1),(288,'2023-12-19 21:09:23.880283','11','Blanqueamientos | martin',1,'[{\"added\": {}}]',20,1),(289,'2023-12-19 21:13:57.648010','12','Carillas Dentales | martin',1,'[{\"added\": {}}]',20,1),(290,'2023-12-19 21:16:51.649269','13','Ortodoncia | martin',1,'[{\"added\": {}}]',20,1),(291,'2023-12-19 21:18:21.720272','14','Implantes Dentales | martin',1,'[{\"added\": {}}]',20,1),(292,'2023-12-19 21:20:29.913711','15','Limpieza Dental | martin',1,'[{\"added\": {}}]',20,1),(293,'2023-12-19 21:26:06.205359','16','Restauraciones Dentales | martin',1,'[{\"added\": {}}]',20,1),(294,'2023-12-19 21:26:49.172327','14','Implantes Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',20,1),(295,'2023-12-19 21:31:40.028053','15','Limpieza Dental | martin',2,'[]',20,1),(296,'2023-12-19 23:56:52.556185','16','Restauraciones Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(297,'2023-12-19 23:58:01.870227','13','Ortodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(298,'2023-12-20 00:01:28.019196','13','Ortodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(299,'2023-12-20 00:01:50.700727','13','Ortodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',20,1),(300,'2023-12-20 00:02:35.626365','13','Ortodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(301,'2023-12-20 00:02:46.453838','13','Ortodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(302,'2023-12-20 00:07:03.302389','13','Ortodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(303,'2023-12-20 00:07:21.936083','15','Limpieza Dental | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(304,'2023-12-20 14:11:39.397027','11','Blanqueamientos | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(305,'2023-12-20 15:15:22.354535','12','Carillas Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(306,'2023-12-20 15:16:29.885775','13','Ortodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(307,'2023-12-20 15:19:59.015966','14','Implantes Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(308,'2023-12-20 15:26:23.447742','9','Periodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(309,'2023-12-20 21:43:02.418108','9','¡Revitaliza tu Sonrisa con Nuestra Limpieza Dental Profesional!',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',27,1),(310,'2023-12-20 21:45:34.648747','8','¡Recupera la Función y Belleza de tu Sonrisa con Nuestros Implantes Dentales!',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',27,1),(311,'2023-12-20 21:49:53.166669','9','¡Revitaliza tu Sonrisa con Nuestra Limpieza Dental Profesional!',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',27,1),(312,'2023-12-20 21:50:41.255396','7','¡Transforma Tu Sonrisa con Nuestra Ortodoncia!',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',27,1),(313,'2023-12-20 21:53:02.957997','6','¡Despierta Tu Sonrisa con Nuestras Carillas Dentales!',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',27,1),(314,'2023-12-20 21:56:29.474329','10','Endodoncia | martin',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',20,1),(315,'2023-12-20 21:58:38.265068','5','¡Recupera la Salud y Vida de tus Dientes con Nuestra Endodoncia!',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',27,1),(316,'2023-12-20 22:04:21.985617','4','¡Recupera tu Sonrisa con Nuestros Tratamientos de Restauraciones!',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',27,1),(317,'2023-12-20 22:05:00.642007','3','¡Transforma Tu Sonrisa con Nuestros Blanqueamientos!',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',27,1),(318,'2023-12-20 22:06:33.590404','2','¡Prioriza la Salud de tus Encías con nuestra Periodoncia!',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',27,1),(319,'2023-12-20 22:10:32.244575','5','Implantes Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',15,1),(320,'2023-12-20 22:10:43.072897','5','Implantes Dentales | martin',2,'[]',15,1),(321,'2023-12-20 22:10:52.491789','4','Promocion 2x | martin',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',15,1),(322,'2023-12-20 22:11:00.447451','3','Beneficios | martin',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',15,1),(323,'2023-12-20 22:11:09.956286','2','Limpieza Dental | martin',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',15,1),(324,'2023-12-20 22:11:16.833595','1','Coronas Dentales | martin',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',15,1),(325,'2023-12-20 22:12:47.267123','4','¡Recupera tu Sonrisa con Nuestros Tratamientos de Restauraciones!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(326,'2023-12-20 22:12:48.711428','16','Restauraciones Dentales | martin',2,'[]',20,1),(327,'2023-12-20 22:12:55.036865','4','¡Recupera tu Sonrisa con Nuestros Tratamientos de Restauraciones!',2,'[]',27,1),(328,'2023-12-20 22:12:57.208391','16','Restauraciones Dentales | martin',2,'[]',20,1),(329,'2023-12-20 22:13:04.332244','9','¡Revitaliza tu Sonrisa con Nuestra Limpieza Dental Profesional!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(330,'2023-12-20 22:13:05.779041','15','Limpieza Dental | martin',2,'[]',20,1),(331,'2023-12-20 22:13:14.210339','8','¡Recupera la Función y Belleza de tu Sonrisa con Nuestros Implantes Dentales!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(332,'2023-12-20 22:13:15.536957','14','Implantes Dentales | martin',2,'[]',20,1),(333,'2023-12-20 22:13:24.541508','7','¡Transforma Tu Sonrisa con Nuestra Ortodoncia!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(334,'2023-12-20 22:13:26.482066','13','Ortodoncia | martin',2,'[]',20,1),(335,'2023-12-20 22:13:37.190856','6','¡Despierta Tu Sonrisa con Nuestras Carillas Dentales!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(336,'2023-12-20 22:13:39.327773','12','Carillas Dentales | martin',2,'[]',20,1),(337,'2023-12-20 22:13:49.546012','3','¡Transforma Tu Sonrisa con Nuestros Blanqueamientos!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(338,'2023-12-20 22:13:50.919861','11','Blanqueamientos | martin',2,'[]',20,1),(339,'2023-12-20 22:14:01.807205','5','¡Recupera la Salud y Vida de tus Dientes con Nuestra Endodoncia!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(340,'2023-12-20 22:14:02.744890','10','Endodoncia | martin',2,'[]',20,1),(341,'2023-12-20 22:14:13.310512','2','¡Prioriza la Salud de tus Encías con nuestra Periodoncia!',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',27,1),(342,'2023-12-20 22:14:15.696934','9','Periodoncia | martin',2,'[]',20,1),(343,'2023-12-20 22:14:26.311376','5','¡Recupera la Salud y Vida de tus Dientes con Nuestra Endodoncia!',2,'[]',27,1),(344,'2023-12-20 22:17:54.770985','8','SectionSelection object (8)',2,'[]',30,1),(345,'2023-12-20 22:20:21.618396','8','SectionSelection object (8)',2,'[]',30,1),(346,'2023-12-20 22:43:54.453419','1','Tu Salud Bucal es Nuestra Prioridad',2,'[]',27,1),(347,'2023-12-20 22:44:04.172232','10','Tu Salud Bucal es Nuestra Prioridad',1,'[{\"added\": {}}]',27,1),(348,'2023-12-20 22:48:39.971501','10','Tu Sonrisa, Nuestra Misión',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\", \"Whatsapp message\", \"Btn text\", \"Background image\", \"Is mainpage enabled\"]}}]',27,1),(349,'2023-12-20 22:51:08.851003','11','Sonríe con Confianza, Cuida tu Salud Bucal',1,'[{\"added\": {}}]',27,1),(350,'2023-12-21 20:01:18.457659','1','hero',2,'[{\"changed\": {\"fields\": [\"Section path\"]}}]',29,1),(351,'2023-12-21 20:01:46.323959','1','SectionSelection object (1)',2,'[]',30,1),(352,'2023-12-21 20:02:41.496904','1','Cuidá tu sonrisa',1,'[{\"added\": {}}]',31,1),(353,'2023-12-21 20:06:03.226815','2','Clínica Odontológica Centro Cívico',1,'[{\"added\": {}}]',31,1),(354,'2023-12-21 20:06:58.645590','1','Tu Salud Bucal es Nuestra Prioridad',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',27,1),(355,'2023-12-21 20:09:30.009102','1','Tu Salud Bucal es Nuestra Prioridad',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',27,1),(356,'2023-12-21 20:12:36.997150','1','Tu Salud Bucal es Nuestra Prioridad',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',27,1),(357,'2023-12-21 23:07:19.081075','1','Tu Salud Bucal es Nuestra Prioridad',2,'[{\"changed\": {\"fields\": [\"Whatsapp number\"]}}]',27,1),(358,'2023-12-21 23:07:26.965531','2','¡Prioriza la Salud de tus Encías con nuestra Periodoncia!',2,'[{\"changed\": {\"fields\": [\"Whatsapp number\"]}}]',27,1),(359,'2023-12-21 23:07:33.905930','3','¡Transforma Tu Sonrisa con Nuestros Blanqueamientos!',2,'[{\"changed\": {\"fields\": [\"Whatsapp number\"]}}]',27,1),(360,'2023-12-21 23:07:40.947903','4','¡Recupera tu Sonrisa con Nuestros Tratamientos de Restauraciones!',2,'[{\"changed\": {\"fields\": [\"Whatsapp number\"]}}]',27,1),(361,'2023-12-21 23:07:51.144824','5','¡Recupera la Salud y Vida de tus Dientes con Nuestra Endodoncia!',2,'[{\"changed\": {\"fields\": [\"Whatsapp number\"]}}]',27,1),(362,'2023-12-21 23:07:57.733742','6','¡Despierta Tu Sonrisa con Nuestras Carillas Dentales!',2,'[{\"changed\": {\"fields\": [\"Whatsapp number\"]}}]',27,1),(363,'2023-12-21 23:08:11.320447','7','¡Transforma Tu Sonrisa con Nuestra Ortodoncia!',2,'[{\"changed\": {\"fields\": [\"Whatsapp number\"]}}]',27,1),(364,'2023-12-21 23:08:17.794627','8','¡Recupera la Función y Belleza de tu Sonrisa con Nuestros Implantes Dentales!',2,'[{\"changed\": {\"fields\": [\"Whatsapp number\"]}}]',27,1),(365,'2023-12-21 23:08:23.932802','9','¡Revitaliza tu Sonrisa con Nuestra Limpieza Dental Profesional!',2,'[{\"changed\": {\"fields\": [\"Whatsapp number\"]}}]',27,1),(366,'2023-12-22 14:33:52.666982','1','martin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',8,1),(367,'2023-12-22 14:38:53.228968','2','mateo',1,'[{\"added\": {}}]',8,1),(368,'2023-12-22 14:39:15.240107','2','mateo',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Superuser status\"]}}]',8,1),(369,'2023-12-22 14:39:43.961629','1','martin',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',8,1),(370,'2023-12-24 14:43:10.745281','8','SectionSelection object (8)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(371,'2023-12-24 14:43:24.657267','1','SectionSelection object (1)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(372,'2023-12-24 14:44:29.316484','8','SectionSelection object (8)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(373,'2023-12-24 14:44:58.870411','10','SectionSelection object (10)',2,'[]',30,2),(374,'2023-12-24 14:45:30.486409','2','SectionSelection object (2)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(375,'2023-12-24 14:45:38.882299','4','SectionSelection object (4)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(376,'2023-12-24 14:46:03.007595','9','SectionSelection object (9)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(377,'2023-12-24 14:46:16.191001','10','SectionSelection object (10)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(378,'2023-12-24 14:47:17.125624','2','SectionSelection object (2)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(379,'2023-12-24 14:47:29.519194','8','SectionSelection object (8)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(380,'2023-12-24 14:47:36.935932','3','SectionSelection object (3)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(381,'2023-12-24 14:47:39.534789','3','SectionSelection object (3)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(382,'2023-12-24 14:47:39.896600','3','SectionSelection object (3)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(383,'2023-12-24 14:47:51.214752','6','SectionSelection object (6)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(384,'2023-12-24 14:47:56.570594','5','SectionSelection object (5)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(385,'2023-12-24 14:48:19.822912','4','SectionSelection object (4)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(386,'2023-12-24 14:48:25.049123','9','SectionSelection object (9)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(387,'2023-12-24 14:48:33.809408','10','SectionSelection object (10)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',30,2),(388,'2023-12-24 14:50:07.101133','1','Tratamientos Dentales',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',18,2),(389,'2023-12-24 14:50:30.023950','3','SectionSelection object (3)',2,'[]',30,2),(390,'2023-12-24 14:51:09.534067','11','servicios - listado',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',29,2),(391,'2023-12-24 14:53:56.805703','9','Periodoncia | martin',2,'[]',20,2),(392,'2023-12-24 14:59:46.594594','2','Clínica Odontológica Centro Cívico',2,'[{\"changed\": {\"fields\": [\"Is form enabled\"]}}]',31,2),(393,'2023-12-25 14:10:53.701851','2','Clínica Odontológica Centro Cívico',2,'[]',31,1),(394,'2023-12-26 17:36:26.673557','2','Clínica Odontológica Centro Cívico',2,'[{\"changed\": {\"fields\": [\"Is form enabled\", \"Is whatsapp enabled\"]}}]',31,1),(395,'2023-12-26 17:36:37.469631','1','Cuidá tu sonrisa',2,'[{\"changed\": {\"fields\": [\"Is whatsapp enabled\"]}}]',31,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (5,'admin','logentry'),(7,'auth','group'),(6,'auth','permission'),(8,'auth','user'),(27,'calltoaction','calltoaction'),(1,'civico','contact'),(2,'civico','page'),(3,'civico','section'),(4,'civico','sectionselection'),(9,'contenttypes','contenttype'),(31,'hero','hero'),(11,'members','profile'),(26,'promociones','calltoaction'),(12,'promociones','category'),(16,'promociones','comment'),(13,'promociones','page'),(15,'promociones','post'),(14,'promociones','tag'),(28,'sectionselection','pageenabled'),(29,'sectionselection','sectionenabled'),(30,'sectionselection','sectionselection'),(22,'services','calltoaction'),(17,'services','category'),(21,'services','comment'),(18,'services','page'),(23,'services','pagelist'),(20,'services','post'),(24,'services','sectionlist'),(25,'services','sectionselection'),(19,'services','tag'),(10,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-09 18:07:04.643858'),(2,'auth','0001_initial','2023-12-09 18:07:32.968580'),(3,'admin','0001_initial','2023-12-09 18:07:36.997414'),(4,'admin','0002_logentry_remove_auto_add','2023-12-09 18:07:37.186173'),(5,'admin','0003_logentry_add_action_flag_choices','2023-12-09 18:07:37.291267'),(6,'contenttypes','0002_remove_content_type_name','2023-12-09 18:07:39.245137'),(7,'auth','0002_alter_permission_name_max_length','2023-12-09 18:07:40.808187'),(8,'auth','0003_alter_user_email_max_length','2023-12-09 18:07:41.143794'),(9,'auth','0004_alter_user_username_opts','2023-12-09 18:07:41.240469'),(10,'auth','0005_alter_user_last_login_null','2023-12-09 18:07:42.601567'),(11,'auth','0006_require_contenttypes_0002','2023-12-09 18:07:42.669447'),(12,'auth','0007_alter_validators_add_error_messages','2023-12-09 18:07:42.727745'),(13,'auth','0008_alter_user_username_max_length','2023-12-09 18:07:44.600901'),(14,'auth','0009_alter_user_last_name_max_length','2023-12-09 18:07:46.630761'),(15,'auth','0010_alter_group_name_max_length','2023-12-09 18:07:46.886122'),(16,'auth','0011_update_proxy_permissions','2023-12-09 18:07:46.987514'),(17,'auth','0012_alter_user_first_name_max_length','2023-12-09 18:07:49.276963'),(18,'civico','0001_initial','2023-12-09 18:07:55.708050'),(19,'members','0001_initial','2023-12-09 18:07:58.285795'),(20,'promociones','0001_initial','2023-12-09 18:08:15.734822'),(21,'services','0001_initial','2023-12-09 18:08:36.662472'),(22,'sessions','0001_initial','2023-12-09 18:08:37.521347'),(23,'civico','0002_alter_section_section_path','2023-12-12 19:54:42.794206'),(24,'promociones','0002_alter_post_snippet','2023-12-12 19:54:44.183645'),(25,'services','0002_alter_post_snippet','2023-12-12 19:54:45.347697'),(26,'services','0003_calltoaction_pagelist_sectionlist_and_more','2023-12-14 22:42:28.400601'),(27,'calltoaction','0001_initial','2023-12-17 18:32:16.792105'),(28,'promociones','0003_calltoaction_rename_is_visible_post_post_is_visible_and_more','2023-12-17 18:32:20.368029'),(29,'sectionselection','0001_initial','2023-12-17 18:32:26.202602'),(30,'services','0004_post_call2action_post_is_mainpage_enabled_and_more','2023-12-17 18:32:28.088798'),(31,'promociones','0004_post_call2action_alter_post_calltoaction','2023-12-17 19:08:58.821160'),(32,'services','0005_remove_post_is_mainpage_enabled_and_more','2023-12-17 19:08:59.961761'),(33,'calltoaction','0002_calltoaction_is_mainpage_enabled','2023-12-18 22:07:03.607360'),(34,'promociones','0005_rename_post_is_visible_post_is_visible_and_more','2023-12-18 22:07:16.608990'),(35,'services','0006_rename_post_is_visible_post_is_visible_and_more','2023-12-18 22:07:23.734830'),(36,'civico','0003_alter_sectionselection_unique_together_and_more','2023-12-19 19:39:14.298077'),(37,'promociones','0006_remove_post_calltoaction_alter_post_author_and_more','2023-12-19 19:39:17.930771'),(38,'services','0007_remove_pagelist_section_selection_and_more','2023-12-19 19:39:24.423498'),(39,'calltoaction','0003_alter_calltoaction_whatsapp_number','2023-12-19 22:45:24.380323'),(40,'promociones','0007_post_sort_order','2023-12-19 22:45:26.388365'),(41,'services','0008_post_sort_order','2023-12-19 22:45:27.024563'),(42,'hero','0001_initial','2023-12-21 19:57:45.232720'),(43,'sectionselection','0002_alter_sectionenabled_section_path','2023-12-21 19:57:45.404795'),(44,'hero','0002_hero_is_whatsapp_enabled_hero_whats_btn_text_and_more','2023-12-26 17:30:01.900532');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('41crr12q4s5s6uinxt0flfyokwgwxrsc','.eJxVjDsOwyAQRO9CHSHAwrukTJ8zoGUXgpPISP5UVu4eW3KRFNPMezObirQuNa5znuIg6qqcuvx2ifiVxwPIk8ZH09zGZRqSPhR90lnfm-T37XT_DirNdV-zT8UzW0gOUKgYtKE3YDu3B5EEXUgdOOwFmMUn32OHzoZiTS5A6vMF1XU3Uw:1rHPfs:Apc-TNIDzZzKx0UhsjzHQNMDR6kV3hcfGhOqYTXrUD4','2024-01-07 14:41:52.156899'),('9svu3ydkny8lryasjzdg0ehc03enwidm','.eJxVjMsKwjAURP8lawnNw9zEpXu_IdxHMFVJoWlX4r_bQhe6GphzZt4q47rUvPYy51HURRl1-u0I-VnaDuSB7T5pntoyj6R3RR-069sk5XU93L-Dir1u6xicGchhYoiGBBKkgMjR-0BOINAWbD2BC0gQBchaGhAI0bGck_p8AdX8N_8:1rC31a:iLaINLEvFNDZ7e7nBTU9vFBUWHtVXv_oFoNUngofyb0','2023-12-23 19:30:06.491284'),('9yb6kwejaubwvh8qo793m76irhmwaxhb','.eJxVjMsOwiAQRf-FtSEDDS-X7v0GMsyAVA0kpV0Z_12bdKHbe865LxFxW2vcRl7izOIslDj9bgnpkdsO-I7t1iX1ti5zkrsiDzrktXN-Xg7376DiqN9aA3vtCNDoiQsaBwWcpeLB2EzWIAZVJmtUyBN7S8krBA1aBcNJpSLeH9OWN5A:1rGghh:k92noZeUbj0gKIzS_XP1gTG_-y7lbUp1AJ1KS0Yhueo','2024-01-05 14:40:45.504145');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hero_hero`
--

DROP TABLE IF EXISTS `hero_hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hero_hero` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `background_image` varchar(100) DEFAULT NULL,
  `is_form_enabled` tinyint(1) NOT NULL,
  `form_placeholder` varchar(255) NOT NULL,
  `form_value` varchar(255) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_whatsapp_enabled` tinyint(1) NOT NULL,
  `whats_btn_text` varchar(255) NOT NULL,
  `whats_message` varchar(255) NOT NULL,
  `whats_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero_hero`
--

LOCK TABLES `hero_hero` WRITE;
/*!40000 ALTER TABLE `hero_hero` DISABLE KEYS */;
INSERT INTO `hero_hero` VALUES (1,'Cuidá tu sonrisa','Las mejores coberturas, los mejores profesionales.<br>Elegí tu plan dental.','',0,'Ingrese su email','Suscribirme',1,1,'Contáctanos','Hola,%20me%20gustaría%20recibir%20más%20información.%0A- Nombre:%0A- Correo:%0AEnviado%20desde%20mi%20página%20web:%20https://civicodentalcaremexicali.com/','5216869464883'),(2,'Clínica Odontológica Centro Cívico','Somos una Clínica Dental líder ubicada Centro Cívico Mexicali, Baja California. Brindamos excelencia en tratamientos dentales personalizados con nuestro equipo de especialistas y tecnología avanzada recuperando la confianza de los pacientes a la hora de sonreír.','images/hero/call2action.jpg',0,'Ingrese su email','Suscribirme',1,1,'Contáctanos','Hola,%20me%20gustaría%20recibir%20más%20información.%0A- Nombre:%0A- Correo:%0AEnviado%20desde%20mi%20página%20web:%20https://civicodentalcaremexicali.com/','5216869464883');
/*!40000 ALTER TABLE `hero_hero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_profile`
--

DROP TABLE IF EXISTS `members_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bio` longtext,
  `profile_pic` varchar(100) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `members_profile_user_id_f907d594_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_profile`
--

LOCK TABLES `members_profile` WRITE;
/*!40000 ALTER TABLE `members_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_category`
--

DROP TABLE IF EXISTS `promociones_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_category`
--

LOCK TABLES `promociones_category` WRITE;
/*!40000 ALTER TABLE `promociones_category` DISABLE KEYS */;
INSERT INTO `promociones_category` VALUES (2,'Coronas Dentales'),(3,'Periodoncia'),(4,'Endodoncia'),(5,'Blanqueamiento'),(6,'Ortodoncia'),(7,'Implantes'),(8,'Limpieza Dental'),(9,'Carillas Dentales'),(10,'Restauraciones');
/*!40000 ALTER TABLE `promociones_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_comment`
--

DROP TABLE IF EXISTS `promociones_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `promociones_comment_post_id_2da3d0df_fk_promociones_post_id` (`post_id`),
  CONSTRAINT `promociones_comment_post_id_2da3d0df_fk_promociones_post_id` FOREIGN KEY (`post_id`) REFERENCES `promociones_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_comment`
--

LOCK TABLES `promociones_comment` WRITE;
/*!40000 ALTER TABLE `promociones_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `promociones_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_page`
--

DROP TABLE IF EXISTS `promociones_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_page` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `is_enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_page`
--

LOCK TABLES `promociones_page` WRITE;
/*!40000 ALTER TABLE `promociones_page` DISABLE KEYS */;
INSERT INTO `promociones_page` VALUES (1,'Promociones Especiales','¡Aprovecha estas oportunidades únicas y comienza tu camino hacia una salud bucal óptima y una sonrisa deslumbrante hoy mismo!',1),(2,'Promociones','¡Descubre nuestras promociones especiales y accede a tratamientos dentales de calidad a precios excepcionales!',1),(3,'Ofertas Exclusivas para tu Sonrisa','Aprovecha estas ofertas exclusivas para iniciar tu viaje hacia una salud bucal óptima y lograr una sonrisa deslumbrante.',1),(4,'Ofertas Dentales del Mes','Explora nuestras ofertas dentales del mes y aprovecha descuentos únicos en una variedad de tratamientos.',1),(5,'Promociones Destacadas','Nuestras promociones destacadas te brindan la oportunidad perfecta para comenzar tu camino hacia una salud bucal óptima y una sonrisa deslumbrante. ¡Descúbrelo hoy!',1),(6,'¡Sonríe con Nuestras Promociones!','¡Te invitamos a sonreír con nuestras increíbles promociones! Descubre oportunidades únicas en cuidado dental con descuentos exclusivos.',1),(7,'Descuentos Especiales en Tratamientos Dentales','Obtén descuentos especiales en tratamientos dentales y disfruta de ofertas irresistibles para mejorar tu sonrisa.',1),(8,'Ofertas Irresistibles para Tu Sonrisa','Nuestras promociones están diseñadas para brindarte una oportunidad única de cuidar tu salud bucal y lograr una sonrisa deslumbrante. ¡Descúbrelas ahora!',1);
/*!40000 ALTER TABLE `promociones_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_post`
--

DROP TABLE IF EXISTS `promociones_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `header_image` varchar(100) DEFAULT NULL,
  `title_tag` varchar(255) NOT NULL,
  `body` longtext,
  `post_date` date NOT NULL,
  `snippet` varchar(255) DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `author_id` int NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `call2action_id` bigint DEFAULT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `promociones_post_author_id_310b7b56_fk_auth_user_id` (`author_id`),
  KEY `promociones_post_category_id_00cb5de4_fk_promociones_category_id` (`category_id`),
  KEY `promociones_post_call2action_id_e66db201_fk_calltoact` (`call2action_id`),
  CONSTRAINT `promociones_post_author_id_310b7b56_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `promociones_post_call2action_id_e66db201_fk_calltoact` FOREIGN KEY (`call2action_id`) REFERENCES `calltoaction_calltoaction` (`id`),
  CONSTRAINT `promociones_post_category_id_00cb5de4_fk_promociones_category_id` FOREIGN KEY (`category_id`) REFERENCES `promociones_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_post`
--

LOCK TABLES `promociones_post` WRITE;
/*!40000 ALTER TABLE `promociones_post` DISABLE KEYS */;
INSERT INTO `promociones_post` VALUES (1,'Coronas Dentales','images/promociones/promocion1.jpg','Coronas Dentales','<p>Transforma tu sonrisa con nuestras Coronas Dentales. Dise&ntilde;adas para corregir imperfecciones est&eacute;ticas como manchas, desgaste o fracturas, nuestras coronas ofrecen una soluci&oacute;n personalizada y duradera. En Civico Dental, nos dedicamos a restaurar la salud y la belleza de tus dientes. Recupera la confianza en tu sonrisa. &iexcl;Reserva tu consulta hoy y descubre el poder de una sonrisa impecable!</p>','2023-12-09','Para corregir imperfecciones estéticas como manchas, desgaste o fracturas.',1,1,2,1,1),(2,'Limpieza Dental','images/promociones/promocion2.jpg','Civico Dental','<p>Experimenta una limpieza dental profunda. Nuestro equipo de profesionales se dedica a eliminar la placa y el sarro acumulados, proporcion&aacute;ndote una limpieza minuciosa y efectiva. Descubre la frescura y salud que una limpieza dental de calidad puede brindarte. &iexcl;Agenda tu cita ahora y revitaliza tu sonrisa!</p>','2023-12-11','Profunda, eliminando la placa y el sarro acumulados.',1,1,8,1,1),(3,'Beneficios','images/promociones/promocion3.jpg','Beneficios','','2023-12-11','Obtén los siguientes beneficios!',1,1,NULL,1,1),(4,'Promocion 2x','images/promociones/promocion4.jpg','Promocion 2x','<p>&iexcl;Cuida tu sonrisa con nuestra incre&iacute;ble oferta! Obt&eacute;n dos tratamientos dentales por solo $800. En [Nombre de tu Cl&iacute;nica Dental], nos comprometemos a mantener tu sonrisa radiante. Esta promoci&oacute;n exclusiva te brinda la oportunidad de acceder a cuidados dentales de calidad a un precio excepcional. No comprometas tu salud bucal. &iexcl;Aprovecha esta oferta limitada y reserva tu cita hoy mismo!</p>','2023-12-11','Para mantener una sonrisa radiante.',1,1,8,1,1),(5,'Implantes Dentales','images/promociones/promocion5.jpg','Implantes Dentales','<p>En Civico Dental, sabemos lo importante que es tener una sonrisa completa y funcional. Con nuestra promoci&oacute;n especial de implantes dentales, te ofrecemos la oportunidad de recuperar la salud y la confianza en tu sonrisa.</p>','2023-12-11','Para recuperar tu sonrisa completa y funcional.',1,1,7,1,1);
/*!40000 ALTER TABLE `promociones_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_post_likes`
--

DROP TABLE IF EXISTS `promociones_post_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_post_likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `promociones_post_likes_post_id_user_id_d1bc7827_uniq` (`post_id`,`user_id`),
  KEY `promociones_post_likes_user_id_afa38cda_fk_auth_user_id` (`user_id`),
  CONSTRAINT `promociones_post_likes_post_id_8b7cc054_fk_promociones_post_id` FOREIGN KEY (`post_id`) REFERENCES `promociones_post` (`id`),
  CONSTRAINT `promociones_post_likes_user_id_afa38cda_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_post_likes`
--

LOCK TABLES `promociones_post_likes` WRITE;
/*!40000 ALTER TABLE `promociones_post_likes` DISABLE KEYS */;
INSERT INTO `promociones_post_likes` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1);
/*!40000 ALTER TABLE `promociones_post_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_post_tags`
--

DROP TABLE IF EXISTS `promociones_post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_post_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `promociones_post_tags_post_id_tag_id_7c25e28c_uniq` (`post_id`,`tag_id`),
  KEY `promociones_post_tags_tag_id_37098098_fk_promociones_tag_id` (`tag_id`),
  CONSTRAINT `promociones_post_tags_post_id_e8c5c587_fk_promociones_post_id` FOREIGN KEY (`post_id`) REFERENCES `promociones_post` (`id`),
  CONSTRAINT `promociones_post_tags_tag_id_37098098_fk_promociones_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `promociones_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_post_tags`
--

LOCK TABLES `promociones_post_tags` WRITE;
/*!40000 ALTER TABLE `promociones_post_tags` DISABLE KEYS */;
INSERT INTO `promociones_post_tags` VALUES (1,1,5),(2,2,4),(3,2,6),(4,4,4),(5,4,6),(6,5,5);
/*!40000 ALTER TABLE `promociones_post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_tag`
--

DROP TABLE IF EXISTS `promociones_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_tag`
--

LOCK TABLES `promociones_tag` WRITE;
/*!40000 ALTER TABLE `promociones_tag` DISABLE KEYS */;
INSERT INTO `promociones_tag` VALUES (1,'Ortodoncia'),(2,'Periodontitis'),(3,'Cirugía Dental'),(4,'Salud Bucal'),(5,'Estética Dental'),(6,'Higiene Oral');
/*!40000 ALTER TABLE `promociones_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectionselection_pageenabled`
--

DROP TABLE IF EXISTS `sectionselection_pageenabled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectionselection_pageenabled` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `template_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `template_path` (`template_path`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectionselection_pageenabled`
--

LOCK TABLES `sectionselection_pageenabled` WRITE;
/*!40000 ALTER TABLE `sectionselection_pageenabled` DISABLE KEYS */;
INSERT INTO `sectionselection_pageenabled` VALUES (1,'civico - mainpage','civico/index.html'),(2,'servicios - listado','services/home.html'),(3,'servicios - detalle','services/article_details.html'),(4,'promociones - lsitado','promociones/home.html'),(5,'promociones - detalle','promociones/article_details.html');
/*!40000 ALTER TABLE `sectionselection_pageenabled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectionselection_sectionenabled`
--

DROP TABLE IF EXISTS `sectionselection_sectionenabled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectionselection_sectionenabled` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `html_id` varchar(255) NOT NULL,
  `section_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `html_id` (`html_id`),
  UNIQUE KEY `section_path` (`section_path`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectionselection_sectionenabled`
--

LOCK TABLES `sectionselection_sectionenabled` WRITE;
/*!40000 ALTER TABLE `sectionselection_sectionenabled` DISABLE KEYS */;
INSERT INTO `sectionselection_sectionenabled` VALUES (1,'hero','hero','hero/section/hero.html'),(2,'Nosotros','about','civico/section/about.html'),(3,'Llámanos','call-to-action','calltoaction/section/call2action.html'),(4,'Contacto','contact','civico/section/contact.html'),(5,'Preguntas Frecuentes','faq','civico/section/faq.html'),(6,'Distintivos','features','civico/section/features.html'),(7,'Experiencia','portfolio','civico/section/portfolio.html'),(8,'Especialistas','team','civico/section/team.html'),(9,'Testimonios','testimonials','civico/section/testimonials.html'),(10,'Promociones','promotions','promociones/section/posts.html'),(11,'Tratamientos','services','services/section/posts.html'),(12,'Estadísticas','stats','civico/section/stats.html');
/*!40000 ALTER TABLE `sectionselection_sectionenabled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectionselection_sectionselection`
--

DROP TABLE IF EXISTS `sectionselection_sectionselection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectionselection_sectionselection` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sort_order` int NOT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `nav_enabled` tinyint(1) NOT NULL,
  `page_id` bigint NOT NULL,
  `section_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sectionselection_section_page_id_section_id_0a22298b_uniq` (`page_id`,`section_id`),
  KEY `sectionselection_sec_section_id_c466359f_fk_sectionse` (`section_id`),
  CONSTRAINT `sectionselection_sec_page_id_2c07e2b6_fk_sectionse` FOREIGN KEY (`page_id`) REFERENCES `sectionselection_pageenabled` (`id`),
  CONSTRAINT `sectionselection_sec_section_id_c466359f_fk_sectionse` FOREIGN KEY (`section_id`) REFERENCES `sectionselection_sectionenabled` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectionselection_sectionselection`
--

LOCK TABLES `sectionselection_sectionselection` WRITE;
/*!40000 ALTER TABLE `sectionselection_sectionselection` DISABLE KEYS */;
INSERT INTO `sectionselection_sectionselection` VALUES (1,0,1,0,1,1),(2,101,1,1,1,2),(3,103,1,1,1,11),(4,107,1,0,1,5),(5,105,1,1,1,10),(6,104,1,0,1,12),(7,106,1,1,1,8),(8,102,1,0,1,3),(9,108,1,0,1,9),(10,109,1,1,1,4),(11,200,1,0,4,10),(12,201,1,0,4,3),(13,301,1,0,5,3),(14,400,1,0,2,11),(15,401,1,0,2,3),(16,501,1,0,3,3);
/*!40000 ALTER TABLE `sectionselection_sectionselection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_category`
--

DROP TABLE IF EXISTS `services_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_category`
--

LOCK TABLES `services_category` WRITE;
/*!40000 ALTER TABLE `services_category` DISABLE KEYS */;
INSERT INTO `services_category` VALUES (1,'Restauraciones Dentales'),(2,'Blanqueamientos'),(3,'Implantes Dentales'),(4,'Endodoncia'),(5,'Carillas Dentales'),(6,'Periodoncia'),(7,'Limpieza Dental'),(8,'Ortodoncia');
/*!40000 ALTER TABLE `services_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_comment`
--

DROP TABLE IF EXISTS `services_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `services_comment_post_id_0682fb6d_fk_services_post_id` (`post_id`),
  CONSTRAINT `services_comment_post_id_0682fb6d_fk_services_post_id` FOREIGN KEY (`post_id`) REFERENCES `services_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_comment`
--

LOCK TABLES `services_comment` WRITE;
/*!40000 ALTER TABLE `services_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `services_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_page`
--

DROP TABLE IF EXISTS `services_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_page` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `is_enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_page`
--

LOCK TABLES `services_page` WRITE;
/*!40000 ALTER TABLE `services_page` DISABLE KEYS */;
INSERT INTO `services_page` VALUES (1,'Tratamientos Dentales','En nuestra clínica, nos enorgullece brindar una atención dental de alta calidad y personalizada. Nuestro objetivo es mejorar la salud bucal y la confianza de nuestros pacientes a través de una amplia gama de servicios odontológicos.',1);
/*!40000 ALTER TABLE `services_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_post`
--

DROP TABLE IF EXISTS `services_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `header_image` varchar(100) DEFAULT NULL,
  `title_tag` varchar(255) NOT NULL,
  `body` longtext,
  `post_date` date NOT NULL,
  `snippet` varchar(255) DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `author_id` int NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `call2action_id` bigint DEFAULT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `services_post_author_id_7d605288_fk_auth_user_id` (`author_id`),
  KEY `services_post_category_id_42d67396_fk_services_category_id` (`category_id`),
  KEY `services_post_call2action_id_77b05897_fk_calltoact` (`call2action_id`),
  CONSTRAINT `services_post_author_id_7d605288_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `services_post_call2action_id_77b05897_fk_calltoact` FOREIGN KEY (`call2action_id`) REFERENCES `calltoaction_calltoaction` (`id`),
  CONSTRAINT `services_post_category_id_42d67396_fk_services_category_id` FOREIGN KEY (`category_id`) REFERENCES `services_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_post`
--

LOCK TABLES `services_post` WRITE;
/*!40000 ALTER TABLE `services_post` DISABLE KEYS */;
INSERT INTO `services_post` VALUES (9,'Periodoncia','images/services/pexels-cedric-fauntleroy-4269698.jpg','Periodoncia','<p><span style=\"font-size:24px\"><strong>Sonrisas Saludables</strong></span></p>\r\n\r\n<p><span style=\"font-size:20px\">La Periodoncia se convierte en la clave para una sonrisa duradera y saludable. La Periodoncia es la rama de la odontolog&iacute;a que se especializa en el cuidado de las enc&iacute;as y las estructuras de soporte dental. M&aacute;s que solo mantener dientes bonitos, la Periodoncia es esencial para preservar la salud bucal en su totalidad. Unas enc&iacute;as fuertes y saludables no solo garantizan una sonrisa hermosa, sino que tambi&eacute;n son fundamentales para prevenir enfermedades orales graves y contribuir a tu bienestar general.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>','2023-12-19','Dejar que el estado de tus encías empeore puede ser dañino. Trata la enfermedad periodontal con especialistas de alta calidad para restaurar tu salud bucal.',1,1,6,2,1),(10,'Endodoncia','images/services/pexels-cedric-fauntleroy-4269693.jpg','Endodoncia','<p><span style=\"font-size:24px\"><strong>Sonrisas Radiantes</strong></span></p>\r\n\r\n<p><span style=\"font-size:20px\">La Endodoncia se convierte en la soluci&oacute;n experta para preservar la vitalidad de tus dientes. La Endodoncia es una especialidad dental enfocada en el tratamiento de la pulpa dental, el tejido interior de los dientes. Este cuidado minucioso no solo alivia el dolor dental, sino que tambi&eacute;n salva dientes da&ntilde;ados, proporcionando una base s&oacute;lida para tu sonrisa.</span></p>','2023-12-19','Salva tus dientes dañados con Endodoncia. Nuestros dentistas se ocupan de garantizar tu salud bucal y acompañarte en el procedimiento completo.',1,1,4,5,1),(11,'Blanqueamientos','images/services/dentist-7397734_1920.jpg','Blanqueamientos','<p><strong><span style=\"font-size:24px\">Sonr&iacute;e con Resplandor</span></strong></p>\r\n\r\n<p><span style=\"font-size:20px\">En Civico Dental, te ofrecemos la oportunidad de transformar tu sonrisa con nuestros avanzados servicios de blanqueamiento dental. Nuestro enfoque personalizado y profesional en el blanqueamiento dental no solo resalta la belleza de tus dientes, sino que tambi&eacute;n mejora tu confianza. Entendemos que una sonrisa brillante es esencial, y nuestros tratamientos de blanqueamiento dental est&aacute;n dise&ntilde;ados para brindarte resultados notables de manera segura y efectiva.</span></p>','2023-12-19','Elimina las manchas y aclara el tono de tus dientes dejandolos brillantes. Vuelve a recuperar tu confianza de la mano de nuestros dentistas cosméticos a la hora de sonreír.',1,1,2,3,1),(12,'Carillas Dentales','images/services/pexels-karolina-grabowska-6627575.jpg','Carillas Dentales','<p><strong><span style=\"font-size:24px\">Transforma tu Sonrisa</span></strong></p>\r\n\r\n<p><span style=\"font-size:20px\">En Civico Dental,&nbsp;te invitamos a descubrir la elegancia y perfecci&oacute;n que ofrecen nuestras carillas dentales. Las carillas son la soluci&oacute;n est&eacute;tica perfecta para mejorar la forma, color y apariencia general de tus dientes. Nuestro equipo de expertos en odontolog&iacute;a est&eacute;tica trabaja de cerca contigo para personalizar carillas que se adapten a tus necesidades y te brinden una sonrisa deslumbrante. Experimenta la transformaci&oacute;n que las carillas dentales pueden ofrecer y muestra tu mejor sonrisa con confianza.</span></p>','2023-12-19','Si en tus dientes tienes manchas, desgaste o fracturas, considera las carillas dentales, son finas laminas de porcelana que se adhieren a la parte frontal de tus dientes para darte una sonrisa natural.',1,1,5,6,1),(13,'Ortodoncia','images/services/pexels-cottonbro-studio-6528861.jpg','Ortodoncia','<p><strong><span style=\"font-size:24px\">Encuentra la Belleza en la Alineaci&oacute;n</span></strong></p>\r\n\r\n<p><span style=\"font-size:20px\">Nos enorgullece ofrecer soluciones de ortodoncia que van m&aacute;s all&aacute; de la alineaci&oacute;n dental. Nuestros tratamientos ortod&oacute;nticos no solo buscan corregir la posici&oacute;n de tus dientes, sino que tambi&eacute;n est&aacute;n dise&ntilde;ados para mejorar la funci&oacute;n oral y resaltar la belleza natural de tu sonrisa. Desde brackets convencionales hasta opciones m&aacute;s discretas, nuestro equipo te guiar&aacute; hacia una sonrisa alineada y saludable. Descubre c&oacute;mo la ortodoncia puede transformar tu sonrisa en una obra maestra de belleza y funcionalidad.</span></p>\r\n\r\n<p>&nbsp;</p>','2023-12-19','Alinea tus dientes con comodidad y eficiencia. Te acompañamos en el tratamiento completo de Ortodoncia con nuestro equipo de alta calidad para garantizar tu salud.',1,1,8,7,1),(14,'Implantes Dentales','images/services/pexels-jonathan-borba-4687905.jpg','Implantes Dentales','<p><strong><span style=\"font-size:24px\">Recupera tu Sonrisa</span></strong></p>\r\n\r\n<p><span style=\"font-size:20px\">Entendemos la importancia de una sonrisa completa y funcional. Nuestros servicios de implantes dentales ofrecen una soluci&oacute;n duradera y natural para reemplazar dientes perdidos. Desde la planificaci&oacute;n hasta la colocaci&oacute;n, nuestro equipo de especialistas en implantes dentales se compromete a proporcionarte una experiencia c&oacute;moda y resultados que restaurar&aacute;n tu confianza. Descubre c&oacute;mo los implantes dentales pueden mejorar tu calidad de vida y devolverte una sonrisa completa.</span></p>','2023-12-19','Reemplaza dientes perdidos con Implantes Dentales de titanio. De manera segura y cómoda. Consolidamos una base segura en le hueso de la mandibula para que recuperes la funcionalidad completa de tu sonrisa.',1,1,3,8,1),(15,'Limpieza Dental','images/services/pexels-andrea-piacquadio-3881449.jpg','Limpieza Dental','<p><strong><span style=\"font-size:24px\">Descubre la Frescura de una Limpieza Dental</span></strong></p>\r\n\r\n<p><span style=\"font-size:20px\">En Civico Dental&nbsp;nos dedicamos a proporcionar una base s&oacute;lida para una sonrisa saludable y radiante. Nuestros servicios de limpieza dental van m&aacute;s all&aacute; de la superficie, eliminando de manera efectiva la placa y las manchas para revelar la verdadera belleza de tus dientes. Nuestro equipo de higienistas dentales altamente capacitados se asegurar&aacute; de que experimentes la frescura y limpieza que solo una limpieza dental profesional puede brindar.</span></p>','2023-12-19','Mantén tu boca sana y libre de enfermedades periodontales. Elimina la placa y el sarro acumulados.',1,1,7,9,1),(16,'Restauraciones Dentales','images/services/pexels-andrea-piacquadio-3779706.jpg','Restauraciones Dentales','<p><strong><span style=\"font-size:24px\">Revive tu Sonrisa</span></strong></p>\r\n\r\n<p><span style=\"font-size:20px\">Comprendemos que la salud y apariencia de tus dientes son fundamentales para tu bienestar. Nuestros servicios de restauraciones dentales est&aacute;n dise&ntilde;ados para devolver la funcionalidad y est&eacute;tica a tus dientes da&ntilde;ados. Desde empastes hasta restauraciones m&aacute;s complejas, nuestro equipo de expertos en restauraciones dentales utiliza t&eacute;cnicas avanzadas para asegurar resultados duraderos y naturales.</span></p>','2023-12-19','Para dientes dañados, restauramos la funcion y la apariencia, ya sea mediante obturaciones o incrustaciones con nuestros dentistas y alta tecnología.',1,1,1,4,1);
/*!40000 ALTER TABLE `services_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_post_likes`
--

DROP TABLE IF EXISTS `services_post_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_post_likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `services_post_likes_post_id_user_id_678fbe07_uniq` (`post_id`,`user_id`),
  KEY `services_post_likes_user_id_55029f92_fk_auth_user_id` (`user_id`),
  CONSTRAINT `services_post_likes_post_id_af56300c_fk_services_post_id` FOREIGN KEY (`post_id`) REFERENCES `services_post` (`id`),
  CONSTRAINT `services_post_likes_user_id_55029f92_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_post_likes`
--

LOCK TABLES `services_post_likes` WRITE;
/*!40000 ALTER TABLE `services_post_likes` DISABLE KEYS */;
INSERT INTO `services_post_likes` VALUES (9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1);
/*!40000 ALTER TABLE `services_post_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_post_tags`
--

DROP TABLE IF EXISTS `services_post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_post_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `services_post_tags_post_id_tag_id_bde00916_uniq` (`post_id`,`tag_id`),
  KEY `services_post_tags_tag_id_7d68747d_fk_services_tag_id` (`tag_id`),
  CONSTRAINT `services_post_tags_post_id_0f70015a_fk_services_post_id` FOREIGN KEY (`post_id`) REFERENCES `services_post` (`id`),
  CONSTRAINT `services_post_tags_tag_id_7d68747d_fk_services_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `services_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_post_tags`
--

LOCK TABLES `services_post_tags` WRITE;
/*!40000 ALTER TABLE `services_post_tags` DISABLE KEYS */;
INSERT INTO `services_post_tags` VALUES (10,9,2),(11,9,3),(12,9,4),(13,9,5),(14,10,4),(15,10,6),(16,10,7),(17,11,1),(18,11,2),(19,12,1),(20,12,2),(21,13,1),(22,13,2),(23,13,7),(24,14,2),(25,14,4),(26,14,6),(27,15,2),(28,15,3),(29,16,2),(30,16,4),(31,16,6);
/*!40000 ALTER TABLE `services_post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_tag`
--

DROP TABLE IF EXISTS `services_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_tag`
--

LOCK TABLES `services_tag` WRITE;
/*!40000 ALTER TABLE `services_tag` DISABLE KEYS */;
INSERT INTO `services_tag` VALUES (1,'Estetica Dental'),(2,'Salud Bucal'),(3,'Higiene Oral'),(4,'Cirugía Dental'),(5,'Periodontitis'),(6,'Piezas Dentales'),(7,'Ortodoncia');
/*!40000 ALTER TABLE `services_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-26 16:46:16
