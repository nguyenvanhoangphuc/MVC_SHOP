-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table dbkientruchethong.assets
CREATE TABLE IF NOT EXISTS `assets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `danger_level` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.assets: ~5 rows (approximately)
INSERT INTO `assets` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`, `danger_level`) VALUES
	(1, 'Máy tính', 'Máy tính Cấu hình khủng', '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 10),
	(2, 'Laptop', 'Đồ đùng điện tử', '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 20),
	(3, 'PC', 'Đồ đùng điện tử', '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 30),
	(4, 'TV', 'Đồ dùng trong nhà', '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 40),
	(5, 'Điều hòa', 'Điều hòa tốt', '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 50),
	(6, 'Điện thoại IP 16 UPDATE', 'Điện thoại IP 16 của hãng APPLE UPDATE UPDATE', '2024-09-15 00:39:25', '2024-09-15 00:45:38', '2024-09-15 00:45:38', 69696969);

-- Dumping structure for table dbkientruchethong.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.migrations: ~20 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_100000_create_password_resets_table', 1),
	(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(5, '2016_06_01_000004_create_oauth_clients_table', 1),
	(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(7, '2020_03_31_000001_create_permissions_table', 1),
	(8, '2020_03_31_000002_create_roles_table', 1),
	(9, '2020_03_31_000003_create_users_table', 1),
	(10, '2020_03_31_000004_create_assets_table', 1),
	(11, '2020_03_31_000005_create_teams_table', 1),
	(12, '2020_03_31_000006_create_stocks_table', 1),
	(13, '2020_03_31_000007_create_transactions_table', 1),
	(14, '2020_03_31_000008_create_permission_role_pivot_table', 1),
	(15, '2020_03_31_000009_create_role_user_pivot_table', 1),
	(16, '2020_03_31_000010_add_relationship_fields_to_users_table', 1),
	(17, '2020_03_31_000011_add_relationship_fields_to_stocks_table', 1),
	(18, '2020_03_31_000012_add_relationship_fields_to_transactions_table', 1),
	(19, '2020_03_31_102945_make_asset_and_team_unique_in_stocks_table', 1),
	(20, '2020_04_01_055439_add_danger_level_field_to_assets_table', 1);

-- Dumping structure for table dbkientruchethong.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.oauth_access_tokens: ~0 rows (approximately)

-- Dumping structure for table dbkientruchethong.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.oauth_auth_codes: ~0 rows (approximately)

-- Dumping structure for table dbkientruchethong.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
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

-- Dumping data for table dbkientruchethong.oauth_clients: ~0 rows (approximately)

-- Dumping structure for table dbkientruchethong.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.oauth_personal_access_clients: ~0 rows (approximately)

-- Dumping structure for table dbkientruchethong.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.oauth_refresh_tokens: ~0 rows (approximately)

-- Dumping structure for table dbkientruchethong.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.password_resets: ~0 rows (approximately)

-- Dumping structure for table dbkientruchethong.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.permissions: ~37 rows (approximately)
INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'user_management_access', NULL, NULL, NULL),
	(2, 'permission_create', NULL, NULL, NULL),
	(3, 'permission_edit', NULL, NULL, NULL),
	(4, 'permission_show', NULL, NULL, NULL),
	(5, 'permission_delete', NULL, NULL, NULL),
	(6, 'permission_access', NULL, NULL, NULL),
	(7, 'role_create', NULL, NULL, NULL),
	(8, 'role_edit', NULL, NULL, NULL),
	(9, 'role_show', NULL, NULL, NULL),
	(10, 'role_delete', NULL, NULL, NULL),
	(11, 'role_access', NULL, NULL, NULL),
	(12, 'user_create', NULL, NULL, NULL),
	(13, 'user_edit', NULL, NULL, NULL),
	(14, 'user_show', NULL, NULL, NULL),
	(15, 'user_delete', NULL, NULL, NULL),
	(16, 'user_access', NULL, NULL, NULL),
	(17, 'asset_create', NULL, NULL, NULL),
	(18, 'asset_edit', NULL, NULL, NULL),
	(19, 'asset_show', NULL, NULL, NULL),
	(20, 'asset_delete', NULL, NULL, NULL),
	(21, 'asset_access', NULL, NULL, NULL),
	(22, 'team_create', NULL, NULL, NULL),
	(23, 'team_edit', NULL, NULL, NULL),
	(24, 'team_show', NULL, NULL, NULL),
	(25, 'team_delete', NULL, NULL, NULL),
	(26, 'team_access', NULL, NULL, NULL),
	(27, 'stock_create', NULL, NULL, NULL),
	(28, 'stock_edit', NULL, NULL, NULL),
	(29, 'stock_show', NULL, NULL, NULL),
	(30, 'stock_delete', NULL, NULL, NULL),
	(31, 'stock_access', NULL, NULL, NULL),
	(32, 'transaction_create', NULL, NULL, NULL),
	(33, 'transaction_edit', NULL, NULL, NULL),
	(34, 'transaction_show', NULL, NULL, NULL),
	(35, 'transaction_delete', NULL, NULL, NULL),
	(36, 'transaction_access', NULL, NULL, NULL),
	(37, 'profile_password_edit', NULL, NULL, NULL);

-- Dumping structure for table dbkientruchethong.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `role_id` int unsigned NOT NULL,
  `permission_id` int unsigned NOT NULL,
  KEY `role_id_fk_1230843` (`role_id`),
  KEY `permission_id_fk_1230843` (`permission_id`),
  CONSTRAINT `permission_id_fk_1230843` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_id_fk_1230843` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.permission_role: ~53 rows (approximately)
INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10),
	(1, 11),
	(1, 12),
	(1, 13),
	(1, 14),
	(1, 15),
	(1, 16),
	(1, 17),
	(1, 18),
	(1, 19),
	(1, 20),
	(1, 21),
	(1, 22),
	(1, 23),
	(1, 24),
	(1, 25),
	(1, 26),
	(1, 27),
	(1, 28),
	(1, 29),
	(1, 30),
	(1, 31),
	(1, 32),
	(1, 33),
	(1, 34),
	(1, 35),
	(1, 36),
	(1, 37),
	(2, 22),
	(2, 23),
	(2, 24),
	(2, 25),
	(2, 26),
	(2, 27),
	(2, 28),
	(2, 29),
	(2, 30),
	(2, 31),
	(2, 32),
	(2, 33),
	(2, 34),
	(2, 35),
	(2, 36),
	(2, 37);

-- Dumping structure for table dbkientruchethong.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.roles: ~2 rows (approximately)
INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Admin', NULL, NULL, NULL),
	(2, 'User', NULL, NULL, NULL);

-- Dumping structure for table dbkientruchethong.role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  KEY `user_id_fk_1230852` (`user_id`),
  KEY `role_id_fk_1230852` (`role_id`),
  CONSTRAINT `role_id_fk_1230852` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_1230852` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.role_user: ~11 rows (approximately)
INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
	(1, 1),
	(2, 2),
	(3, 2),
	(4, 2),
	(5, 2),
	(6, 2),
	(7, 2),
	(8, 2),
	(9, 2),
	(10, 2),
	(11, 2);

-- Dumping structure for table dbkientruchethong.stocks
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `current_stock` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_id` int unsigned NOT NULL,
  `team_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stocks_asset_id_team_id_deleted_at_unique` (`asset_id`,`team_id`,`deleted_at`),
  KEY `team_fk_1230970` (`team_id`),
  CONSTRAINT `asset_fk_1230965` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`),
  CONSTRAINT `team_fk_1230970` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.stocks: ~25 rows (approximately)
INSERT INTO `stocks` (`id`, `current_stock`, `created_at`, `updated_at`, `deleted_at`, `asset_id`, `team_id`) VALUES
	(1, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 1, 1),
	(2, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 1, 2),
	(3, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 1, 3),
	(4, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 1, 4),
	(5, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 1, 5),
	(6, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 2, 1),
	(7, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 2, 2),
	(8, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 2, 3),
	(9, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 2, 4),
	(10, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 2, 5),
	(11, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 3, 1),
	(12, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 3, 2),
	(13, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 3, 3),
	(14, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 3, 4),
	(15, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 3, 5),
	(16, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 4, 1),
	(17, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 4, 2),
	(18, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 4, 3),
	(19, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 4, 4),
	(20, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 4, 5),
	(21, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 5, 1),
	(22, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 5, 2),
	(23, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 5, 3),
	(24, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 5, 4),
	(25, 0, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 5, 5),
	(26, 0, '2024-09-15 00:39:25', '2024-09-15 00:39:25', NULL, 6, 1),
	(27, 0, '2024-09-15 00:39:25', '2024-09-15 00:39:25', NULL, 6, 2),
	(28, 0, '2024-09-15 00:39:25', '2024-09-15 00:39:25', NULL, 6, 3),
	(29, 0, '2024-09-15 00:39:25', '2024-09-15 00:39:25', NULL, 6, 4),
	(30, 0, '2024-09-15 00:39:25', '2024-09-15 00:39:25', NULL, 6, 5);

-- Dumping structure for table dbkientruchethong.teams
CREATE TABLE IF NOT EXISTS `teams` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.teams: ~5 rows (approximately)
INSERT INTO `teams` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Hospital 616', '2024-09-15 00:08:03', '2024-09-15 00:08:03', NULL),
	(2, 'Hospital 444', '2024-09-15 00:08:03', '2024-09-15 00:08:03', NULL),
	(3, 'Hospital 141', '2024-09-15 00:08:03', '2024-09-15 00:08:03', NULL),
	(4, 'Hospital 228', '2024-09-15 00:08:03', '2024-09-15 00:08:03', NULL),
	(5, 'Hospital 411', '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL);

-- Dumping structure for table dbkientruchethong.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `stock` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_id` int unsigned NOT NULL,
  `team_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `asset_fk_1230972` (`asset_id`),
  KEY `team_fk_1230977` (`team_id`),
  KEY `user_fk_1233734` (`user_id`),
  CONSTRAINT `asset_fk_1230972` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`),
  CONSTRAINT `team_fk_1230977` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `user_fk_1233734` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.transactions: ~0 rows (approximately)

-- Dumping structure for table dbkientruchethong.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `team_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `team_fk_1230947` (`team_id`),
  CONSTRAINT `team_fk_1230947` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbkientruchethong.users: ~11 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `team_id`) VALUES
	(1, 'Admin', 'admin@admin.com', NULL, '$2y$12$yAdQFNter/EN74xK6iP0pu52zY7UAp1zYF6hRDNu1qBlE2AdJY8Qa', NULL, NULL, NULL, NULL, NULL),
	(2, 'Director 616', 'director616@gmail.com', '2024-09-15 07:08:03', '$2y$10$quqNm3PsjYkXt6zu4ozIkeqMt.7r6Mbm3JopaaR75a5lSz11kYqvq', NULL, '2024-09-15 00:08:03', '2024-09-15 00:08:03', NULL, 1),
	(3, 'Doctor 616', 'doctor616@gmail.com', '2024-09-15 07:08:03', '$2y$10$PKww3nWdQHm6AwWgZWRxwu5ZdxU4LTOMAf1SQmfJtIWZbHnJn3E32', NULL, '2024-09-15 00:08:03', '2024-09-15 00:08:03', NULL, 1),
	(4, 'Director 444', 'director444@gmail.com', '2024-09-15 07:08:03', '$2y$10$pv/4F9LW6bsy2wCjjnSjhuVU3YJd1kd0e6V/8v3OrDaGM73YJFqf2', NULL, '2024-09-15 00:08:03', '2024-09-15 00:08:03', NULL, 2),
	(5, 'Doctor 444', 'doctor444@gmail.com', '2024-09-15 07:08:03', '$2y$10$fspNHnw6EMQY.pukfFM5IevGSb0xHhs4DLKPeyIPzdnZI5AEFewZW', NULL, '2024-09-15 00:08:03', '2024-09-15 00:08:03', NULL, 2),
	(6, 'Director 141', 'director141@gmail.com', '2024-09-15 07:08:03', '$2y$10$UK3pPYdvSNJokzmy4hcrVewqw6VnouEL6aRGCyUgDLzecnCMck0LC', NULL, '2024-09-15 00:08:03', '2024-09-15 00:08:03', NULL, 3),
	(7, 'Doctor 141', 'doctor141@gmail.com', '2024-09-15 07:08:03', '$2y$10$zhJnu6WV8yZK26KD4gjes.YXAXpuixCgvBhypEihe19/GTpARYfTe', NULL, '2024-09-15 00:08:03', '2024-09-15 00:08:03', NULL, 3),
	(8, 'Director 228', 'director228@gmail.com', '2024-09-15 07:08:04', '$2y$10$qj.PMhtkWstyRhQn8n.eC.gAcYLU6kxKd5cF61difeDdRYIM7GXQa', NULL, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 4),
	(9, 'Doctor 228', 'doctor228@gmail.com', '2024-09-15 07:08:04', '$2y$10$6jHdim4AJ8Y284g5I.d91.XZV.nNieG94SJUjPjYrRRJg2DKTmXN.', NULL, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 4),
	(10, 'Director 411', 'director411@gmail.com', '2024-09-15 07:08:04', '$2y$10$VMNw7jZZImhMvdiyxGwFweHwbjpwaX2S0yue.LbP8ENfmeGvixGnS', NULL, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 5),
	(11, 'Doctor 411', 'doctor411@gmail.com', '2024-09-15 07:08:04', '$2y$10$oTjUP.xFgF7o/JTwhCtHXeFuzOF2hxYmLIonLFLx1NaCccX4DDoh.', NULL, '2024-09-15 00:08:04', '2024-09-15 00:08:04', NULL, 5);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
