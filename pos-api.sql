-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 06:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

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
(21, 'asdasd', '2022-06-11 04:13:05', '2022-06-11 04:12:57', '2022-06-11 04:13:05'),
(22, '5', '2022-07-03 07:58:15', '2022-07-03 07:58:11', '2022-07-03 07:58:15');

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
(7, 'ADASD Asdas', '2022-06-11 04:13:20', '2022-06-11 04:13:12', '2022-06-11 04:13:20'),
(8, 'RE', '2022-07-03 07:57:51', '2022-07-03 07:57:24', '2022-07-03 07:57:51');

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
(34, '2022_06_20_083146_create_warehouses_table', 2),
(35, '2022_06_28_093056_create_partytransactions_table', 3);

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
('236778879017deb9239b0d42dad84b7df50b644566c1277a6aa85eda19af1bd3b271c2d491649ebc', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-11-20 09:11:06', '2022-11-20 09:11:06', '2023-11-20 15:11:06'),
('3e782dd3a275b7e44366f57cc966cd747301832a4f7482a40b59ad7ab77fe98f6ec28d309cd6d6ee', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-11-17 06:38:29', '2022-11-17 06:38:29', '2023-11-17 12:38:29'),
('5647b06d1a224410f21f1974a8a7656ef69c9e16a56a0ea35c9ceb77d6e6785040f8b400007bcb87', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-10-03 08:48:07', '2022-10-03 08:48:07', '2023-10-03 14:48:07'),
('5774e15a76dd656dd6374759f109b38cced8645d09ccb0a876e10ff2f5e587096ae431231881421d', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-11-21 16:42:09', '2022-11-21 16:42:09', '2023-11-21 22:42:09'),
('5ecda9879552ec55c55fde29aa3be6448f19b86ee8daa9961cf3cc517795fe6c8e2963487f2ecc17', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-10-13 08:22:56', '2022-10-13 08:22:56', '2023-10-13 14:22:56'),
('5fb16de5f4d05c7b4abc2882324afe704240adb47f7a47635ded8f5c7b2a56f911804c963e06aa4e', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-10-10 20:52:13', '2022-10-10 20:52:13', '2023-10-11 02:52:13'),
('6feeaf18f7bffc68c6283a2a87f6d0a6eb8ff46bae498acdc646d94a5e0cc582a8a224009c00f15d', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-11-17 06:32:53', '2022-11-17 06:32:53', '2023-11-17 12:32:53'),
('8e28bf94bd1aa29b01cb1af57bd8908286c4a07aa0b74b6ab49b95df60ca14725beb3cd3f1cc7d53', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-11-18 07:13:27', '2022-11-18 07:13:27', '2023-11-18 13:13:27'),
('9e966970dcfbd76868b9c53a4b7dc66c8a53000b8a4e63650b89817481cf6c2498ad138a4fa2f324', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-10-13 08:12:25', '2022-10-13 08:12:25', '2023-10-13 14:12:25'),
('a182b2e447b311a1c1c875ce32440ec6cdca54b54688fb46fcaa99afcfb8cd4c2bc8282de885b249', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-10-24 07:27:16', '2022-10-24 07:27:16', '2023-10-24 13:27:16'),
('a6fd167dd2a14c76b66f0ae82cd884719118d10869dc639706eec11a4aa1767b4dff028e2c489323', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-11-17 05:56:15', '2022-11-17 05:56:15', '2023-11-17 11:56:15'),
('a770c8ca326a04c58d044c45e80ae0c237af4ab0679df506d9fe732a13be0482d2f3e0ff72730a59', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-12-02 03:06:36', '2022-12-02 03:06:36', '2023-12-02 09:06:36'),
('a8db8896189164bc303133f4886afa58a83ca3bcad1cd5e20241c12ab7530a2919db9a7335406bd4', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-10-12 04:23:32', '2022-10-12 04:23:32', '2023-10-12 10:23:32'),
('b1344987e0deb2bf72dfd6b1f06180633779a23ac9a17c65a0929e710d1ff01d20f4dd1726a225f2', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-11-17 06:16:24', '2022-11-17 06:16:24', '2023-11-17 12:16:24'),
('c73205ff02a588ad302c7b03e4c4c09b8870e1b75e5efe9f742bef8b7eb2cf67e1b1c974424145b6', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-10-14 21:42:56', '2022-10-14 21:42:56', '2023-10-15 03:42:56'),
('ca11c8e575eb609ed1eebdff6065ce41e8fa30464961090d38689b7cb58c960df23e550652073c0b', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-11-17 06:37:58', '2022-11-17 06:37:58', '2023-11-17 12:37:58'),
('ca4cb44671f134504242efeeb5e3426acf345e85a22700b4f24e96dc95b63926e8dca2f1cf341980', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-11-18 06:42:59', '2022-11-18 06:42:59', '2023-11-18 12:42:59'),
('d6cb03e785f856b56f539122ebdf0aba9c1588d0a70f4db7fdc428d43386e4f1da95ff38a60901ab', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-11-18 05:53:10', '2022-11-18 05:53:10', '2023-11-18 11:53:10'),
('ed091c9f74b26a7579ede5a9dd4de73c5c12d7c1b6492c1f0173a5f26ece031b3a0899948538ca21', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-10-13 08:25:42', '2022-10-13 08:25:42', '2023-10-13 14:25:42'),
('f3e9b82855fb1b2bc8ebbac3ebda8af647d8d336726fbb597299d0fa476a02db0d52e27d60b73af1', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-10-07 08:44:59', '2022-10-07 08:44:59', '2023-10-07 14:44:59'),
('f46d8a564d70257b57d3b332e3292b923b3bbfa21ec4c3007c021716bc30229e4f6d36f1197a9645', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-11-20 09:35:00', '2022-11-20 09:35:00', '2023-11-20 15:35:00'),
('fc2afba2b5c80d66e17d78316b5844809ea3e30a51739ea7ba0940a04e22045432ac433c363380fc', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-10-02 08:30:12', '2022-10-02 08:30:12', '2023-10-02 14:30:12');

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
  `warehouse_id` int(11) NOT NULL,
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

INSERT INTO `parties` (`id`, `created`, `code`, `warehouse_id`, `name`, `contact_person`, `mobile`, `address`, `remarks`, `initial_balance`, `party_type`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, '2022-06-23', 'SI-231390', 1, 'Khairul Islam 4589', 'Khairul Islam', '01707536945', 'Mymensingh Sadar, Ghagra, Dapunia, 2200, 9, Shuhila Habi master er bari, 2-, Shuhila, Mymensinghr', '78', '-100.00', 'supplier', 'active', '2022-06-23 05:56:38', '2022-06-23 05:11:54', '2022-06-23 05:56:38'),
(9, '2022-06-23', 'SI-232214', 1, 'Khairul Islam 56', 'Khairul Islam', '01707536945', 'Mymensingh Sadar, Ghagra, Dapunia, 2200, 9, Shuhila Habi master er bari, 2-, Shuhila, Mymensinghr', 'Remark', '-60.00', 'supplier', 'active', NULL, '2022-06-23 05:56:09', '2022-06-26 07:21:50'),
(10, '2022-06-26', 'SI-268289', 1, 'ABC', '-', '01707536912', 'Mymensingh', 'Remark', '150.00', 'supplier', 'active', NULL, '2022-06-26 07:22:42', '2022-06-26 07:22:42'),
(11, '2022-06-29', 'SI-297671', 1, 'ABC 750', '-', '0146987552', '-', '-', '100.00', 'supplier', 'active', NULL, '2022-06-29 08:38:27', '2022-06-29 08:38:27'),
(12, '2022-06-29', 'SI-291365', 2, 'Suplier 3', '-', '01707536945', '-', '-', '-500.00', 'supplier', 'active', NULL, '2022-06-29 09:50:34', '2022-06-29 10:01:38'),
(13, '2022-07-01', 'SI-019306', 4, 'Coca Cola', '-', '0146987552', NULL, NULL, '0.00', 'supplier', 'active', '2022-07-03 08:09:33', '2022-06-30 23:43:12', '2022-07-03 08:09:33'),
(14, '2022-07-03', 'SI-034294', 4, 'Coca Cola', '-', '0196974851', '-', '-', '0.00', 'supplier', 'active', '2022-07-03 08:09:26', '2022-07-03 08:07:00', '2022-07-03 08:09:26'),
(15, '2022-07-03', 'SI-036624', 4, 'Coca Cola', '-', '0196974851', NULL, NULL, '0.00', 'supplier', 'active', '2022-07-03 08:12:41', '2022-07-03 08:12:34', '2022-07-03 08:12:41'),
(16, '2022-07-04', 'SI-042109', 3, 'Milan', '-', '0196974851', NULL, NULL, '0.00', 'supplier', 'active', NULL, '2022-07-04 12:13:42', '2022-10-12 04:37:23'),
(17, '2022-07-22', 'SI-221558', 4, 'Hire Client', '-', '01722113621', 'Dhaka', 'Test', '1000.00', 'supplier', 'active', NULL, '2022-07-22 08:42:02', '2022-10-02 09:32:52'),
(18, '2022-10-02', 'SI-021335', 4, 'Manila', '-', '01707536458', '-', '-', '0.00', 'supplier', 'active', NULL, '2022-10-02 09:06:53', '2022-10-02 09:07:12'),
(19, '2022-10-12', 'SI-124203', 4, 'S -11', NULL, '0196974851', NULL, NULL, '122.00', 'supplier', 'active', NULL, '2022-10-12 04:33:28', '2022-10-12 04:33:28'),
(20, '2022-10-12', 'SI-129111', 4, 'Coca Cola 44', NULL, '01707536945', NULL, NULL, '-456.00', 'supplier', 'active', NULL, '2022-10-12 04:33:49', '2022-10-12 04:33:49'),
(21, '2022-10-12', 'SI-129819', 3, 'ADE', NULL, '0146987552', NULL, NULL, '34.00', 'supplier', 'active', NULL, '2022-10-12 04:34:07', '2022-10-12 04:34:07'),
(22, '2022-10-12', 'SI-122302', 2, 'RT', NULL, '01722113621', NULL, NULL, '456.00', 'supplier', 'active', NULL, '2022-10-12 04:34:25', '2022-10-12 04:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `partytransactions`
--

CREATE TABLE `partytransactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_at` date NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `party_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `debit` decimal(10,2) NOT NULL,
  `commission` decimal(8,2) NOT NULL,
  `transaction_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partytransactions`
--

INSERT INTO `partytransactions` (`id`, `transaction_at`, `warehouse_id`, `party_code`, `relation`, `credit`, `debit`, `commission`, `transaction_type`, `transaction_method`, `remark`, `paid_by`, `transaction_by`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2022-11-20', 4, 'SI-129111', '667579', '0.00', '12.00', '0.00', 'paid', 'cash', NULL, NULL, 'suplier', 'transaction', '2022-11-20 09:11:55', '2022-11-20 09:11:42', '2022-11-20 09:11:55'),
(2, '2022-11-20', 4, 'SI-129111', '640685', '0.00', '11.00', '0.00', 'paid', 'cash', NULL, NULL, 'suplier', 'transaction', '2022-11-21 18:57:30', '2022-11-20 09:11:44', '2022-11-21 18:57:30'),
(3, '2022-11-20', 4, 'SI-129111', '894466', '0.00', '45.00', '0.00', 'paid', 'cash', NULL, NULL, 'suplier', 'transaction', NULL, '2022-11-20 09:12:40', '2022-11-20 09:12:40'),
(4, '2022-11-22', 4, 'SI-129111', '687918', '20.00', '0.00', '0.00', 'receive', 'bank', 'This is a remark -', '-', 'suplier', 'transaction', '2022-11-21 18:52:47', '2022-11-20 11:24:25', '2022-11-21 18:52:47'),
(5, '2022-11-22', 4, 'SI-129111', '671963', '67.00', '0.00', '0.00', 'receive', 'cash', 'dff', 'df', 'suplier', 'transaction', NULL, '2022-11-20 12:14:09', '2022-11-25 15:52:50'),
(6, '2022-11-21', 4, 'SI-129111', '736970', '0.00', '4.00', '0.00', 'paid', 'bKash', NULL, NULL, 'suplier', 'transaction', '2022-11-21 18:57:17', '2022-11-20 12:14:59', '2022-11-21 18:57:17'),
(7, '2022-11-25', 4, 'SI-129111', '101688', '6.00', '0.00', '0.00', 'receive', 'bKash', 'Ber', 'J', 'suplier', 'transaction', NULL, '2022-11-20 13:07:00', '2022-11-25 16:37:43'),
(8, '2022-11-22', 4, 'SI-129111', '546617', '0.00', '10.00', '0.00', 'paid', 'cheque', '-', '-', 'suplier', 'transaction', '2022-11-21 18:54:26', '2022-11-21 03:06:11', '2022-11-21 18:54:26'),
(9, '2022-11-21', 4, 'SI-129111', '162648', '0.00', '500.00', '0.00', 'paid', 'cash', NULL, NULL, 'suplier', 'transaction', '2022-11-21 03:07:58', '2022-11-21 03:07:09', '2022-11-21 03:07:58'),
(10, '2022-11-23', 1, 'SI-297671', '710927', '202.00', '0.00', '0.00', 'receive', 'cash', '-', 'Pid By', 'suplier', 'transaction', NULL, '2022-11-21 18:56:14', '2022-11-23 15:31:17'),
(11, '2022-12-05', 4, 'SI-221558', '909692', '90.00', '0.00', '23.00', 'receive', 'cash', NULL, NULL, 'suplier', 'transaction', NULL, '2022-12-05 16:15:46', '2022-12-05 17:51:19');

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
(18, '100271', 'Khairul Islam 7585', 5, 16, 36, '110.00', '200.00', 'on', 'public/upload/ZzilRiUJg4.jpeg', NULL, '2022-06-23 04:04:48', '2022-10-02 10:34:02'),
(19, '513888', 'Fre456', 5, 16, 36, '10.00', '200.00', 'on', 'public/upload/8HQuP7wmGY.jpeg', NULL, '2022-07-01 23:46:56', '2022-10-02 10:30:48'),
(20, '963403', 'Coca Cola', 5, 16, 34, '0.00', '0.00', 'on', 'public/upload/3b40KKguzY.png', NULL, '2022-07-03 07:55:26', '2022-07-03 07:55:26');

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
(43, 'DER Ada', '2022-06-11 04:12:49', '2022-06-11 04:12:39', '2022-06-11 04:12:49'),
(44, 'R', '2022-07-01 20:53:59', '2022-07-01 20:53:54', '2022-07-01 20:53:59'),
(45, '87', '2022-07-03 07:58:43', '2022-07-03 07:58:30', '2022-07-03 07:58:43');

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
(1, 'Warehouse 4', 'MG - 45', '01707536945', 'Mymensingh Sadar, Ghagra, Dapunia, 2200, 9, Shuhila Habi master er bari, 2-, Shuhila, Mymensinghr', NULL, '2022-06-24 22:58:50', '2022-06-29 08:07:36'),
(2, 'Warehouse 3', '4545', '01707536900', 'Mymensingh Sadar, Ghagra, Dapunia, 2200, 9, Shuhila Habi master er bari, 2-, Shuhila, Mymensinghr', NULL, '2022-06-24 22:59:03', '2022-06-29 08:07:25'),
(3, 'Warehouse 2', '4545', '01707536933', 'Dhaka', NULL, '2022-06-24 22:59:33', '2022-06-29 08:07:14'),
(4, 'Warehouse 1', 'DFG', '01636994875', 'Dhaka 53', NULL, '2022-06-24 23:13:00', '2022-06-29 08:06:59'),
(5, 'DB-Coca Cola', 'RF', '0196974851', 'Dhaka', '2022-06-25 19:07:45', '2022-06-25 19:02:32', '2022-06-25 19:07:45'),
(6, 'DB-Coca Cola', 'RF', '0196974850', '45', '2022-06-25 19:08:37', '2022-06-25 19:08:29', '2022-06-25 19:08:37'),
(7, '--Warehouse 11', '-', '01636998845', '-', '2022-07-03 02:56:36', '2022-07-03 02:55:18', '2022-07-03 02:56:36'),
(8, '45-Coca Cola', 'RF', '01707536922', '-', '2022-07-03 08:04:17', '2022-07-03 02:59:49', '2022-07-03 08:04:17'),
(9, 'ID-Coca Cola54 1020', 'RF', '01707536911', '4545', '2022-07-03 08:04:11', '2022-07-03 03:01:36', '2022-07-03 08:04:11'),
(10, 'DB-Coca Cola', 'RF', '0196974859', '54', '2022-07-03 08:00:02', '2022-07-03 07:59:12', '2022-07-03 08:00:02'),
(11, 'DB-Coca Cola', 'RF', '01707536941', '78', '2022-07-03 08:06:27', '2022-07-03 08:06:22', '2022-07-03 08:06:27');

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
-- Indexes for table `partytransactions`
--
ALTER TABLE `partytransactions`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `partytransactions`
--
ALTER TABLE `partytransactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
