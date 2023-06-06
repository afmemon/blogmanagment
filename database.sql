/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 10.4.27-MariaDB : Database - laravel_blogs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`laravel_blogs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `laravel_blogs`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

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

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_reset_tokens_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1);

/*Table structure for table `password_reset_tokens` */

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_reset_tokens` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

insert  into `personal_access_tokens`(`id`,`tokenable_type`,`tokenable_id`,`name`,`token`,`abilities`,`last_used_at`,`expires_at`,`created_at`,`updated_at`) values 
(1,'App\\Models\\User',1,'asfsa','9fcc12184576969effde9c2aca1438a4f047d08abf5eb9e55fc0c6dbab50cadb','[\"*\"]',NULL,NULL,'2023-05-31 19:13:46','2023-05-31 19:13:46'),
(2,'App\\Models\\User',1,'asfsa','4849395abed7d8f66e42d083e4fe9c23657df9fef1b7bfc185bf2de5f9890a37','[\"*\"]',NULL,NULL,'2023-05-31 19:14:22','2023-05-31 19:14:22'),
(3,'App\\Models\\User',1,'asfsa','97ca9a366ce835b6fcad95513640c107a11c8e491ca93f7566f19e4fea396f74','[\"*\"]',NULL,NULL,'2023-05-31 19:14:37','2023-05-31 19:14:37'),
(4,'App\\Models\\User',1,'asfsa','d66f022c0a27dd2536f9f05b52fb20b66dc2508541c52ffca88dcdaa7ceed2de','[\"*\"]',NULL,NULL,'2023-06-01 07:11:49','2023-06-01 07:11:49'),
(5,'App\\Models\\User',1,'asfsa','cfa46e1b499897d8d7e59a6ed81fae77c62085f8362474950753947978b0f540','[\"*\"]',NULL,NULL,'2023-06-01 07:11:53','2023-06-01 07:11:53'),
(6,'App\\Models\\User',1,'asfsa','5b42a60bc1cf656831bbec873d91443bc58488fff0bd469f740f01c687529efd','[\"*\"]',NULL,NULL,'2023-06-01 07:11:55','2023-06-01 07:11:55'),
(7,'App\\Models\\User',1,'asfsa','9a6225041031eae51dd7d761323f8257a7c36628e140d972ae15f5ce31263fc7','[\"*\"]',NULL,NULL,'2023-06-01 07:11:56','2023-06-01 07:11:56'),
(8,'App\\Models\\User',1,'asfsa','f2ef2e5e1585952c9eec22ef4382d89c5052cf3713378e18afd17ac989b07c7b','[\"*\"]',NULL,NULL,'2023-06-01 07:11:58','2023-06-01 07:11:58'),
(9,'App\\Models\\User',1,'asfsa','ea7fac34610e6ba8012c06a91a5d73748c1fa051c3d53a694b784415019d7025','[\"*\"]',NULL,NULL,'2023-06-01 07:15:13','2023-06-01 07:15:13'),
(10,'App\\Models\\User',1,'asfsa','075d60d7eca04812efb5c70bf324a7a10b82329a5acef926a97a4f6ae71a4de7','[\"*\"]','2023-06-01 07:40:08',NULL,'2023-06-01 07:38:53','2023-06-01 07:40:08'),
(11,'App\\Models\\User',6,'asfsa','55f87c219ed307c5456891829aaa5d1b7f29e7a4123ae337e7ec5289b8b101c5','[\"*\"]',NULL,NULL,'2023-06-03 10:42:22','2023-06-03 10:42:22'),
(12,'App\\Models\\User',6,'asfsa','0f56044edec0e5aff9c5210e69675639fb6f142c6264f108d06ef35788eceaf1','[\"*\"]',NULL,NULL,'2023-06-03 10:45:21','2023-06-03 10:45:21'),
(13,'App\\Models\\User',6,'asfsa','607c348f0f53c3ca411b7cd5da998e971e3f68322ffd5f7445a6246ada52f477','[\"*\"]',NULL,NULL,'2023-06-03 10:45:43','2023-06-03 10:45:43'),
(14,'App\\Models\\User',6,'asfsa','9ba00969ff57712247712fc96ecd31be85cea1aa180b0bbe243596df4c5b95dc','[\"*\"]',NULL,NULL,'2023-06-03 10:46:17','2023-06-03 10:46:17'),
(15,'App\\Models\\User',6,'asfsa','6392294d7a9e89aac52ea19425b2bbb87107e9a42c0bee12c3c42ac8cd6ee365','[\"*\"]',NULL,NULL,'2023-06-03 10:48:11','2023-06-03 10:48:11'),
(16,'App\\Models\\User',6,'asfsa','93f71a2afc0225f03a1e227b683e7ed9fac96a70459bd5e5e44f2608c6df25ad','[\"*\"]',NULL,NULL,'2023-06-03 10:48:40','2023-06-03 10:48:40'),
(17,'App\\Models\\User',6,'asfsa','f047ad8b739d58523a002eb662a2ee4564541ef0fccc8adbe49a07ecf839520d','[\"*\"]',NULL,NULL,'2023-06-03 10:49:30','2023-06-03 10:49:30'),
(18,'App\\Models\\User',6,'asfsa','0540d41eee6a41f02767e91843b5577490bdf21b007fe98b894c5623b3b5b665','[\"*\"]',NULL,NULL,'2023-06-03 10:50:27','2023-06-03 10:50:27'),
(19,'App\\Models\\User',6,'asfsa','9f40ab85111c2ae3d98b4c1dfd87442a1373c0c4380c6198070cfa2ebb3840d4','[\"*\"]',NULL,NULL,'2023-06-03 11:20:43','2023-06-03 11:20:43'),
(20,'App\\Models\\User',6,'asfsa','37ca41a9eff084b575ea891eca69125e8f4f99cb71af0c7ad0cbe40dc7b22f05','[\"*\"]',NULL,NULL,'2023-06-03 11:21:58','2023-06-03 11:21:58'),
(21,'App\\Models\\User',6,'asfsa','dc150ec34ba0d07f1cb1a3dddf242911a30b0a8dc92d8b23f5d37a98e4dc62df','[\"*\"]',NULL,NULL,'2023-06-03 11:27:24','2023-06-03 11:27:24'),
(22,'App\\Models\\User',6,'asfsa','66922e804b825a933b23189b4c4a4de3140c7204e6de5e8de4d4a265686575e1','[\"*\"]',NULL,NULL,'2023-06-03 11:27:38','2023-06-03 11:27:38'),
(23,'App\\Models\\User',6,'asfsa','80902823ef111d1125a6d9581cd9d634f86d4138b08247970db8f89372596f74','[\"*\"]',NULL,NULL,'2023-06-03 11:28:27','2023-06-03 11:28:27'),
(24,'App\\Models\\User',6,'asfsa','ef130c2b45caf34f478bc546948f097547e74a180d83910ff56945b625d14389','[\"*\"]',NULL,NULL,'2023-06-03 11:32:30','2023-06-03 11:32:30'),
(25,'App\\Models\\User',6,'asfsa','af1fa4ebfa59885c78e6740b5399c2a6fd80741abc2be7be2e2d4ee71f91fe4e','[\"*\"]',NULL,NULL,'2023-06-03 11:33:05','2023-06-03 11:33:05'),
(26,'App\\Models\\User',6,'asfsa','9c666413aedf30c54ada99a95c1e7f5ad1ef87625a348cfcfe291ee41d48e50e','[\"*\"]',NULL,NULL,'2023-06-03 11:33:23','2023-06-03 11:33:23'),
(27,'App\\Models\\User',6,'asfsa','fe518ec415564c984147e56dd898c6511f9d997de74627a942bfad7e406663f5','[\"*\"]',NULL,NULL,'2023-06-03 12:57:22','2023-06-03 12:57:22'),
(30,'App\\Models\\User',8,'asfsa','21e30e1e8ad4502a83486a4e3df7a1c3ac5302a5da366a0fe05a10714da1c6e2','[\"*\"]',NULL,NULL,'2023-06-04 19:07:06','2023-06-04 19:07:06'),
(31,'App\\Models\\User',6,'asfsa','0394ab1d629d707d0395b82711f374a79bcc7248bb676bb89e5761dd7f236258','[\"*\"]',NULL,NULL,'2023-06-05 06:23:24','2023-06-05 06:23:24'),
(32,'App\\Models\\User',6,'asfsa','be5cec4150e5c0b12ea76a2f54cca0079399cde36265fd97bddc40b082eb11b3','[\"*\"]',NULL,NULL,'2023-06-05 06:24:19','2023-06-05 06:24:19'),
(33,'App\\Models\\User',6,'asfsa','6af7fc8cbacbc64771ba911a154a1f6c73c9f47f5124a273b6a62b3e30d52157','[\"*\"]','2023-06-05 06:36:56',NULL,'2023-06-05 06:24:35','2023-06-05 06:36:56'),
(34,'App\\Models\\User',6,'asfsa','83eaca579916857f285d4909a5a1beccd7e6eb22da4c9769c0b46611a1bbd5d3','[\"*\"]','2023-06-05 06:41:42',NULL,'2023-06-05 06:40:31','2023-06-05 06:41:42'),
(35,'App\\Models\\User',6,'asfsa','f69324e494035d2aa41c9b3a0d4e90ad194dd3e39b3c4e7cdb16697f26162cb9','[\"*\"]','2023-06-05 07:43:46',NULL,'2023-06-05 06:57:53','2023-06-05 07:43:46'),
(36,'App\\Models\\User',6,'asfsa','8a830b23d95a77453a2f1e960abe3238032638438964d12e83cda5f9d1da698e','[\"*\"]','2023-06-05 08:01:57',NULL,'2023-06-05 07:44:04','2023-06-05 08:01:57'),
(37,'App\\Models\\User',6,'asfsa','553e11b8bfe101f7553f950fbeb038eb8b655396c29d8144d8112968e42d9ea7','[\"*\"]','2023-06-05 08:29:45',NULL,'2023-06-05 08:02:26','2023-06-05 08:29:45');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Ahmed Khan','ahmed@gmail.com',NULL,'$2y$10$geaq3gR.uOmkZ14aE60.JOoKZxBk7dfCGtIRingl565yG4w3ev0NO',NULL,'2023-05-31 18:45:50','2023-05-31 18:45:50'),
(5,'ArslanMemon','arslan@gmail.com',NULL,'$2y$10$iSNaVJStMIbd2mFQHYT1jOilEZFipBHMN5nx9eARJQrzjom.84NWm',NULL,'2023-06-03 10:10:40','2023-06-03 10:10:40'),
(6,'Ahmed Memon','ahmed1@gmail.com',NULL,'$2y$10$UGGDsaiHe8kiCn/8WF4KXuuyWacDoWtZSPwqDXuqs40yRP9tFcY5m',NULL,'2023-06-03 10:15:33','2023-06-03 10:15:33'),
(7,'Ali Khan','ali@gmail.com',NULL,'$2y$10$Mn9rK4IKhc9RPrsDJF8R9.dUVJqm7BN1QoJ.ekaBA/.PK0h6hkiBO',NULL,'2023-06-03 10:18:17','2023-06-03 10:18:17'),
(8,'Khan Hello','khan@gmail.com',NULL,'$2y$10$X/Bll47AE4iLmjIPcYRT6..y11AosBIVosMveWissy3n/YoTYCTai',NULL,'2023-06-04 19:06:54','2023-06-04 19:06:54');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
