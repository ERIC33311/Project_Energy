/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.6.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: news
-- ------------------------------------------------------
-- Server version	11.6.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add news',7,'add_news'),
(26,'Can change news',7,'change_news'),
(27,'Can delete news',7,'delete_news'),
(28,'Can view news',7,'view_news'),
(29,'Can add solution',8,'add_solution'),
(30,'Can change solution',8,'change_solution'),
(31,'Can delete solution',8,'delete_solution'),
(32,'Can view solution',8,'view_solution');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(7,'main','news'),
(8,'main','solution'),
(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2024-12-18 20:50:32.539316'),
(2,'auth','0001_initial','2024-12-18 20:50:32.912593'),
(3,'admin','0001_initial','2024-12-18 20:50:32.979030'),
(4,'admin','0002_logentry_remove_auto_add','2024-12-18 20:50:32.986027'),
(5,'admin','0003_logentry_add_action_flag_choices','2024-12-18 20:50:32.991958'),
(6,'contenttypes','0002_remove_content_type_name','2024-12-18 20:50:33.057959'),
(7,'auth','0002_alter_permission_name_max_length','2024-12-18 20:50:33.088589'),
(8,'auth','0003_alter_user_email_max_length','2024-12-18 20:50:33.109782'),
(9,'auth','0004_alter_user_username_opts','2024-12-18 20:50:33.127790'),
(10,'auth','0005_alter_user_last_login_null','2024-12-18 20:50:33.160495'),
(11,'auth','0006_require_contenttypes_0002','2024-12-18 20:50:33.164957'),
(12,'auth','0007_alter_validators_add_error_messages','2024-12-18 20:50:33.173968'),
(13,'auth','0008_alter_user_username_max_length','2024-12-18 20:50:33.199795'),
(14,'auth','0009_alter_user_last_name_max_length','2024-12-18 20:50:33.222346'),
(15,'auth','0010_alter_group_name_max_length','2024-12-18 20:50:33.244720'),
(16,'auth','0011_update_proxy_permissions','2024-12-18 20:50:33.255133'),
(17,'auth','0012_alter_user_first_name_max_length','2024-12-18 20:50:33.275206'),
(18,'main','0001_initial','2024-12-18 20:50:33.286269'),
(19,'sessions','0001_initial','2024-12-18 20:50:33.316787');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_news`
--

DROP TABLE IF EXISTS `main_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_news`
--

LOCK TABLES `main_news` WRITE;
/*!40000 ALTER TABLE `main_news` DISABLE KEYS */;
INSERT INTO `main_news` VALUES
(1,'╨в╨╡╤Б╤В╨╛╨▓╨░╤П ╨╜╨╛╨▓╨╛╤Б╤В╤М','╨Ю╨┐╨╕╤Б╨░╨╜╨╕╨╡ ╤В╨╡╤Б╤В╨╛╨▓╨╛╨╣ ╨╜╨╛╨▓╨╛╤Б╤В╨╕','2024-12-18 00:00:00.000000');
/*!40000 ALTER TABLE `main_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES
(1,'2024-11-17','╨б╨╛╨╗╨╜╨╡╤З╨╜╤Л╨╡ ╨┐╨░╨╜╨╡╨╗╨╕ ╨╜╨░ ╨╛╤А╨▒╨╕╤В╨╡: ╨╜╨╛╨▓╤Л╨╣ ╤И╨░╨│ ╨║ ╤Г╤Б╤В╨╛╨╣╤З╨╕╨▓╨╛╨╝╤Г ╨▒╤Г╨┤╤Г╤Й╨╡╨╝╤Г','╨г╤З╨╡╨╜╤Л╨╡ ╤Г╤Б╨┐╨╡╤И╨╜╨╛ ╨╖╨░╨┐╤Г╤Б╤В╨╕╨╗╨╕ ╤Б╨╛╨╗╨╜╨╡╤З╨╜╤Л╨╡ ╨┐╨░╨╜╨╡╨╗╨╕ ╨╜╨░ ╨╛╤А╨▒╨╕╤В╤Г, ╤З╤В╨╛ ╨┐╨╛╨╖╨▓╨╛╨╗╨╕╤В ╨╖╨╜╨░╤З╨╕╤В╨╡╨╗╤М╨╜╨╛ ╤Г╨╗╤Г╤З╤И╨╕╤В╤М ╤Н╤Д╤Д╨╡╨║╤В╨╕╨▓╨╜╨╛╤Б╤В╤М ╤Б╨╛╨╗╨╜╨╡╤З╨╜╨╛╨╣ ╤Н╨╜╨╡╤А╨│╨╕╨╕ ╨╕ ╨╛╨▒╨╡╤Б╨┐╨╡╤З╨╕╤В╤М ╨▒╨╛╨╗╨╡╨╡ ╤Н╨║╨╛╨╗╨╛╨│╨╕╤З╨╜╤Л╨╡ ╤А╨╡╤И╨╡╨╜╨╕╤П ╨┤╨╗╤П ╨Ч╨╡╨╝╨╗╨╕.'),
(2,'2024-11-05','╨Э╨╛╨▓╤Л╨╡ ╨╝╨░╤В╨╡╤А╨╕╨░╨╗╤Л ╨┤╨╗╤П ╨░╨║╨║╤Г╨╝╤Г╨╗╤П╤В╨╛╤А╨╛╨▓: ╤И╨░╨│ ╨║ ╨▒╨╛╨╗╨╡╨╡ ╤Н╤Д╤Д╨╡╨║╤В╨╕╨▓╨╜╤Л╨╝ ╤Б╨╕╤Б╤В╨╡╨╝╨░╨╝ ╤Е╤А╨░╨╜╨╡╨╜╨╕╤П ╤Н╨╜╨╡╤А╨│╨╕╨╕','╨Ш╤Б╤Б╨╗╨╡╨┤╨╛╨▓╨░╤В╨╡╨╗╨╕ ╨╕╨╖ ╨п╨┐╨╛╨╜╨╕╨╕ ╤А╨░╨╖╤А╨░╨▒╨╛╤В╨░╨╗╨╕ ╨╜╨╛╨▓╤Л╨╣ ╨╝╨░╤В╨╡╤А╨╕╨░╨╗ ╨┤╨╗╤П ╨░╨║╨║╤Г╨╝╤Г╨╗╤П╤В╨╛╤А╨╛╨▓, ╨║╨╛╤В╨╛╤А╤Л╨╣ ╨╝╨╛╨╢╨╡╤В ╤Г╨▓╨╡╨╗╨╕╤З╨╕╤В╤М ╨╕╤Е ╤С╨╝╨║╨╛╤Б╤В╤М ╨▓ 5 ╤А╨░╨╖ ╨╕ ╤Г╨╗╤Г╤З╤И╨╕╤В╤М ╤Н╤Д╤Д╨╡╨║╤В╨╕╨▓╨╜╨╛╤Б╤В╤М ╤Е╤А╨░╨╜╨╡╨╜╨╕╤П ╨Т╨Ш╨н.'),
(3,'2024-11-09','╨Я╤А╨╡╨╛╨▒╤А╨░╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╨╛╤В╤Е╨╛╨┤╨╛╨▓ ╨▓ ╤Н╨╜╨╡╤А╨│╨╕╤О: ╨▒╤Г╨┤╤Г╤Й╨╡╨╡ ╤Г╨╢╨╡ ╨╜╨░╤Б╤В╤Г╨┐╨╕╨╗╨╛','╨Т ╨б╨и╨Р ╨╛╤В╨║╤А╤Л╤В╨░ ╨╜╨╛╨▓╨░╤П ╤Г╤Б╤В╨░╨╜╨╛╨▓╨║╨░, ╨║╨╛╤В╨╛╤А╨░╤П ╨┐╤А╨╡╨╛╨▒╤А╨░╨╖╤Г╨╡╤В ╨▒╤Л╤В╨╛╨▓╤Л╨╡ ╨╛╤В╤Е╨╛╨┤╤Л ╨▓ ╤Н╨╗╨╡╨║╤В╤А╨╕╤З╨╡╤Б╨║╤Г╤О ╤Н╨╜╨╡╤А╨│╨╕╤О, ╤Б╨╜╨╕╨╢╨░╤П ╨║╨╛╨╗╨╕╤З╨╡╤Б╤В╨▓╨╛ ╨╝╤Г╤Б╨╛╤А╨░ ╨╕ ╤Б╨╛╨║╤А╨░╤Й╨░╤П ╨▓╤Л╨▒╤А╨╛╤Б╤Л CO2.'),
(4,'2024-11-15','╨Т╨╡╤В╤А╤П╨║╨╕ ╨╜╨░ ╨╝╨╛╤А╨╡: ╨║╨░╨║ ╨╛╨╜╨╕ ╨╝╨╡╨╜╤П╤О╤В ╤Н╨╜╨╡╤А╨│╨╡╤В╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╗╨░╨╜╨┤╤И╨░╤Д╤В','╨Т ╨Т╨╡╨╗╨╕╨║╨╛╨▒╤А╨╕╤В╨░╨╜╨╕╨╕ ╨╖╨░╨▓╨╡╤А╤И╨╡╨╜╨╛ ╤Б╤В╤А╨╛╨╕╤В╨╡╨╗╤М╤Б╤В╨▓╨╛ ╨║╤А╤Г╨┐╨╜╨╡╨╣╤И╨╡╨│╨╛ ╨▓ ╨╝╨╕╤А╨╡ ╨╛╤Д╤И╨╛╤А╨╜╨╛╨│╨╛ ╨▓╨╡╤В╤А╤П╨╜╨╛╨│╨╛ ╨┐╨░╤А╨║╨░, ╨║╨╛╤В╨╛╤А╤Л╨╣ ╤Б╨┐╨╛╤Б╨╛╨▒╨╡╨╜ ╨╛╨▒╨╡╤Б╨┐╨╡╤З╨╕╤В╤М ╤Н╨╗╨╡╨║╤В╤А╨╛╤Н╨╜╨╡╤А╨│╨╕╨╡╨╣ ╨┤╨╛ 1 ╨╝╨╕╨╗╨╗╨╕╨╛╨╜╨░ ╨┤╨╛╨╝╨╛╨▓.'),
(5,'2024-11-12','╨У╨╡╨╛╤В╨╡╤А╨╝╨░╨╗╤М╨╜╨░╤П ╤Н╨╜╨╡╤А╨│╨╕╤П: ╨╜╨╛╨▓╤Л╨╣ ╨┐╨╛╨┤╤Е╨╛╨┤ ╨║ ╨╛╤В╨╛╨┐╨╗╨╡╨╜╨╕╤О ╨┤╨╛╨╝╨╛╨▓','╨Т ╨Ш╤Б╨╗╨░╨╜╨┤╨╕╨╕ ╤А╨░╨╖╤А╨░╨▒╨╛╤В╨░╨╜ ╨╜╨╛╨▓╤Л╨╣ ╤Б╨┐╨╛╤Б╨╛╨▒ ╨╕╤Б╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╨╜╨╕╤П ╨│╨╡╨╛╤В╨╡╤А╨╝╨░╨╗╤М╨╜╨╛╨╣ ╤Н╨╜╨╡╤А╨│╨╕╨╕ ╨┤╨╗╤П ╨╛╤В╨╛╨┐╨╗╨╡╨╜╨╕╤П ╨╢╨╕╨╗╤Л╤Е ╨╖╨┤╨░╨╜╨╕╨╣, ╨║╨╛╤В╨╛╤А╤Л╨╣ ╤Б╨╜╨╕╨╢╨░╨╡╤В ╤Г╨│╨╗╨╡╤А╨╛╨┤╨╜╤Л╨╣ ╤Б╨╗╨╡╨┤ ╨╕ ╤А╨░╤Б╤Е╨╛╨┤╤Л ╨╜╨░ ╤Н╨╜╨╡╤А╨│╨╕╤О.'),
(6,'2024-11-01','╨б╨╛╨╗╨╜╨╡╤З╨╜╤Л╨╡ ╨┤╨╛╤А╨╛╨│╨╕: ╨┐╨╡╤А╨▓╨░╤П ╨▓ ╨╝╨╕╤А╨╡ ╤В╤А╨░╤Б╤Б╨░ ╤Б ╤Б╨╛╨╗╨╜╨╡╤З╨╜╤Л╨╝╨╕ ╨┐╨░╨╜╨╡╨╗╤П╨╝╨╕','╨Т ╨Э╨╕╨┤╨╡╤А╨╗╨░╨╜╨┤╨░╤Е ╨╛╤В╨║╤А╤Л╤В╨░ ╨┐╨╡╤А╨▓╨░╤П ╨▓ ╨╝╨╕╤А╨╡ ╨┤╨╛╤А╨╛╨│╨░, ╨┐╨╛╨║╤А╤Л╤В╨░╤П ╤Б╨╛╨╗╨╜╨╡╤З╨╜╤Л╨╝╨╕ ╨┐╨░╨╜╨╡╨╗╤П╨╝╨╕, ╨║╨╛╤В╨╛╤А╨░╤П ╨│╨╡╨╜╨╡╤А╨╕╤А╤Г╨╡╤В ╤Н╨╗╨╡╨║╤В╤А╨╛╤Н╨╜╨╡╤А╨│╨╕╤О ╨┤╨╗╤П ╨╛╤Б╨▓╨╡╤Й╨╡╨╜╨╕╤П ╨╕ ╨╕╨╜╤Д╤А╨░╤Б╤В╤А╤Г╨║╤В╤Г╤А╤Л.'),
(7,'2024-12-20','╨а╨╡╨║╨╛╤А╨┤╨╜╨░╤П ╤Б╨╛╨╗╨╜╨╡╤З╨╜╨░╤П ╤Н╨╗╨╡╨║╤В╤А╨╛╤Б╤В╨░╨╜╤Ж╨╕╤П','╨Т ╨Х╨▓╤А╨╛╨┐╨╡ ╨╖╨░╨┐╤Г╤Й╨╡╨╜╨░ ╨║╤А╤Г╨┐╨╜╨╡╨╣╤И╨░╤П ╤Б╨╛╨╗╨╜╨╡╤З╨╜╨░╤П ╤Н╨╗╨╡╨║╤В╤А╨╛╤Б╤В╨░╨╜╤Ж╨╕╤П ╨╝╨╛╤Й╨╜╨╛╤Б╤В╤М╤О 2 ╨У╨Т╤В, ╨╛╨▒╨╡╤Б╨┐╨╡╤З╨╕╨▓╨░╤О╤Й╨░╤П ╤Н╨╜╨╡╤А╨│╨╕╨╡╨╣ ╨╝╨╕╨╗╨╗╨╕╨╛╨╜╤Л ╨┤╨╛╨╝╨╛╨▓.'),
(8,'2024-12-19','╨а╨░╨╖╨▓╨╕╤В╨╕╨╡ ╨▓╨╡╤В╤А╤П╨╜╤Л╤Е ╨┐╨░╤А╨║╨╛╨▓ ╨▓ ╨Ъ╨╕╤В╨░╨╡','╨Ъ╨╕╤В╨░╨╣ ╨╕╨╜╨▓╨╡╤Б╤В╨╕╤А╤Г╨╡╤В 5 ╨╝╨╕╨╗╨╗╨╕╨░╤А╨┤╨╛╨▓ ╨┤╨╛╨╗╨╗╨░╤А╨╛╨▓ ╨▓ ╤Б╤В╤А╨╛╨╕╤В╨╡╨╗╤М╤Б╤В╨▓╨╛ ╨╜╨╛╨▓╤Л╤Е ╨╛╤Д╤Д╤И╨╛╤А╨╜╤Л╤Е ╨▓╨╡╤В╤А╤П╨╜╤Л╤Е ╨┐╨░╤А╨║╨╛╨▓ ╨┤╨╗╤П ╤З╨╕╤Б╤В╨╛╨╣ ╤Н╨╜╨╡╤А╨│╨╕╨╕.'),
(9,'2024-12-18','╨У╨╛╤А╨╛╨┤╤Б╨║╨░╤П ╨╖╨╡╨╗╤С╨╜╨░╤П ╤Н╨╜╨╡╤А╨│╨╕╤П','╨Т ╨б╨и╨Р 70% ╨┐╨╛╤В╤А╨╡╨▒╨╜╨╛╤Б╤В╨╡╨╣ ╨╝╨╡╨│╨░╨┐╨╛╨╗╨╕╤Б╨╛╨▓ ╨▓ ╤Н╨╗╨╡╨║╤В╤А╨╛╤Н╨╜╨╡╤А╨│╨╕╨╕ ╨┐╨╛╨║╤А╤Л╨▓╨░╤О╤В╤Б╤П ╨╖╨░ ╤Б╤З╤С╤В ╨▓╨╛╨╖╨╛╨▒╨╜╨╛╨▓╨╗╤П╨╡╨╝╤Л╤Е ╨╕╤Б╤В╨╛╤З╨╜╨╕╨║╨╛╨▓ ╤Н╨╜╨╡╤А╨│╨╕╨╕.'),
(10,'2024-12-17','╨Я╤А╨╛╤А╤Л╨▓ ╨▓ ╤Н╨╜╨╡╤А╨│╨╛╤Е╤А╨░╨╜╨╡╨╜╨╕╨╕','╨г╤З╨╡╨╜╤Л╨╡ ╤Б╨╛╨╖╨┤╨░╨╗╨╕ ╨╕╨╜╨╜╨╛╨▓╨░╤Ж╨╕╨╛╨╜╨╜╤Л╨╡ ╨▒╨░╤В╨░╤А╨╡╨╕, ╨║╨╛╤В╨╛╤А╤Л╨╡ ╨╝╨╛╨│╤Г╤В ╤Н╤Д╤Д╨╡╨║╤В╨╕╨▓╨╜╨╛ ╤Е╤А╨░╨╜╨╕╤В╤М ╨▓╨╛╨╖╨╛╨▒╨╜╨╛╨▓╨╗╤П╨╡╨╝╤Г╤О ╤Н╨╜╨╡╤А╨│╨╕╤О ╨┤╨╛ 50 ╨╗╨╡╤В.'),
(11,'2024-12-16','╨С╨╕╨╛╤В╨╛╨┐╨╗╨╕╨▓╨╛ ╨┤╨╗╤П ╤Н╨║╨╛╨╗╨╛╨│╨╕╤З╨╜╨╛╨│╨╛ ╨▒╤Г╨┤╤Г╤Й╨╡╨│╨╛','╨Т ╨С╤А╨░╨╖╨╕╨╗╨╕╨╕ ╨╖╨░╤А╨░╨▒╨╛╤В╨░╨╗ ╨║╤А╤Г╨┐╨╜╨╡╨╣╤И╨╕╨╣ ╨╖╨░╨▓╨╛╨┤ ╨┐╨╛ ╨┐╤А╨╛╨╕╨╖╨▓╨╛╨┤╤Б╤В╨▓╤Г ╨▒╨╕╨╛╤В╨╛╨┐╨╗╨╕╨▓╨░ ╨╕╨╖ ╨┐╨╡╤А╨╡╤А╨░╨▒╨╛╤В╨░╨╜╨╜╤Л╤Е ╨╛╤В╤Е╨╛╨┤╨╛╨▓ ╤Б╨╡╨╗╤М╤Б╨║╨╛╨│╨╛ ╤Е╨╛╨╖╤П╨╣╤Б╤В╨▓╨░.'),
(12,'2024-12-15','╨Ч╨╡╨╗╨╡╨╜╤Л╨╣ ╨▓╨╛╨┤╨╛╤А╨╛╨┤ ╨▓ ╨Р╨▓╤Б╤В╤А╨░╨╗╨╕╨╕','╨Р╨▓╤Б╤В╤А╨░╨╗╨╕╤П ╨╜╨░╤З╨░╨╗╨░ ╤Н╨║╤Б╨┐╨╛╤А╤В ╨▓╨╛╨┤╨╛╤А╨╛╨┤╨░, ╨┐╤А╨╛╨╕╨╖╨▓╨╡╨┤╤С╨╜╨╜╨╛╨│╨╛ ╤Б ╨╕╤Б╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╨╜╨╕╨╡╨╝ ╤Б╨╛╨╗╨╜╨╡╤З╨╜╨╛╨╣ ╤Н╨╜╨╡╤А╨│╨╕╨╕, ╨┤╨╗╤П ╨╝╨╕╤А╨╛╨▓╨╛╨╣ ╨┐╤А╨╛╨╝╤Л╤И╨╗╨╡╨╜╨╜╨╛╤Б╤В╨╕.');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-12-22  1:59:43
