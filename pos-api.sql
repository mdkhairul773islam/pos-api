-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 11:42 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'JaCvZdsGNe', 'admin@gmail.com', '$2y$10$Zpfj5r48YHD8gtP0caFxxOJyzUIFV25wUO/Trqu5xlGj5UerGK6ee', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'dfds', '2022-01-09 08:04:24', '2022-01-03 09:14:49', '2022-01-09 08:04:24'),
(3, 'Aram', NULL, '2022-01-03 09:15:28', '2022-01-03 09:15:28'),
(4, 'asd', '2022-01-09 08:04:37', '2022-01-03 09:29:43', '2022-01-09 08:04:37'),
(5, 'ad', '2022-01-09 08:12:20', '2022-01-03 09:31:32', '2022-01-09 08:12:20'),
(6, 'Brand 2', NULL, '2022-01-03 09:35:14', '2022-01-03 09:35:14'),
(7, '8745', '2022-01-09 08:18:59', '2022-01-03 09:35:56', '2022-01-09 08:18:59'),
(8, 'adasdasd', '2022-01-09 08:12:12', '2022-01-03 09:37:44', '2022-01-09 08:12:12'),
(9, 'Khairul', NULL, '2022-01-03 09:45:12', '2022-01-03 09:45:12'),
(10, 'Fucose', NULL, '2022-01-03 09:50:48', '2022-01-31 23:26:06'),
(11, 'ADs', NULL, '2022-01-03 10:09:05', '2022-01-03 10:09:05'),
(12, 'Test', '2022-01-09 08:41:16', '2022-01-03 10:09:49', '2022-01-09 08:41:16'),
(13, 'Test 2021', NULL, '2022-01-03 10:09:59', '2022-01-03 10:09:59'),
(14, 'asdasd', '2022-01-09 08:12:25', '2022-01-09 08:03:24', '2022-01-09 08:12:25'),
(15, 'Khairul 2', NULL, '2022-01-09 08:07:24', '2022-01-09 08:07:24'),
(16, 'Araf 121', NULL, '2022-01-09 08:10:21', '2022-01-09 08:41:06'),
(17, 'Arad', '2022-01-09 08:12:04', '2022-01-09 08:10:36', '2022-01-09 08:12:04'),
(18, 'Khairul 264', '2022-01-09 08:41:37', '2022-01-09 08:41:25', '2022-01-09 08:41:37'),
(19, 'Test', NULL, '2022-01-09 09:01:22', '2022-01-12 07:53:04'),
(20, 'Test 2025', '2022-06-11 04:12:53', '2022-01-12 07:53:12', '2022-06-11 04:12:53'),
(21, 'asdasd', '2022-06-11 04:13:05', '2022-06-11 04:12:57', '2022-06-11 04:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Cat 1', NULL, NULL, NULL),
(2, 'Cat 2', NULL, NULL, NULL),
(3, 'Category 32', '2022-01-09 09:53:16', '2022-01-09 09:52:51', '2022-01-09 09:53:16'),
(4, 'Cat 3', NULL, '2022-01-09 09:53:54', '2022-01-09 09:53:54'),
(5, 'Cate 420', NULL, '2022-01-12 07:52:22', '2022-01-12 07:52:38'),
(6, 'Test', '2022-06-11 04:13:10', '2022-02-10 09:38:39', '2022-06-11 04:13:10'),
(7, 'ADASD Asdas', '2022-06-11 04:13:20', '2022-06-11 04:13:12', '2022-06-11 04:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(22, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(23, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(24, '2016_06_01_000004_create_oauth_clients_table', 1),
(25, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(26, '2019_08_19_000000_create_failed_jobs_table', 1),
(27, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(28, '2021_11_30_164914_create_units_table', 1),
(29, '2021_11_30_165342_create_brands_table', 1),
(30, '2021_11_30_165455_create_categories_table', 1),
(31, '2021_11_30_165557_create_products_table', 1),
(32, '2022_01_17_161203_create_parties_table', 1),
(33, '2022_01_26_050945_create_admins_table', 1),
(34, '2022_06_20_083146_create_warehouses_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('001a9535a7095fb9bb9d2c51001b08afcd8249ff326c0b7e77aff569ae2cfe3d8c3321c58db6a599', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-05 03:33:18', '2022-06-05 03:33:18', '2023-06-05 09:33:18'),
('0216f1387bee92c097a2747273ce2a29fb9d062166521be6738cbfa97d13cddbafbd264e21576848', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-01 23:26:43', '2022-03-01 23:26:43', '2023-03-02 05:26:43'),
('11e2768af528903f216afbb69a6bb6f7a87b9aa4dbba546009c4533fc6bb87f63df011cdcf863221', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:15:09', '2022-01-30 15:15:09', '2023-01-30 21:15:09'),
('164fdd0952c7f49368acd561823f6659d42948c15e62dbae7da46357449d57e842c04adfdcc5a0ad', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-02-15 06:29:36', '2022-02-15 06:29:36', '2023-02-15 12:29:36'),
('18da43c434387269d3b7e9c6e41e8f8d3d0d444455ebcb1997ebc453789d12b83c245e418bc63a07', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-05 03:44:10', '2022-06-05 03:44:10', '2023-06-05 09:44:10'),
('1a1d5851c99cb8df6161c0605c58caf09368e406b933887bf2ab533e454aa878b44c9dd2f0e3305b', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-11 05:14:36', '2022-06-11 05:14:36', '2023-06-11 11:14:36'),
('1e8034bd9fb64850111da46c148cdeedd46f9d22040ae46f7b23e50d76af2a296eea2d2df456a15b', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:17:00', '2022-01-30 15:17:00', '2023-01-30 21:17:00'),
('206d97aee7139004854f0109069754364a93b61a986d258cebf66146dbef93fc5973579f2b4f370d', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-23 04:19:24', '2022-06-23 04:19:24', '2023-06-23 10:19:24'),
('23b3086d6a7c21f47e150cc64749a229c2dc4721a04e20316b738fe7df7d4bce34d9e2730a80078f', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-05-13 22:14:18', '2022-05-13 22:14:18', '2023-05-14 04:14:18'),
('25928b6bf8560d4fd7d991ff4ebe662f4b3766788b910028e2db40c1fbfb26456389833029cf7625', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 17:14:06', '2022-01-30 17:14:06', '2023-01-30 23:14:06'),
('2bfbc7d1981d229679abcd756153bac896f38068bb7b20cd0f6be54dd14981151c87397fe5cdd9ab', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:19:01', '2022-01-30 15:19:01', '2023-01-30 21:19:01'),
('33d95d3e473aca122183e5c8d1c59057c0da0fb7eb14248fdb180236bdc93b50199ec7d84af22685', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-29 05:31:52', '2022-03-29 05:31:52', '2023-03-29 11:31:52'),
('34778dea956f4d5ddbb78676c9a820d216b1ebd82d6bfe6ccef0c80999bc48c264fff826393d6e71', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-24 23:16:46', '2022-06-24 23:16:46', '2023-06-25 05:16:46'),
('4108320831c111e6252495ae4e81a83e291874953646d0b39d48837fa1213790e19ee8049e6a7849', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 16:14:36', '2022-01-30 16:14:36', '2023-01-30 22:14:36'),
('421ec1fad7f37f8892ffdf9dfa0fe8f86971d7ec4d32d419c78267ca78b2b45358ec6045d2d9e509', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-04-07 04:46:54', '2022-04-07 04:46:54', '2023-04-07 10:46:54'),
('43bc3873bbaad5abbcd7979d0e3c1d48f88dab2ea8900db0645249485f6cc1a3961ed21beca6cdd8', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:29:11', '2022-01-30 15:29:11', '2023-01-30 21:29:11'),
('446f81aebe1d0aab0619b74db85f7fb275d603c55f51fe3d01795e68edd00da7374fcf0ccfd5c5ba', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:19:19', '2022-01-30 15:19:19', '2023-01-30 21:19:19'),
('4a56d2eaa6d749196fadcbc47b6446308e5fba2d20631dd20c4af77328b77c4cc3065403a8b7e8eb', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-11 03:42:24', '2022-06-11 03:42:24', '2023-06-11 09:42:24'),
('4e71355668be26cbdcc13e58f53104c7938a63cb8e08e628a3a154ac087d887b95f4fd3390cdfb00', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 16:25:23', '2022-01-30 16:25:23', '2023-01-30 22:25:23'),
('50f1bbefde9b1759a5ba3887ccfac32f1488569f6f9af2a8c5f8e1e72e9739a0b554bbaec605abff', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 16:23:50', '2022-01-30 16:23:50', '2023-01-30 22:23:50'),
('50f4ecbb546a456c6d50dcdbda988521696b52936ac04e89f7081e21f11db9da8088aac44041ae7f', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-06 02:11:55', '2022-06-06 02:11:55', '2023-06-06 08:11:55'),
('618033800118f61ef4244dee602534c9f3662c09d52b9bd9e9228d22e6b04b246f3d4754e3cd2b7b', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-02 02:20:10', '2022-03-02 02:20:10', '2023-03-02 08:20:10'),
('642e82a5c1da05acfab61dfa6ee60b03e10a34fc28a9a25715ac3ac5039b8c137c290fb915141b46', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-11 03:42:27', '2022-06-11 03:42:27', '2023-06-11 09:42:27'),
('6535cae6f5c0b53099baa5c8632d94420ad774d612b193c957396d493b23f21163d2fcb553295155', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-06 02:00:41', '2022-06-06 02:00:41', '2023-06-06 08:00:41'),
('677ce3ff044ce3ad65da61c2f363043358106557ec18060d85945651e209993c389dfeff9a954ca6', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-02-13 06:19:20', '2022-02-13 06:19:20', '2023-02-13 12:19:20'),
('68aae8d4095b0121ea57e32a2fda0780c91e903722ba2a82880316368bc1edccf2b8e2084b2ca7e5', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-29 05:40:29', '2022-03-29 05:40:29', '2023-03-29 11:40:29'),
('6a8e31f82f518028adcfe7c1136effbd7fb6be9586833ed6564669243a6a62c5345bdf64c114f45f', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:17:46', '2022-01-30 15:17:46', '2023-01-30 21:17:46'),
('6bdfc55f15bc04b5379025e89f93a1d2b2b2db284f08340c2e0831b997a0e7b24d094b579cce123f', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-29 05:41:09', '2022-03-29 05:41:09', '2023-03-29 11:41:09'),
('6dd63d74f4e979b2466aa6fb96a617889d8f9cd3ef985aae9c330236d9bfb3673d21f13430df904d', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 16:04:24', '2022-01-30 16:04:24', '2023-01-30 22:04:24'),
('70f546c1332325b5aafdbc98e47bfe43cbc6afaede37b5679f71e6a13d076a2165abf08c8440a857', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-02 04:09:52', '2022-06-02 04:09:52', '2023-06-02 10:09:52'),
('7a8bf28657f011e22f548b52f23634d560c129f91c20ce404e71d9c8d859e6c2184a0550d309a9d2', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:14:39', '2022-01-30 15:14:39', '2023-01-30 21:14:39'),
('7ef25dc6ea9661c0249e59c245d6fd371aaa744a6f836bbe2d3a23ccf67e4838a858b85c3c9a2c18', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-02-05 21:43:19', '2022-02-05 21:43:19', '2023-02-06 03:43:19'),
('7f16157cea25084b47632e366bff01b6de18fded6d6b9bd603caa65677d608fba3529a9aad27e24d', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-18 05:22:36', '2022-06-18 05:22:36', '2023-06-18 11:22:36'),
('8882a1a31fe538b8b6bff31987f63222e52ee8baf27829eb2b25072a03fd3fc0f2bf0e2bebc9aa3f', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-24 21:17:02', '2022-06-24 21:17:02', '2023-06-25 03:17:02'),
('917154682a4607306cad2dc8b24c3b488b8ab143dd729cb70c4a83bb87c61120b1793a19b6d031d6', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-02-02 03:53:38', '2022-02-02 03:53:38', '2023-02-02 09:53:38'),
('97d9199bc3b5e83f00ee22764a3c8788796c21c7c331029d4bb5555261d7368e13543201989ba983', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-06 02:14:05', '2022-06-06 02:14:05', '2023-06-06 08:14:05'),
('98c1570f17abe073cefbf41196ee00effba7ce35c8213040dc61aad73e7652288e1d5ffab06a7fa0', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-01 22:34:34', '2022-03-01 22:34:34', '2023-03-02 04:34:34'),
('a456f09a1b6e53c6b81af6ad666705b475045e83637f9f8c968cd29e05f7c0889408fac97461b47e', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 17:13:09', '2022-01-30 17:13:09', '2023-01-30 23:13:09'),
('a69d3ed3ae1a8de3509af9c92c01184d0f6e545e0330da6a8718385f7b147e5460faeb354bb715df', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-18 05:22:45', '2022-06-18 05:22:45', '2023-06-18 11:22:45'),
('a82468cb9a6db545e8f0a3221d2a0da7728352e29c41df37944ccf92edc77936e5381cb6360c6bc9', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-05-12 05:48:21', '2022-05-12 05:48:21', '2023-05-12 11:48:21'),
('b1d19fad39ee8dbc53b924d08c800bb59958a0ad52bb5deae50de1e5634566490525456f5066c7dc', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-31 00:14:14', '2022-01-31 00:14:14', '2023-01-31 06:14:14'),
('b2a3186106dad573d346933411f817e17273d050327dd6a39d462fbe2dc7fa59aa498f198b771bd3', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-24 21:18:35', '2022-06-24 21:18:35', '2023-06-25 03:18:35'),
('b48e5fccd03ff3e60e3bc521705a7d7332a0bbe043b6da3fb5b3aec5aad19bf41fd4645524deeb00', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-02 02:58:44', '2022-03-02 02:58:44', '2023-03-02 08:58:44'),
('b52d7343402def0ae13bb08bc2548bb3025ba6ad26038e60ad2759954affa8fef237ac18666a1ce1', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-11 05:18:25', '2022-06-11 05:18:25', '2023-06-11 11:18:25'),
('b5939d65ee99847182b22531f00d390aa5bf63958bd21ba02902b95b0c3775be3c835b467eac5e02', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-02-22 05:42:56', '2022-02-22 05:42:56', '2023-02-22 11:42:56'),
('b6b89c12a92b72553c83cd85a19a47e808ff1d5136414dca5800ed500ff5bc913b923a31fe2b4b42', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 16:21:55', '2022-01-30 16:21:55', '2023-01-30 22:21:55'),
('b9fd0a63dbd5d81f73619adfe8497f5fbb620e373dc84db610372dca090f5e989de7a6a69b06e3d2', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-06 02:37:45', '2022-06-06 02:37:45', '2023-06-06 08:37:45'),
('bd54921ce93431fdcfe8e544519b935ed003c28c7ee8247da0051d96bb1379d89a89f810bd61c91b', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-05 04:39:04', '2022-06-05 04:39:04', '2023-06-05 10:39:04'),
('c139aa3423fcbe734820a0f2284373c2790e151e6980e472fcf49bb90709fbc2e258be3d447c54d7', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-06 02:53:23', '2022-06-06 02:53:23', '2023-06-06 08:53:23'),
('c68e876dc26ae3cf64a9ebcd62f93ebeffd15bc5353ee1ecc1f9b120bdeb17cd79d9fc315d951699', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-24 05:19:45', '2022-03-24 05:19:45', '2023-03-24 11:19:45'),
('ca8d3a00b41820d043c3b05664616a851200f740457db80f5a05c5a430dc0b4d63019fc29dd9ea49', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-23 04:23:24', '2022-06-23 04:23:24', '2023-06-23 10:23:24'),
('d4768e6bbfdaa47fbd092b5f17a7627ca7028eb8bf05fef9e6b1aa69de82ce883eeb0ba4825eeecc', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-29 05:26:23', '2022-03-29 05:26:23', '2023-03-29 11:26:23'),
('d652d311031d66dd64c714a8374cdeb0732a5a2c8c1389680086fc620c908de23c205de8482b0e4e', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-20 02:45:19', '2022-06-20 02:45:19', '2023-06-20 08:45:19'),
('d6b88e38119dfa884e5c95da6c68bd56626c7bc42cf1eab1707221e0e2e863f0153e00c4968144a1', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-01 22:47:17', '2022-06-01 22:47:17', '2023-06-02 04:47:17'),
('dbe7f8bfcc8fa6bdec9d77ac17530676f1bf82d01ffe6ad19f89fa2232d6fcdd5b324756907c53f7', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-24 05:20:52', '2022-03-24 05:20:52', '2023-03-24 11:20:52'),
('dd9f85e0af8d78f61a3e0b403f86e7f4baa2fe0adcb44bbacae797cba81b372673fed59445aa3ad7', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:17:21', '2022-01-30 15:17:21', '2023-01-30 21:17:21'),
('e0a9275b36da27dac9b2e47075eafe7a2ea5f3285c806257c88a250a0efda25f96a854439aa784ef', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-01 22:36:52', '2022-03-01 22:36:52', '2023-03-02 04:36:52'),
('ea0cbf68fdf9aae6198f895231c1615121fa38c4c89247ee40e607142f550045f71b904d2335f35c', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-05 04:38:34', '2022-06-05 04:38:34', '2023-06-05 10:38:34'),
('f03f2464a4581a30869d7786791a7fabf813a2a543957af99749b89ae268167eb13792bcf64db47e', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-11 05:12:14', '2022-06-11 05:12:14', '2023-06-11 11:12:14'),
('f088dfe639471f1f7b30ec578d7552244535fe4fe998961806cf5d24a02d3f3f55ea2f8d200257e4', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-11 04:48:22', '2022-06-11 04:48:22', '2023-06-11 10:48:22'),
('f180e8990bda1ed256325412b4a63e9b254dafa2831c94ca7ae4e31dc4c87d2615d032d91495fc7d', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-02-10 09:17:04', '2022-02-10 09:17:04', '2023-02-10 15:17:04'),
('f5787b0a3e49316a72449f56b9aa40ea0c793be1e55bdbd0b7fe2604f626021a6f842967c30155b9', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-20 02:45:29', '2022-06-20 02:45:29', '2023-06-20 08:45:29'),
('f5f3a85fa2d1507f1d756effc56ac8e06a632fd4d81b721e16b3c8a84e6011f763927aca09e3242c', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-24 05:08:28', '2022-03-24 05:08:28', '2023-03-24 11:08:28'),
('f8f1b2b6e361860245f7eaa20ad6215c067a44b1621c18af7729084f7411cfdb4b0a06de50f7dcdc', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-03-29 05:41:14', '2022-03-29 05:41:14', '2023-03-29 11:41:14'),
('f94ea7eefd564a5ea1d70fc3c9a64c3f4d82add757e225515991e625fee703796f15ff8728063f27', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-02 02:36:23', '2022-06-02 02:36:23', '2023-06-02 08:36:23'),
('fbabe378f2fa6912b21c7d01ce519415101b05171a2b6f843ad41e796b2f51417af81916f901c193', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-06-23 04:04:24', '2022-06-23 04:04:24', '2023-06-23 10:04:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'h8mW5mv4UJRJLbvYlEunFf2jBd2EhTi3BI0dKTJL', NULL, 'http://localhost', 1, 0, 0, '2022-01-30 14:53:32', '2022-01-30 14:53:32'),
(2, NULL, 'Laravel Password Grant Client', 'bi1qTvwY2o5vBASRzBJL2SkUBTCbXQSDaedWfKwT', 'users', 'http://localhost', 0, 1, 0, '2022-01-30 14:53:32', '2022-01-30 14:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-01-30 14:53:32', '2022-01-30 14:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created` date DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `showroom_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `initial_balance` decimal(10,2) NOT NULL,
  `party_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` (`id`, `created`, `code`, `showroom_id`, `name`, `contact_person`, `mobile`, `address`, `remarks`, `initial_balance`, `party_type`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, '2022-06-23', 'SI-231390', '0001', 'Khairul Islam 4589', 'Khairul Islam', '01707536945', 'Mymensingh Sadar, Ghagra, Dapunia, 2200, 9, Shuhila Habi master er bari, 2-, Shuhila, Mymensinghr', '78', '-100.00', 'supplier', 'active', '2022-06-23 05:56:38', '2022-06-23 05:11:54', '2022-06-23 05:56:38'),
(9, '2022-06-23', 'SI-232214', '0001', 'Khairul Islam 56', 'Khairul Islam', '01707536945', 'Mymensingh Sadar, Ghagra, Dapunia, 2200, 9, Shuhila Habi master er bari, 2-, Shuhila, Mymensinghr', 'Remark', '-120.00', 'supplier', 'active', NULL, '2022-06-23 05:56:09', '2022-06-23 05:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `category_id`, `brand_id`, `unit_id`, `purchase_price`, `sale_price`, `status`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '142152', 'Khairul Islam', 2, 9, 35, '120.00', '0.00', 'on', NULL, NULL, '2022-01-10 10:47:10', '2022-01-29 09:06:54'),
(2, '733035', 'adasd', 4, 13, 33, '1.00', '0.00', 'on', NULL, '2022-01-30 16:05:39', '2022-01-10 10:51:17', '2022-01-30 16:05:39'),
(3, '745050', 'asdasd', 4, 3, 38, '560.00', '0.00', 'on', NULL, NULL, '2022-01-10 10:52:57', '2022-01-29 09:06:40'),
(4, '113336', 'Khairul Islam 2', 2, 15, 3, '120.00', '120.00', 'on', 'public/upload/fe8RxAoCQ9.png', NULL, '2022-01-11 10:52:52', '2022-06-18 05:23:14'),
(5, '710660', 'Maisa 456', 2, 16, 36, '0.00', '0.00', 'on', NULL, NULL, '2022-01-12 07:58:53', '2022-01-12 07:58:53'),
(6, '862195', 'Mobile', 2, 16, 38, '0.00', '0.00', 'on', NULL, NULL, '2022-01-12 08:58:49', '2022-01-12 08:58:49'),
(7, '677393', 'Maisha', 5, 15, 40, '5000000.00', '0.00', 'on', NULL, NULL, '2022-01-18 07:43:45', '2022-01-30 16:05:33'),
(8, '663774', 'Test P ad', 2, 16, 36, '120.00', '130.00', 'on', NULL, '2022-01-18 10:17:12', '2022-01-18 10:17:01', '2022-01-18 10:17:12'),
(9, '772471', 'Khairul Islam45', 4, 19, 38, '100.00', '20.00', 'on', NULL, '2022-01-30 16:26:33', '2022-01-30 16:26:09', '2022-01-30 16:26:33'),
(10, '665069', 'Aaaa', 2, 19, 40, '0.00', '0.00', 'on', NULL, NULL, '2022-01-31 23:24:00', '2022-01-31 23:24:00'),
(11, '358120', 'FAD', 1, 15, 38, '100.00', '200.00', 'on', NULL, NULL, '2022-03-24 05:09:21', '2022-03-24 05:09:21'),
(12, '764024', 'Rp Electronice', 1, 19, 40, '100.00', '200.00', 'on', 'public/upload/GiGShv2Dbm.png', NULL, '2022-06-04 00:21:22', '2022-06-04 00:21:22'),
(13, '291956', 'Mum', 1, 16, 40, '10.00', '20.00', 'on', 'public/upload/JwsfioJyA2.jpeg', NULL, '2022-06-04 00:23:20', '2022-06-04 00:23:20'),
(14, '918374', 'Khairul Islam 458874', 1, 16, 40, '152.00', '60.00', 'on', 'public/upload/MuGKsCJIn8.jpeg', NULL, '2022-06-04 00:33:33', '2022-06-04 00:33:33'),
(15, '789406', 'Citus -', 1, 16, 42, '120.00', '200.00', 'on', 'public/upload/f9JIofnzIE.jpeg', '2022-06-11 04:40:44', '2022-06-04 03:47:21', '2022-06-11 04:40:44'),
(16, '276759', 'ADas', 1, 16, 38, '0.00', '0.00', 'on', 'public/upload/AWFo2iymVD.jpeg', '2022-06-05 04:41:07', '2022-06-05 04:41:03', '2022-06-05 04:41:07'),
(17, '205022', 'Test Clientdasda asd', 5, 13, 37, '120.00', '200.00', 'on', 'public/upload/9o7I2QDAIi.png', '2022-06-11 04:13:50', '2022-06-11 04:13:35', '2022-06-11 04:13:50'),
(18, '100271', 'Khairul Islam 7585', 5, 16, 36, '110.00', '200.00', 'on', 'public/upload/qkwEA90QBK.jpeg', NULL, '2022-06-23 04:04:48', '2022-06-23 04:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Kg', NULL, '2021-12-12 14:17:28', '2021-12-12 14:17:28'),
(2, 'Pcs', NULL, '2021-12-12 14:17:34', '2021-12-12 14:17:34'),
(3, 'Litter', NULL, '2021-12-12 14:17:41', '2021-12-12 14:17:41'),
(4, 'Set', NULL, '2021-12-12 14:44:39', '2021-12-14 12:05:18'),
(16, 'Ctn', '2022-06-11 04:12:34', '2021-12-14 08:02:00', '2022-06-11 04:12:34'),
(17, 'asda adasd Khairul Islam', '2021-12-29 08:22:57', '2021-12-14 11:19:48', '2021-12-29 08:22:57'),
(18, 'cc', '2021-12-29 08:23:01', '2021-12-14 12:09:18', '2021-12-29 08:23:01'),
(19, 'adad das', '2021-12-29 08:22:51', '2021-12-14 12:16:32', '2021-12-29 08:22:51'),
(20, 'Test 201', NULL, '2021-12-14 12:16:38', '2021-12-29 08:22:38'),
(21, 'adad', '2021-12-29 08:22:11', '2021-12-14 12:22:57', '2021-12-29 08:22:11'),
(22, 'Test', NULL, '2021-12-14 12:26:17', '2021-12-14 12:26:17'),
(23, 'Freedom', NULL, '2021-12-14 12:26:33', '2021-12-14 12:26:33'),
(24, 'asd', '2021-12-29 08:23:08', '2021-12-14 12:26:44', '2021-12-29 08:23:08'),
(25, 'Khairul Islam', NULL, '2021-12-14 12:29:20', '2021-12-14 12:29:20'),
(26, 'Pran Up', NULL, '2021-12-29 08:47:47', '2021-12-29 08:47:47'),
(27, '784', '2021-12-29 09:42:56', '2021-12-29 09:36:28', '2021-12-29 09:42:56'),
(28, 'Khairul 144', '2021-12-29 09:42:52', '2021-12-29 09:39:42', '2021-12-29 09:42:52'),
(29, 'মাইশা আদ', '2021-12-29 10:29:00', '2021-12-29 10:28:43', '2021-12-29 10:29:00'),
(30, 'asdasd', '2022-01-03 10:15:43', '2022-01-03 10:14:04', '2022-01-03 10:15:43'),
(31, 'dad', '2022-01-03 10:15:29', '2022-01-03 10:15:20', '2022-01-03 10:15:29'),
(32, 'Art', NULL, '2022-01-03 10:15:52', '2022-01-03 10:15:52'),
(33, 'Kal', '2022-06-11 04:11:18', '2022-01-03 10:16:54', '2022-06-11 04:11:18'),
(34, '845', NULL, '2022-01-03 10:17:52', '2022-01-03 10:17:52'),
(35, '87', '2022-06-11 04:11:34', '2022-01-03 10:19:30', '2022-06-11 04:11:34'),
(36, 'Test 222', NULL, '2022-01-08 10:35:18', '2022-01-08 10:35:18'),
(37, 'Miasha', NULL, '2022-01-09 07:55:28', '2022-01-09 07:55:28'),
(38, 'Maisa2', '2022-06-11 04:12:30', '2022-01-09 07:59:12', '2022-06-11 04:12:30'),
(39, 'AD', '2022-01-09 08:02:32', '2022-01-09 08:00:04', '2022-01-09 08:02:32'),
(40, 'Pound Nose', '2022-06-11 04:11:29', '2022-01-09 08:02:10', '2022-06-11 04:11:29'),
(41, 'asd adasd', '2022-01-09 08:29:05', '2022-01-09 08:28:55', '2022-01-09 08:29:05'),
(42, 'De', '2022-06-11 04:10:41', '2022-01-30 17:13:29', '2022-06-11 04:10:41'),
(43, 'DER Ada', '2022-06-11 04:12:49', '2022-06-11 04:12:39', '2022-06-11 04:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'CjnAlzY86W', 'user@gmail.com', NULL, '$2y$10$JHKT16QVV7GEfbpMqldPB.uATXW3Ee1lYysXU5lv6J0NGo.sRnPIa', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `manager_name`, `mobile`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'DF-ShowRoom - One', 'MG - 45', '01707536945', 'Mymensingh Sadar, Ghagra, Dapunia, 2200, 9, Shuhila Habi master er bari, 2-, Shuhila, Mymensinghr', NULL, '2022-06-24 22:58:50', '2022-06-24 22:58:50'),
(2, '45-Khairul Islam', '4545', '01707536900', 'Mymensingh Sadar, Ghagra, Dapunia, 2200, 9, Shuhila Habi master er bari, 2-, Shuhila, Mymensinghr', NULL, '2022-06-24 22:59:03', '2022-06-24 22:59:03'),
(3, '45-Khairul Islam', '4545', '01707536933', '56', NULL, '2022-06-24 22:59:33', '2022-06-24 22:59:33'),
(4, 'GH-WR - 2', 'DFG', '01636994875', 'Dhaka', NULL, '2022-06-24 23:13:00', '2022-06-24 23:13:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
