-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 04:08 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homeland`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin.first', 'admin.first@gmail.com', '$2y$10$Ap17CIUiPZte.jONzFThLOtH08gvpDBuhZIdlumQXmIRQDSJ/kMxG', '2023-07-05 10:57:16', '2023-07-05 10:57:16'),
(2, 'admin.second', 'admin.second@yahoo.com', '$2y$10$FBv7piASAo/Hj85uF2AmIuPlEk6ePBIaZrknb3m6TWk3/k43bXmL6', '2023-07-05 09:38:23', '2023-07-05 09:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hometypes`
--

CREATE TABLE `hometypes` (
  `id` int(10) NOT NULL,
  `hometypes` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hometypes`
--

INSERT INTO `hometypes` (`id`, `hometypes`, `created_at`, `updated_at`) VALUES
(1, 'Condo', '2023-07-03 11:56:32', '2023-07-03 11:56:32'),
(2, 'Land', '2023-07-03 11:56:32', '2023-07-03 11:56:32'),
(3, 'Commercial', '2023-07-03 11:56:32', '2023-07-03 11:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `props`
--

CREATE TABLE `props` (
  `id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `beds` varchar(50) NOT NULL,
  `baths` varchar(50) NOT NULL,
  `sq_ft` varchar(50) NOT NULL,
  `home_type` varchar(200) NOT NULL,
  `year_built` varchar(200) NOT NULL,
  `price_sqft` varchar(50) NOT NULL,
  `more_info` text NOT NULL,
  `location` varchar(200) NOT NULL,
  `agent_name` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `props`
--

INSERT INTO `props` (`id`, `title`, `price`, `image`, `beds`, `baths`, `sq_ft`, `home_type`, `year_built`, `price_sqft`, `more_info`, `location`, `agent_name`, `type`, `city`, `created_at`, `updated_at`) VALUES
(5, '625 S. BERENDO ST', '1,000,500', 'hero_bg_1.jpg', '2', '3', '7,000', 'Condo', '2020', '520', 'Monotonectally revolutionize open-source core competencies and market-driven resources. Dramatically myocardinate client-centered human capital and highly efficient total linkage. Efficiently re-engineer just in time markets and user friendly \r\n\r\nMonotonectally revolutionize open-source core competencies and market-driven resources. Dramatically myocardinate client-centered human capital and highly efficient total linkage. Efficiently re-engineer just in time markets and user friendly', ' 1 New York Ave, Warners Bay, NSW 2282\n', 'Mohamed Hassan', 'Buy', 'New York', '2023-07-06 08:36:14', '2023-07-06 08:36:14'),
(6, '871 Crenshaw Blvd', '2,265,500', 'hero_bg_2.jpg', '2', '3', '1,620', 'Condo', '2021', '400', 'Professionally formulate leveraged vortals without alternative expertise. Enthusiastically deploy interdependent results whereas front-end web services. Intrinsicly fabricate intermandated source\r\n\r\nProfessionally formulate leveraged vortals without alternative expertise. Enthusiastically deploy interdependent results whereas front-end web services. Intrinsicly fabricate intermandated source', ' 625 S. Berendo St Unit 607 Los Angeles, CA 90005\n', 'Mohamed Hassan', 'Rent', 'Los Angeles', '2023-07-06 09:50:06', '2023-07-06 09:50:06'),
(7, '853 S Lucerne Blvd', '2,265,500', 'hero_bg_4.jpg', '3', '3', '5,500', 'Commercial', '2019', '500', 'Dramatically emDramatically empower inexpensive human capital before excellent services. Objectively leverage existing interactive e-services with optimal Dramatically empower inexpensive human capital before excellent services. Objectively leverage existing interactive e-services with optimal power inexpensive human capital before excellent services. Objectively leverage existing interactive e-services with optimal', 'Los Angeles', 'Mohamed', 'Rent', 'Los Angeles', '2023-07-06 09:57:57', '2023-07-06 09:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `prop_image`
--

CREATE TABLE `prop_image` (
  `id` int(11) NOT NULL,
  `prop_id` int(10) NOT NULL,
  `image` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prop_image`
--

INSERT INTO `prop_image` (`id`, `prop_id`, `image`, `created_at`, `updated_at`) VALUES
(26, 5, '168864343644.jpg', '2023-07-06 08:37:16', '2023-07-06 08:37:16'),
(27, 5, '16886434368.jpg', '2023-07-06 08:37:16', '2023-07-06 08:37:16'),
(28, 5, '16886434372.jpg', '2023-07-06 08:37:17', '2023-07-06 08:37:17'),
(29, 6, '16886478631.jpg', '2023-07-06 09:51:03', '2023-07-06 09:51:03'),
(30, 6, '168864786335.jpg', '2023-07-06 09:51:03', '2023-07-06 09:51:03'),
(31, 6, '168864786348.jpg', '2023-07-06 09:51:03', '2023-07-06 09:51:03'),
(32, 7, '168864829129.jpg', '2023-07-06 09:58:11', '2023-07-06 09:58:11'),
(33, 7, '16886482913.jpg', '2023-07-06 09:58:11', '2023-07-06 09:58:11'),
(34, 7, '168864829248.jpg', '2023-07-06 09:58:12', '2023-07-06 09:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) NOT NULL,
  `prop_id` int(10) NOT NULL,
  `agent_name` varchar(200) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(70) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `prop_id`, `agent_name`, `user_id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 2, 'Mohamed Hassan', 1, 'John', 'john@gmail.com', '22222222', '2023-07-02 11:41:20', '2023-07-02 11:41:20'),
(3, 1, 'Mohamed Hassan', 1, 'Hassan', 'hassan@gmail.com', '0192923432', '2023-07-03 05:27:05', '2023-07-03 05:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `savedprops`
--

CREATE TABLE `savedprops` (
  `id` int(10) NOT NULL,
  `prop_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `savedprops`
--

INSERT INTO `savedprops` (`id`, `prop_id`, `user_id`, `title`, `image`, `location`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '625 S. BERENDO ST', 'hero_bg_2.jpg', '625 S. BERENDO ST, New York, New York', '1,000,500', '2023-07-03 06:23:54', '2023-07-03 06:23:54'),
(2, 2, 1, '871 Crenshaw Blvd', 'hero_bg_3.jpg', '1 New York Ave, Warners Bay, NSW 2282', '2,265,500', '2023-07-03 06:24:25', '2023-07-03 06:24:25'),
(4, 6, 1, '871 Crenshaw Blvd', 'hero_bg_2.jpg', '625 S. Berendo St Unit 607 Los Angeles, CA 90005', '2,265,500', '2023-07-06 10:23:59', '2023-07-06 10:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed', 'moha@gmail.com', NULL, '$2y$10$Ap17CIUiPZte.jONzFThLOtH08gvpDBuhZIdlumQXmIRQDSJ/kMxG', NULL, '2023-06-30 07:16:04', '2023-06-30 07:16:04'),
(2, 'user1', 'user1@gmial.com', NULL, '$2y$10$x5aSgPJn91F7MOgv0kfyke5/cmIfC1xMtdrDYFPCOtr2WPe0WKsCS', NULL, '2023-06-30 09:28:14', '2023-06-30 09:28:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hometypes`
--
ALTER TABLE `hometypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `props`
--
ALTER TABLE `props`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prop_image`
--
ALTER TABLE `prop_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savedprops`
--
ALTER TABLE `savedprops`
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hometypes`
--
ALTER TABLE `hometypes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `props`
--
ALTER TABLE `props`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `prop_image`
--
ALTER TABLE `prop_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `savedprops`
--
ALTER TABLE `savedprops`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
