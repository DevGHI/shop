-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 12:46 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `township_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `township_id`, `created_at`, `updated_at`) VALUES
(7, 'Hlainn Poe Ei', '09799842161', 'Thamine', 4, '2020-04-12 02:09:54', '2020-04-12 02:09:54'),
(8, 'Poe Ei', '09264384303', 'Mayangone', 2, '2020-04-12 08:53:16', '2020-04-12 08:53:16'),
(9, 'Cherry', '09876543876', 'Insein', 8, '2020-04-12 12:12:34', '2020-04-12 12:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `main_categories`
--

CREATE TABLE `main_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_categories`
--

INSERT INTO `main_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Woman Accessories', '2020-04-07 22:22:04', '2020-04-12 02:29:13'),
(3, 'Phone', '2020-04-12 08:54:59', '2020-04-12 08:54:59'),
(6, 'Man Accessories', '2020-04-12 12:07:49', '2020-04-12 12:07:49');

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2020_04_08_034618_create_customers_table', 2),
(11, '2020_04_08_035100_create_townships_table', 2),
(12, '2020_04_08_044424_create_maincategories_table', 2),
(13, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(14, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(15, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(16, '2016_06_01_000004_create_oauth_clients_table', 3),
(17, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(18, '2020_04_11_110826_create_sub_categories_table', 4),
(22, '2020_04_12_100817_create_productphotos_table', 5),
(23, '2020_04_12_101104_create_products_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
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
('0d9b9ef263ea2b5d96820cb6555528505f92335cffcb9ee4ea379615534d78901a55a94cfdd8158f', 1, 1, 'Shop', '[]', 0, '2020-04-07 22:49:25', '2020-04-07 22:49:25', '2021-04-08 05:19:25'),
('12bc344c1a833ee98470d77b07267b50d46c8fc124de694d75332b235823f55df126199a2e41deb0', 9, 3, 'Shop', '[]', 0, '2020-04-13 02:45:55', '2020-04-13 02:45:55', '2021-04-13 09:15:55'),
('436a381f753e907ffebaf1653edad233c27aff6d72d8afcb170aee40d3cd9ac45cde00eacf8c35c6', 1, 3, 'Shop', '[]', 0, '2020-04-13 02:51:39', '2020-04-13 02:51:39', '2021-04-13 09:21:39'),
('4fb36e53558c6811f2f2d77a43a21e66c2023c7f6ec872815836acf86830829db9350a440b8965f9', 1, 3, 'Shop', '[]', 0, '2020-04-12 08:53:40', '2020-04-12 08:53:40', '2021-04-12 15:23:40'),
('593fcdc6ca53776e492436a1d084819f99ce9c4ba3a7564aabcad47b7d001ad895c9ad4531a5132f', 9, 3, 'Shop', '[]', 0, '2020-04-13 02:53:50', '2020-04-13 02:53:50', '2021-04-13 09:23:50'),
('6f8ce3e56c8a10cb2742a52f96bfcb16914cc207d4bdc2d7635810d6f9e21df1f26dc91c3d873228', 1, 1, 'Shop', '[]', 0, '2020-04-11 02:50:36', '2020-04-11 02:50:36', '2021-04-11 09:20:36'),
('78ed68af470ae287629ce0b062bacf9fd68267039a9ee114f19c657aaf33281cf1710f13805ba55e', 9, 3, 'Shop', '[]', 0, '2020-04-13 02:52:06', '2020-04-13 02:52:06', '2021-04-13 09:22:06'),
('9fdde60baf7589af56063126919d390e60d06acd778f85feccad371caf841b6a0925012b69a4d2d1', 1, 1, 'Shop', '[]', 0, '2020-04-07 22:47:29', '2020-04-07 22:47:29', '2021-04-08 05:17:29'),
('a2a0003cb4212861611ef63d9f7b601a91f6ea6beaa0fc1a29f15dc822c797a8b2c9b991583e87c3', 1, 3, 'Shop', '[]', 0, '2020-04-12 09:23:30', '2020-04-12 09:23:30', '2021-04-12 15:53:30'),
('bab349a588c9f4874b03adefb2886af711a0ae4df57b71cf45da3df7c59a93e0cd147b78fa707e4b', 1, 3, 'Shop', '[]', 0, '2020-04-13 02:50:51', '2020-04-13 02:50:51', '2021-04-13 09:20:51'),
('c6bfdb59eecc61dd808e11473169de8d62114e7386f4fa18f59d09f218983fcf69308ae879fcc26d', 1, 1, 'Shop', '[]', 0, '2020-04-11 02:46:04', '2020-04-11 02:46:04', '2021-04-11 09:16:04'),
('c9c5eb8cde98a1d8ab18b345846e035dd52fc87c0aa8bf15cd438aef5e90651bb37407fbc5c04346', 1, 3, 'Shop', '[]', 0, '2020-04-12 12:12:51', '2020-04-12 12:12:51', '2021-04-12 18:42:51'),
('cb09cfb1a5378b8d94eb87e34bce75ade6109ec69b746858fec98a9616fa569ec1b299895f28b566', 1, 3, 'Shop', '[]', 0, '2020-04-12 11:37:34', '2020-04-12 11:37:34', '2021-04-12 18:07:34'),
('d0069c470d4a89affee5db863190df41812286f235ea9193d9abe079cca49c5b5889b78789efb336', 1, 3, 'Shop', '[]', 0, '2020-04-12 11:47:53', '2020-04-12 11:47:53', '2021-04-12 18:17:53'),
('d8d5b8155c215243e88e0f2e0f9fd620f8fed28e0698a1651ae09171d69feb408c9ac422e41e0ef7', 1, 3, 'Shop', '[]', 0, '2020-04-12 07:31:42', '2020-04-12 07:31:42', '2021-04-12 14:01:42'),
('e98356de0f609e9aca785677ae1ea2fe70237e1cbb0ca4005228453c8331bfbc37e47e485a76c0ea', 1, 3, 'Shop', '[]', 0, '2020-04-13 02:54:12', '2020-04-13 02:54:12', '2021-04-13 09:24:12'),
('f18eef2d64a660eacf559347001ab803198ef013618e849d1d7b90c7cfdaf06801990f3ffdd2be21', 1, 3, 'Shop', '[]', 0, '2020-04-12 09:46:49', '2020-04-12 09:46:49', '2021-04-12 16:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'WNFFIk3F3j9Iv4Mn27TLFUxNA4QOzhsnh3BVJawE', 'http://localhost', 1, 0, 0, '2020-04-07 22:32:33', '2020-04-07 22:32:33'),
(2, NULL, 'Laravel Password Grant Client', 'QchsSQLC51xXfNkOISId9cRyG6px1p50v95zxJ7b', 'http://localhost', 0, 1, 0, '2020-04-07 22:32:33', '2020-04-07 22:32:33'),
(3, NULL, 'Laravel Personal Access Client', '6XLEMf99Xtp8cs8ZRJ9SdJCKE7MxH2jXx7qpwpI4', 'http://localhost', 1, 0, 0, '2020-04-12 07:31:22', '2020-04-12 07:31:22'),
(4, NULL, 'Laravel Password Grant Client', 'jP5oCdBt7xdPiGDtFeI5be9IEkEdA2sNSt4oVKRw', 'http://localhost', 0, 1, 0, '2020-04-12 07:31:23', '2020-04-12 07:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-04-07 22:32:33', '2020-04-07 22:32:33'),
(2, 3, '2020-04-12 07:31:23', '2020-04-12 07:31:23');

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `detail`, `sub_category_id`, `created_at`, `updated_at`) VALUES
(62, 'hlainn poe ei test update updated', '7000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 8, '2020-04-13 09:29:10', '2020-04-13 09:29:10'),
(63, 'product 63 updated updated', '3000', 'Lorem ipsum dolor sit amet, consectetur adipisicin...', 8, '2020-04-13 09:45:01', '2020-04-13 14:37:47'),
(64, 'hlainn poe ei test update updated', '7000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 8, '2020-04-13 10:48:20', '2020-04-13 10:48:20'),
(68, 'test', '1000', 'testing 1 2 3', 8, '2020-04-14 04:13:33', '2020-04-14 04:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_photos`
--

CREATE TABLE `product_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_photos`
--

INSERT INTO `product_photos` (`id`, `photo`, `product_id`, `created_at`, `updated_at`) VALUES
(25, '5e94d357f0f19_Chrysanthemum.jpg', 63, NULL, '2020-04-13 14:32:16'),
(26, '5e94d357f0f19_Chrysanthemum.jpg', 63, NULL, '2020-04-13 14:32:16'),
(27, '5e8df1d703bbbJellyfish.jpg', 64, NULL, NULL),
(28, '', 62, '2020-04-14 02:38:45', '2020-04-14 02:38:45'),
(29, '', 1, '2020-04-14 02:39:33', '2020-04-14 02:39:33'),
(30, '', 1, '2020-04-14 02:40:48', '2020-04-14 02:40:48'),
(31, '', 1, '2020-04-14 02:43:20', '2020-04-14 02:43:20'),
(32, '', 1, '2020-04-14 02:43:32', '2020-04-14 02:43:32'),
(33, '', 1, '2020-04-14 02:44:11', '2020-04-14 02:44:11'),
(34, '', 1, '2020-04-14 03:19:06', '2020-04-14 03:19:06'),
(35, '', 1, '2020-04-14 03:22:40', '2020-04-14 03:22:40'),
(36, '', 1, '2020-04-14 03:23:38', '2020-04-14 03:23:38'),
(37, '', 1, '2020-04-14 03:24:44', '2020-04-14 03:24:44'),
(38, '', 62, '2020-04-14 03:34:32', '2020-04-14 03:34:32'),
(39, '', 65, '2020-04-14 03:40:36', '2020-04-14 03:40:36'),
(40, '', 68, '2020-04-14 04:13:33', '2020-04-14 04:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_category_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `main_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Xiaomi', 3, '2020-04-12 03:10:58', '2020-04-12 12:05:30'),
(2, 'Samsung', 3, '2020-04-12 03:13:47', '2020-04-12 08:58:30'),
(4, 'Huaiwei', 3, '2020-04-12 04:26:59', '2020-04-12 08:58:35'),
(5, 'Bag', 1, '2020-04-12 08:59:30', '2020-04-12 08:59:30'),
(8, 'Clothes', 1, '2020-04-12 12:06:45', '2020-04-12 12:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `townships`
--

CREATE TABLE `townships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `townships`
--

INSERT INTO `townships` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Tamwe', '2020-04-11 02:03:06', '2020-04-12 12:10:11'),
(4, 'Ahlone', '2020-04-12 01:53:46', '2020-04-12 01:53:46'),
(5, 'Mayangone', '2020-04-12 08:48:44', '2020-04-12 08:48:44'),
(8, 'Insein', '2020-04-12 12:11:26', '2020-04-12 12:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `user_type`, `customer_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@shop.com', 'admin', 0, NULL, '$2y$10$IB16rvnC70xQTRIoCZiDg.RvMsp0AgklQYWBFGL1silPlFN9g6RMS', NULL, NULL, NULL),
(3, 'yeyintko.mkn@gmail.com', 'customer', 3, NULL, '$2y$10$IoeA1IZ04ioVa6Lf./iM1.ig3pcpQSocV/TY4lNgwmvrfcJIUvISO', NULL, '2020-04-11 02:35:26', '2020-04-11 02:35:26'),
(7, 'hpe@gmail.com', 'customer', 7, NULL, '$2y$10$D80v.Y2Qn/1O3mP5RY4Iv.nFui93CeTPgxTVhyXwdWLyx1vDraBa.', NULL, '2020-04-12 02:09:55', '2020-04-12 02:09:55'),
(8, 'pe@gmail.com', 'customer', 8, NULL, '$2y$10$lCmUvrv8EqY0Zf0Ao2r4he/4lPZL0nM6FqlHWWBXjReSBfitU0S36', NULL, '2020-04-12 08:53:16', '2020-04-12 08:53:16'),
(9, 'cherry@gmail.com', 'customer', 9, NULL, '$2y$10$kKG4TYRavE1sbvlGhg4ZS.0Wacx3K79zu7WSnqLkIA1FngAnsE.XG', NULL, '2020-04-12 12:12:34', '2020-04-12 12:12:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_categories`
--
ALTER TABLE `main_categories`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_photos`
--
ALTER TABLE `product_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `townships`
--
ALTER TABLE `townships`
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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `main_categories`
--
ALTER TABLE `main_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `product_photos`
--
ALTER TABLE `product_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `townships`
--
ALTER TABLE `townships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
