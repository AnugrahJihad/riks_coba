-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2024 at 11:37 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `risk_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_10_create_risk_registers_table', 1),
(6, '2024_12_13_012123_add_role_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `risk_registers`
--

CREATE TABLE `risk_registers` (
  `id` bigint UNSIGNED NOT NULL,
  `objective` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `process_event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `risk_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `risk_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `risk_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `risk_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `qualitative` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `risk_owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_dept` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `likelihood` int NOT NULL,
  `impact` int NOT NULL,
  `risk_level` int NOT NULL,
  `existing_control` enum('Ada','Tidak Ada') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `control_effectiveness` enum('Memadai','Belum memadai') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `control_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `residual_likelihood` int NOT NULL,
  `residual_impact` int NOT NULL,
  `residual_risk_level` int NOT NULL,
  `risk_treatment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mitigation_plan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_likelihood` int NOT NULL,
  `target_impact` int NOT NULL,
  `target_risk_level` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `risk_registers`
--

INSERT INTO `risk_registers` (`id`, `objective`, `process_event`, `risk_category`, `risk_code`, `risk_description`, `risk_source`, `amount`, `qualitative`, `risk_owner`, `name_dept`, `likelihood`, `impact`, `risk_level`, `existing_control`, `control_effectiveness`, `control_description`, `residual_likelihood`, `residual_impact`, `residual_risk_level`, `risk_treatment`, `mitigation_plan`, `target_likelihood`, `target_impact`, `target_risk_level`, `created_at`, `updated_at`) VALUES
(1, 'melindungi keselamatan pegawai', 'kekerasan dari auditi yang berkasus', 'Operational', 'R2', 'Sosialisasi program audit kepada pimpinan universitas/ bagian/ unit/ lembaga', 'eksternal', '2.00', 'Auditor menjadi korban kekerasan', 'Kepala SPI', 'Biro AUK', 1, 1, 6, 'Ada', 'Memadai', 'dijalankan 100%', 1, 2, 2, 'acept', 'Sosialisasi program audit kepada pimpinan universitas/ bagian/ unit/ lembaga', 1, 1, 1, '2024-12-17 08:51:04', '2024-12-18 08:00:32'),
(3, 'melindungi keselamatan pegawai jka aal naaka', 'kekerasan dari auditi yang berkasus', 'Strategic', 'R2', 'wwww', 'eksternal', '3.00', 'Auditor menjadi korban kekerasan', 'Kepala SPI', 'Biro AUK', 5, 3, 12, 'Ada', 'Memadai', 'ffff', 3, 5, 15, '2', 'rrrr', 1, 1, 1, '2024-12-18 06:50:13', '2024-12-18 08:23:49'),
(4, 'menghemat biaya pengeluaran', 'banyak kebutuhan ', 'Strategic', 'R2', 'hahhhah', 'eksternal', '3.00', 'Auditor menjadi korban kekerasan', 'Kepala SPI', 'Biro AUK', 5, 5, 8, 'Ada', 'Belum memadai', 'fghj', 3, 2, 6, 'jjjjj', 'fffg', 1, 1, 1, '2024-12-18 03:49:38', '2024-12-18 05:23:46'),
(5, 'melindungi fasilitas yang ada', 'terkena bencana', 'Financial', 'R3', 'kerugian besar', 'eksternal', '1.00', 'fasilitas rusak parah', 'Kepala SPI', 'Biro AUK', 4, 3, 12, 'Tidak Ada', 'Belum memadai', 'menyiapkan tempat yang aman', 3, 3, 9, '2', 'ga tau', 1, 1, 1, '2024-12-18 08:05:14', '2024-12-18 08:05:14'),
(6, 'menigkatkan fasilitas', 'Target tidak terpenuhi', 'Financial', 'R2', 'banyak mengeluarkan dana', 'internal', '2.00', 'kerugian', 'Kepala SPI', 'Biro AUK', 2, 3, 6, 'Ada', 'Memadai', 'ga tau', 2, 2, 4, 'acept', 'ga tau', 1, 1, 1, '2024-12-18 08:36:22', '2024-12-18 08:36:22'),
(7, 'melindungi keselamatan pegawai jka aal naaka', 'kekerasan dari auditi yang berkasus', 'Strategic', 'R4', 'blablabla', 'internal', '1.00', 'Auditor menjadi korban kekerasan', 'Kepala SPI', 'Biro AUK', 2, 5, 10, 'Ada', 'Memadai', 'g', 2, 2, 4, 'acept', 'g', 1, 1, 1, '2024-12-18 19:16:30', '2024-12-18 19:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', NULL, '$2y$12$fy0aknxZEnCc0WD8MbmgsOCQdc2RCj7izwqtyGnC.J7cd92EcLk3G', 'admin', NULL, '2024-12-17 07:55:51', '2024-12-17 07:55:51'),
(2, 'Idhan', 'dhanhaidar@gmail.com', NULL, '$2y$12$yA0P6t3i9bDP.yMrP.hfkuv.0556vhtOCFan5.uGafZ.48xiatT5.', 'user', NULL, '2024-12-17 08:00:50', '2024-12-17 08:00:50'),
(3, 'jihad', 'jihad@jihad.com', NULL, '$2y$12$swiiXdhjP7sWJS7O1fSqdeapPaiMxhcplBsIH5BGGl3mDT1zruvde', 'user', NULL, '2024-12-19 00:06:40', '2024-12-19 00:06:40');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `risk_registers`
--
ALTER TABLE `risk_registers`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `risk_registers`
--
ALTER TABLE `risk_registers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
