-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2020 at 12:50 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mmsh_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE `management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_of_management` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
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
(36, '2019_08_19_000000_create_failed_jobs_table', 1),
(37, '2020_07_16_170353_create_sharing_table', 1),
(38, '2020_07_16_173226_create_vote_table', 1),
(39, '2020_07_17_223337_create_management_table', 1),
(40, '2020_07_17_224430_create_type_of_sharing_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sharing`
--

CREATE TABLE `sharing` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prof_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_share` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sharing_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` blob DEFAULT NULL,
  `video` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speak` varchar(220) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sharing`
--

INSERT INTO `sharing` (`id`, `name`, `Prof_name`, `nationality`, `edu_area`, `edu_level`, `school`, `class`, `mobile`, `email`, `edu_share`, `sharing_type`, `photo`, `video`, `file`, `line`, `speak`, `created_at`, `updated_at`) VALUES
(26, 'sdfsdf', 'dsfsdf', 'asdasd', 'إدارة التعليم بمحافظة الأفلاج', 'اعدادي', 'asd', 'asd', 9000, 'mms4548h7398@gmail.com', '456456', '8', NULL, NULL, '1595592182.pdf', NULL, NULL, NULL, NULL),
(28, 'mohammed hassan', 'asdasd', 'asdasd', '20', 'ابتدائي', 'sdfsdf', 'asdasd', 9000, 'mamsh7398@gmail.com', '6', '6', NULL, '1595619907.mkv', NULL, NULL, NULL, NULL, NULL),
(29, 'sdfsdf', 'asdasd', 'sdfsdf', '17', 'ابتدائي', 'sdfsdf', 'asdasd', 87687, 'haskal12345@gmail.com', '7', '11', NULL, NULL, NULL, 'ئءسيسيشسي', NULL, NULL, NULL),
(30, 'sdfsdf', 'asdasd', 'asdasd', '17', 'اعدادي', 'asd', 'sdfsdf', 9000, 'haaaskal12345@gmail.com', '6', '8', NULL, NULL, '1595623816.pdf', NULL, NULL, NULL, NULL),
(31, 'sdfsdf', 'dsfsdf', 'asdasd', '18', 'ابتدائي', 'asd', 'sdfsd', 9000, 'haskaaal12345@gmail.com', '5', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'mohammed hassan', 'dsfsdf', 'asdasd', '20', 'ابتدائي', 'sdfsdf', 'sdfsdf', 9000, 'mmaash7398@gmail.com', '1212', '11', NULL, NULL, NULL, NULL, 'asdasd', NULL, NULL),
(33, 'mohammed hassan', 'asdasd', 'asdasd', '19', 'اعدادي', 'sdfsdf', 'asdasd', 9000, 'mmshmmm7398@gmail.com', '45', '10', NULL, NULL, NULL, 'sdfsdf', NULL, NULL, NULL),
(34, 'mohammed hassan', 'dsfsdf', 'asdasd', '18', 'ثانوي', 'sdfsdf', 'sdfsdf', 9000, 'mvcvcvmsh7398@gmail.com', '456456', '2', 0x313539353737373532342e6a7067, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'sdfsdf', 'asdasd', 'asdasd', '17', 'ابتدائي', 'sdfsdf', 'asdasd', 558485, 'mccbbmsh7398@gmail.com', '85', '6', NULL, '1595778321.mkv', NULL, NULL, NULL, NULL, NULL),
(36, 'ahmed hassan', 'dsfsdf', 'sdfsdf', '17', 'اعدادي', 'sdfsdf', 'sdfsdf', 9000, 'mmvvvsh7398@gmail.com', '1212', '6', NULL, '1595782471.mkv', NULL, NULL, NULL, NULL, NULL),
(37, 'mohammed hassan', 'sdf', 'asdasd', '18', 'اعدادي', 'asd', 'asdasd', 9000, 'mmbbbsh7398@gmail.com', '85', '6', NULL, '1595782522.mkv', NULL, NULL, NULL, NULL, NULL),
(38, 'said hassn', 'dsfsdf', 'asdasd', '18', 'اعدادي', 'sdfsdf', 'asdasd', 9000, 'hannmskal12345@gmail.com', '75755', '2', 0x313539353738323737342e6a7067, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'mohammed', 'asdasd', 'sdfsdf', '21', 'ابتدائي', 'sdfsdf', 'sdfsdf', 9000, 'mbbbmsh7398@gmail.com', '456456', '2', 0x313539353738323933322e6a7067, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'sdfsdf', 'dsfsdf', 'asdasd', '17', 'اعدادي', 'sdfsdf', 'asdasd', 9000, 'mmmmmsh7398@gmail.com', '85', '2', 0x313539353834323337352e6a7067, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sharing_id` int(11) NOT NULL,
  `avg_percent` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`id`, `name`, `email`, `sharing_id`, `avg_percent`, `created_at`, `updated_at`) VALUES
(1, 'mohammed hassan', 'mmsh7398@gmail.com', 28, 4, NULL, NULL),
(3, 'mohammed hassan', 'hsnm7398@students.iugaza.edu.ps', 26, 3, NULL, NULL),
(5, 'mohammed hassan', 'hsssnm7398@students.iugaza.edu.ps', 26, 3, NULL, NULL),
(7, 'mohammed hassan', 'mmsh731198@gmail.com', 26, 3, NULL, NULL),
(8, 'mohammed', 'mohamccmed.hassan99@outlook.sa', 26, 3, NULL, NULL),
(9, 'mohammed', 'hasvvkal12345@gmail.com', 26, 4, NULL, NULL),
(11, 'mohammed hassan', 'mms33h7398@gmail.com', 28, 4, NULL, NULL),
(12, 'mohammed hassan', 'mocchammed.hassan99@outlook.sa', 28, 2, NULL, NULL),
(14, 'mohammed hassan', 'hsnm755398@students.iugaza.edu.ps', 28, 5, NULL, NULL),
(16, 'mohammed hassan', 'mmsaah7398@gmail.com', 2, 2, NULL, NULL),
(17, 'mohammed hassan', 'hasaaaaaakal12345@gmail.com', 4, 4, NULL, NULL),
(18, 'sdfsdf', 'mmsbbbbh7398@gmail.com', 39, 1, NULL, NULL),
(19, 'mohammed hassan', 'mmsvvh7398@gmail.com', 39, 3, NULL, NULL),
(20, 'sdfsdf', 'mbbbmsh7398@gmail.com', 40, 3, NULL, NULL),
(21, 'mohammed hassan', 'mm..sh7398@gmail.com', 40, 2, NULL, NULL),
(22, 'mohammed hassan', 'mm000000sh7398@gmail.com', 40, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `_type_of_sharing`
--

CREATE TABLE `_type_of_sharing` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_of_sharing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management`
--
ALTER TABLE `management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sharing`
--
ALTER TABLE `sharing`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sharing_email_unique` (`email`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vote_email_unique` (`email`);

--
-- Indexes for table `_type_of_sharing`
--
ALTER TABLE `_type_of_sharing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management`
--
ALTER TABLE `management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `sharing`
--
ALTER TABLE `sharing`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `vote`
--
ALTER TABLE `vote`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `_type_of_sharing`
--
ALTER TABLE `_type_of_sharing`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
