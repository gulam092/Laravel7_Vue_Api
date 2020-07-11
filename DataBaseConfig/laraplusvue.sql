-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2020 at 09:46 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraplusvue`
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_09_170400_create_products_table', 2),
(5, '2020_07_10_092958_create_sclasses_table', 3),
(6, '2020_07_10_142254_create_subject_table', 4),
(7, '2020_07_10_143838_create_subjects_table', 5),
(8, '2020_07_10_180637_create_sections_table', 6),
(9, '2020_07_10_190902_create_students_table', 7);

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
-- Table structure for table `ptoducts`
--

CREATE TABLE `ptoducts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ptoducts`
--

INSERT INTO `ptoducts` (`id`, `product_name`, `product_code`, `details`, `logo`, `created_at`, `updated_at`) VALUES
(9, 'eWEq', 'qWEQW', 'QWEQW', 'public/media/100720_06_50_32.jpeg', NULL, NULL),
(10, 'shop1', '123', 'Pass the Technical Interview with JavaScript', 'public/media/100720_06_33_46.jpeg', NULL, NULL),
(11, 'TEST3', '12', 'Once you have a strong foundation in JavaScript, the next step is going pro. In this Skill Path, we’ll teach you the advanced coding skills you need to land a job — along with tips and tricks that will help you nail the technical interview.\r\n\r\nTo start this Sk', 'public/media/100720_06_49_46.jpeg', NULL, NULL),
(12, 'TEST5', '122', 'You really feel like there\'s nothing you can\'t learn, which in turn builds so much confidence in your skills and gives the momentum to keep learning.\r\nYou really feel like there\'s nothing you can\'t learn, which in turn builds so much confidence in your skills and gives the momentum to keep learning.You really feel like there\'s nothing you can\'t learn, which in turn builds so much confidence in your skills and gives the momentum to keep learning.\r\nYou really feel like there\'s nothing you can\'t learn, which in turn builds so much confidence in your skills and gives the momentum to keep learning.\r\nYou really feel like there\'s nothing you can\'t learn, which in turn builds so much confidence in your skills and gives the momentum to keep learning.\r\nYou really feel like there\'s nothing you can\'t learn, which in turn builds so much confidence in your skills and gives the momentum to keep learning.\r\nYou really feel like there\'s nothing you can\'t learn, which in turn builds so much confidence in your skills and gives the momentum to keep learning.You really feel like there\'s nothing you can\'t learn, which in turn builds so much confidence in your skills and gives the momentum to keep learning.', 'public/media/100720_06_34_52.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sclasses`
--

CREATE TABLE `sclasses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sclasses`
--

INSERT INTO `sclasses` (`id`, `class_name`, `created_at`, `updated_at`) VALUES
(1, 'Won', NULL, NULL),
(2, 'Two', NULL, NULL),
(3, 'three', NULL, NULL),
(4, 'Four', NULL, NULL),
(7, 'hh', NULL, NULL),
(8, 'hhy', NULL, NULL),
(9, 'hhyy', NULL, NULL),
(10, 'gulam', NULL, NULL),
(11, 'null', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `class_id`, `section_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Maths', '2020-07-10 13:29:10', '2020-07-10 13:29:10'),
(2, 2, 'Bio', '2020-07-10 13:29:37', '2020-07-10 13:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `class_id`, `section_id`, `name`, `phone`, `email`, `password`, `photo`, `address`, `gender`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'gulam', '12345678', 'gulam@gmail.com', '$2y$10$WGiBqdtCfgRDRujk2/cz7.tcajfmpshqdv4x.jQD96IQGExMi52km', 'backend/student/5.JPG', 'USA', 'male', NULL, NULL),
(3, 1, 1, 'gulam', '12345678', 'gulam@gmail.com', '$2y$10$yXj1QCQ2ggCuskq10waj3.5JQ.n16GRNYlhZlNTS9Zq5G54ttnYra', 'backend/student/5.JPG', 'USA', 'male', NULL, NULL),
(4, 1, 1, 'gulam', '12345678', 'gulam@gmail.com', '$2y$10$Uyin5D6lNP5MfMPBTukvPeH30xWQCBQsl0qh/wQZcxLMqZQWyu0b2', 'backend/student/5.JPG', 'USA', 'male', NULL, NULL),
(6, 1, 1, 'gulam', '12345678', 'gulam@gmail.com', '$2y$10$M1/tgX6uh55anWgYRUhOzeJUTfl.CjLRZPcawfze89fDKawc.rwdq', 'backend/student/5.JPG', 'USA', 'male', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `class_id`, `subject_name`, `subject_code`, `created_at`, `updated_at`) VALUES
(3, 78, 'Hindi', '201', '2020-07-10 09:12:46', '2020-07-10 12:30:08'),
(4, 4, 'Maths', '105', '2020-07-10 09:12:57', '2020-07-10 09:12:57');

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
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$Mu9aD3AO8aM7u0qX1/E8..9sh9xARRv9qwCLPhevCcAYJmbfoDqKO', NULL, '2020-07-09 11:05:47', '2020-07-09 11:05:47'),
(4, 'ALi', 'gulam1@gmail.com', NULL, '$2y$10$6pc8nn0752BgcwGdMfX2IuVnve0h6GA7L8SZo7uKOYZIXEqV0rz6y', NULL, NULL, NULL),
(5, 'Gulam', 'gulam@gmail.com', NULL, '$2y$10$HNKo8qzB.rQRm6eo0vOq3eouJxMDYtkY46DLtJQyU4RzREFSXwAZG', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `ptoducts`
--
ALTER TABLE `ptoducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sclasses`
--
ALTER TABLE `sclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ptoducts`
--
ALTER TABLE `ptoducts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sclasses`
--
ALTER TABLE `sclasses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
