-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2022 at 11:10 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

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
(10, 'asdsad', NULL, '2022-01-03 09:50:48', '2022-01-03 09:50:48'),
(11, 'ADs', NULL, '2022-01-03 10:09:05', '2022-01-03 10:09:05'),
(12, 'Test', '2022-01-09 08:41:16', '2022-01-03 10:09:49', '2022-01-09 08:41:16'),
(13, 'Test 2021', NULL, '2022-01-03 10:09:59', '2022-01-03 10:09:59'),
(14, 'asdasd', '2022-01-09 08:12:25', '2022-01-09 08:03:24', '2022-01-09 08:12:25'),
(15, 'Khairul 2', NULL, '2022-01-09 08:07:24', '2022-01-09 08:07:24'),
(16, 'Araf 121', NULL, '2022-01-09 08:10:21', '2022-01-09 08:41:06'),
(17, 'Arad', '2022-01-09 08:12:04', '2022-01-09 08:10:36', '2022-01-09 08:12:04'),
(18, 'Khairul 264', '2022-01-09 08:41:37', '2022-01-09 08:41:25', '2022-01-09 08:41:37'),
(19, 'Test', NULL, '2022-01-09 09:01:22', '2022-01-12 07:53:04'),
(20, 'Test 2025', NULL, '2022-01-12 07:53:12', '2022-01-12 07:53:19');

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
(5, 'Cate 420', NULL, '2022-01-12 07:52:22', '2022-01-12 07:52:38');

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
(33, '2022_01_26_050945_create_admins_table', 1);

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
('11e2768af528903f216afbb69a6bb6f7a87b9aa4dbba546009c4533fc6bb87f63df011cdcf863221', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:15:09', '2022-01-30 15:15:09', '2023-01-30 21:15:09'),
('1e8034bd9fb64850111da46c148cdeedd46f9d22040ae46f7b23e50d76af2a296eea2d2df456a15b', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:17:00', '2022-01-30 15:17:00', '2023-01-30 21:17:00'),
('2bfbc7d1981d229679abcd756153bac896f38068bb7b20cd0f6be54dd14981151c87397fe5cdd9ab', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:19:01', '2022-01-30 15:19:01', '2023-01-30 21:19:01'),
('43bc3873bbaad5abbcd7979d0e3c1d48f88dab2ea8900db0645249485f6cc1a3961ed21beca6cdd8', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:29:11', '2022-01-30 15:29:11', '2023-01-30 21:29:11'),
('446f81aebe1d0aab0619b74db85f7fb275d603c55f51fe3d01795e68edd00da7374fcf0ccfd5c5ba', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:19:19', '2022-01-30 15:19:19', '2023-01-30 21:19:19'),
('6a8e31f82f518028adcfe7c1136effbd7fb6be9586833ed6564669243a6a62c5345bdf64c114f45f', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:17:46', '2022-01-30 15:17:46', '2023-01-30 21:17:46'),
('6dd63d74f4e979b2466aa6fb96a617889d8f9cd3ef985aae9c330236d9bfb3673d21f13430df904d', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 16:04:24', '2022-01-30 16:04:24', '2023-01-30 22:04:24'),
('7a8bf28657f011e22f548b52f23634d560c129f91c20ce404e71d9c8d859e6c2184a0550d309a9d2', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:14:39', '2022-01-30 15:14:39', '2023-01-30 21:14:39'),
('dd9f85e0af8d78f61a3e0b403f86e7f4baa2fe0adcb44bbacae797cba81b372673fed59445aa3ad7', 1, 1, 'MyApp', '[\"admin\"]', 0, '2022-01-30 15:17:21', '2022-01-30 15:17:21', '2023-01-30 21:17:21');

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

INSERT INTO `parties` (`id`, `created`, `name`, `contact_person`, `mobile`, `address`, `remarks`, `initial_balance`, `party_type`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2022-01-17', 'Khairul Islam', 'Maisha', '01612803693', 'Mymensingh', 'Remarks', '120.00', 'supplier', 'active', NULL, '2022-01-17 11:00:26', '2022-01-18 10:15:18'),
(2, '2022-01-17', 'Maisa', 'Khairul Islam', '01707536945', 'Dhaka', 'Remarks', '-560.00', 'supplier', 'active', NULL, '2022-01-17 11:11:42', '2022-01-22 09:35:50'),
(3, '2022-01-18', 'Rfl Toper', 'Rfl', '01707536945', 'Dhaka Da', 'Remarks Data', '-200.00', 'supplier', 'active', '2022-01-18 20:09:56', '2022-01-18 07:40:02', '2022-01-18 20:09:56'),
(4, '2022-01-18', 'Khairu', 'aDdoda', '01707536945', 'Mymensingh', 'Kolkata', '500.00', 'supplier', 'active', NULL, '2022-01-18 09:56:59', '2022-01-18 10:51:14'),
(5, '2022-01-19', 'Cate', 'Arafat - M', '01707536945', 'Mymensingh', '1 Pcs', '-120.00', 'supplier', 'active', NULL, '2022-01-18 19:33:51', '2022-01-22 09:52:18');

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
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `category_id`, `brand_id`, `unit_id`, `purchase_price`, `sale_price`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '142152', 'Khairul Islam', 2, 9, 35, '120.00', '0.00', 'on', NULL, '2022-01-10 10:47:10', '2022-01-29 09:06:54'),
(2, '733035', 'adasd', 4, 13, 33, '1.00', '0.00', 'on', '2022-01-30 16:05:39', '2022-01-10 10:51:17', '2022-01-30 16:05:39'),
(3, '745050', 'asdasd', 4, 3, 38, '560.00', '0.00', 'on', NULL, '2022-01-10 10:52:57', '2022-01-29 09:06:40'),
(4, '113336', 'Khairul Islam 2', 2, 15, 3, '120.00', '120.00', 'on', NULL, '2022-01-11 10:52:52', '2022-01-11 10:52:52'),
(5, '710660', 'Maisa 456', 2, 16, 36, '0.00', '0.00', 'on', NULL, '2022-01-12 07:58:53', '2022-01-12 07:58:53'),
(6, '862195', 'Mobile', 2, 16, 38, '0.00', '0.00', 'on', NULL, '2022-01-12 08:58:49', '2022-01-12 08:58:49'),
(7, '677393', 'Maisha', 5, 15, 40, '5000000.00', '0.00', 'on', NULL, '2022-01-18 07:43:45', '2022-01-30 16:05:33'),
(8, '663774', 'Test P ad', 2, 16, 36, '120.00', '130.00', 'on', '2022-01-18 10:17:12', '2022-01-18 10:17:01', '2022-01-18 10:17:12');

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
(16, 'Ctn', NULL, '2021-12-14 08:02:00', '2021-12-14 08:02:00'),
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
(33, 'Kal', NULL, '2022-01-03 10:16:54', '2022-01-03 10:16:54'),
(34, '845', NULL, '2022-01-03 10:17:52', '2022-01-03 10:17:52'),
(35, '87', NULL, '2022-01-03 10:19:30', '2022-01-03 10:19:30'),
(36, 'Test 222', NULL, '2022-01-08 10:35:18', '2022-01-08 10:35:18'),
(37, 'Miasha', NULL, '2022-01-09 07:55:28', '2022-01-09 07:55:28'),
(38, 'Maisa2', NULL, '2022-01-09 07:59:12', '2022-01-09 07:59:12'),
(39, 'AD', '2022-01-09 08:02:32', '2022-01-09 08:00:04', '2022-01-09 08:02:32'),
(40, 'Pound Nose', NULL, '2022-01-09 08:02:10', '2022-01-09 08:02:19'),
(41, 'asd adasd', '2022-01-09 08:29:05', '2022-01-09 08:28:55', '2022-01-09 08:29:05');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
