# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.4.10-MariaDB)
# Database: username_resolver
# Generation Time: 2021-08-23 05:58:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),
	(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),
	(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),
	(6,'2016_06_01_000004_create_oauth_clients_table',1),
	(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),
	(8,'2019_08_19_000000_create_failed_jobs_table',1),
	(9,'2019_12_14_000001_create_personal_access_tokens_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`)
VALUES
	('04cdb360ba1d03d0b39d4e4ce4a0c986a03948a55f5abfdae2cafa7e4753abf2431967adb360ff9d',3,3,'MyApp','[]',0,'2021-08-23 05:44:34','2021-08-23 05:44:34','2022-08-23 05:44:34'),
	('127ecbc292ca389611c8367fd2479b496ad3b9d83e90a09434f0977ae47bc0970d93e7b3e799ba7e',3,3,'MyApp','[]',0,'2021-08-23 04:05:04','2021-08-23 04:05:04','2022-08-23 04:05:04'),
	('20fa4022e2f9a75c7944bb28715653583c85e05c4ac9ec4b2e6535b1829612342feb64b48668bdf8',3,3,'MyApp','[]',1,'2021-08-23 04:05:47','2021-08-23 04:05:47','2022-08-23 04:05:47'),
	('31974125e9ce48cd4dcd17c82ab58754164a6e51120048bab50dc424a7709cd32d57140910fe66c4',3,3,'MyApp','[]',0,'2021-08-23 05:34:54','2021-08-23 05:34:54','2022-08-23 05:34:54'),
	('4adee5912bf340d328efdefc0d47644812e6eab95b244d63a9762337ff9cf2a1802d1c61af721885',3,3,'MyApp','[]',0,'2021-08-23 05:00:25','2021-08-23 05:00:25','2022-08-23 05:00:25'),
	('5128c48ab41a4d624acbb4cdccc7901e7b01b88edcbb985e6f114b6c37d530ef7b62d6f74c211869',3,3,'MyApp','[]',0,'2021-08-23 05:36:50','2021-08-23 05:36:50','2022-08-23 05:36:50'),
	('75f693078f103a90cce468185f6b0f965cb9143ef9b7ce784cb3cd93e7298b9f29eb5145b425250c',4,3,'MyApp','[]',0,'2021-08-23 04:16:40','2021-08-23 04:16:40','2022-08-23 04:16:40'),
	('950d6bcaaa4352811436cdfa4794ff401ad4639e7aa31cd61d9f2b53e2ac3c054e1aad33288ba4a8',3,3,'MyApp','[]',0,'2021-08-23 04:25:06','2021-08-23 04:25:06','2022-08-23 04:25:06'),
	('bd33f7a0b3223b503f865864060539877fa6b7ed4b84be712389553345ec5e7b1ab0be5bf76912e8',3,3,'MyApp','[]',0,'2021-08-23 04:25:15','2021-08-23 04:25:15','2022-08-23 04:25:15');

/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_auth_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'Laravel Personal Access Client','1c0asu4cHF9syivGe8Kz95YaJ1GEqqIvCk4NJ961',NULL,'http://localhost',1,0,0,'2021-08-22 08:58:26','2021-08-22 08:58:26'),
	(2,NULL,'Laravel Password Grant Client','QW7QCryG01X3opyNFnEUrs02E2ZyudQzXr8ZhFUX','users','http://localhost',0,1,0,'2021-08-22 08:58:26','2021-08-22 08:58:26'),
	(3,NULL,'Laravel Personal Access Client','pOgCvNWDkK27jDnhDyeahVJFcDV8dgmVbUbelSry',NULL,'http://localhost',1,0,0,'2021-08-23 03:06:15','2021-08-23 03:06:15'),
	(4,NULL,'Laravel Password Grant Client','72BuoV3ElDApYvdNXSKQiugS45rjJlT6DRWiFscR','users','http://localhost',0,1,0,'2021-08-23 03:06:16','2021-08-23 03:06:16');

/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_personal_access_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`)
VALUES
	(1,1,'2021-08-22 08:58:26','2021-08-22 08:58:26'),
	(2,3,'2021-08-23 03:06:16','2021-08-23 03:06:16');

/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_refresh_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table personal_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`)
VALUES
	(1,'App\\Models\\User',1,'authToken','36209eda4267e563a8d653a4e4a8f0250ea7f6263338219b53ce712965c5231d','[\"*\"]',NULL,'2021-08-23 03:09:13','2021-08-23 03:09:13'),
	(2,'App\\Models\\User',1,'kumu_token','a726b635abc2055ba79fe4807edf09c912e7c631599596298a188233df7037e4','[\"*\"]',NULL,'2021-08-23 03:09:29','2021-08-23 03:09:29'),
	(3,'App\\Models\\User',1,'kumu_token','6aa0323822ead7c6b2caccec5ed01b3e50a7fbd6b34478ce5d475fd048b773fd','[\"*\"]',NULL,'2021-08-23 03:12:44','2021-08-23 03:12:44'),
	(4,'App\\Models\\User',2,'kumu_token','cc4853d564185c7d343a18febb61af67f19194a31c707d2e171d866658eddb34','[\"*\"]',NULL,'2021-08-23 03:13:23','2021-08-23 03:13:23'),
	(5,'App\\Models\\User',2,'kumu_token','a23500a0750dfd7a91a3a4e95ec6ccd0c0d1218e288772520bfb5f0b5ffcdc0b','[\"*\"]',NULL,'2021-08-23 03:13:39','2021-08-23 03:13:39'),
	(6,'App\\Models\\User',2,'kumu_token','909519b506c448a876f675e1686a4772eaca2b36cee1671b058c57bac08e11ca','[\"*\"]',NULL,'2021-08-23 03:13:50','2021-08-23 03:13:50');

/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `username`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Neil','aerootaku','$2y$10$0D.1wu2Yqe2QtMR8.aZo3OzqWvxwF0.P.ttzlKEUYVQ.v23xim0zO',NULL,'2021-08-23 03:06:01','2021-08-23 03:06:01'),
	(2,'Neil','aerootaku1','$2y$10$jYgiX4BzOWeF1VMsGALtVOaFaDUcK1StE.LZ66Vpls1h2Rwh5LaIC',NULL,'2021-08-23 03:09:43','2021-08-23 03:09:43'),
	(3,'Neil','admin123','$2y$10$jYgiX4BzOWeF1VMsGALtVOaFaDUcK1StE.LZ66Vpls1h2Rwh5LaIC',NULL,'2021-08-23 04:05:04','2021-08-23 04:05:04'),
	(4,'Armstrong Neil','armstrong','admin123',NULL,'2021-08-23 04:16:40','2021-08-23 04:16:40');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
