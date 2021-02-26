-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 26, 2021 at 06:59 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `platform`
--

-- --------------------------------------------------------

--
-- Table structure for table `cruds`
--

CREATE TABLE `cruds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cruds`
--

INSERT INTO `cruds` (`id`, `name`, `tablename`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'tests', '2021-02-26 00:43:10', '2021-02-26 00:43:10'),
(2, 'TestsObject', 'testsobjects', '2021-02-26 00:44:25', '2021-02-26 00:44:25');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(4, '2021_02_22_225050_create_tests_objects_table', 1),
(5, '2021_02_22_225151_create_tests_table', 1),
(6, '2021_02_22_230605_create_tests_questions_table', 1),
(7, '2021_02_22_230615_create_tests_answers_table', 1),
(8, '2021_02_22_231034_create_tests_useranswers_table', 1),
(9, '2021_02_26_025155_create_cruds_table', 1);

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
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `objectID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `description`, `objectID`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', 1, '2021-02-26 00:48:32', '2021-02-26 00:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `tests_answers`
--

CREATE TABLE `tests_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `questionID` bigint(20) UNSIGNED NOT NULL,
  `testID` bigint(20) UNSIGNED NOT NULL,
  `correct` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests_answers`
--

INSERT INTO `tests_answers` (`id`, `name`, `questionID`, `testID`, `correct`, `created_at`, `updated_at`) VALUES
(1, 'test1', 1, 1, 1, '2021-02-26 00:48:32', '2021-02-26 00:48:32'),
(2, 'test', 1, 1, 0, '2021-02-26 00:48:32', '2021-02-26 00:48:32'),
(3, 'test', 1, 1, 0, '2021-02-26 00:48:32', '2021-02-26 00:48:32'),
(4, 'test', 1, 1, 0, '2021-02-26 00:48:32', '2021-02-26 00:48:32'),
(5, 'test1', 2, 1, 1, '2021-02-26 00:48:32', '2021-02-26 00:48:32'),
(6, 'test', 2, 1, 0, '2021-02-26 00:48:32', '2021-02-26 00:48:32'),
(7, 'test', 2, 1, 0, '2021-02-26 00:48:32', '2021-02-26 00:48:32'),
(8, 'test', 2, 1, 0, '2021-02-26 00:48:32', '2021-02-26 00:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `tests_objects`
--

CREATE TABLE `tests_objects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kurs` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests_objects`
--

INSERT INTO `tests_objects` (`id`, `name`, `kurs`, `created_at`, `updated_at`) VALUES
(1, 'test', 1, '2021-02-26 03:44:38', '2021-02-26 03:44:40'),
(2, 'test2', 2, '2021-02-26 00:53:30', '2021-02-26 00:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `tests_questions`
--

CREATE TABLE `tests_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests_questions`
--

INSERT INTO `tests_questions` (`id`, `name`, `testID`, `created_at`, `updated_at`) VALUES
(1, 'test', 1, '2021-02-26 00:48:32', '2021-02-26 00:48:32'),
(2, 'test', 1, '2021-02-26 00:48:32', '2021-02-26 00:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `tests_useranswers`
--

CREATE TABLE `tests_useranswers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `answerID` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `testID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests_useranswers`
--

INSERT INTO `tests_useranswers` (`id`, `answerID`, `userID`, `testID`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2021-02-26 00:49:44', '2021-02-26 00:49:44'),
(2, 8, 2, 1, '2021-02-26 00:49:44', '2021-02-26 00:49:44');

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
  `role` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Пользователь', 'test@platform.com', NULL, '$2y$10$3YGGqstyGhvYIHph8KxTiu5.rCcwOI8/2..G74tFrNalIAJsOcj/i', 'user', NULL, '2021-02-26 00:09:19', '2021-02-26 00:09:19'),
(3, 'Админ', 'admin@pratform.com', NULL, '$2y$10$V3.ZhB6nyKzouuau4K1vMORfoY8kexD1a3eRCaKktqbcQ7n98BX4O', 'admin', NULL, '2021-02-26 00:10:06', '2021-02-26 00:10:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cruds`
--
ALTER TABLE `cruds`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_objectid_foreign` (`objectID`);

--
-- Indexes for table `tests_answers`
--
ALTER TABLE `tests_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_answers_questionid_foreign` (`questionID`),
  ADD KEY `tests_answers_testid_foreign` (`testID`);

--
-- Indexes for table `tests_objects`
--
ALTER TABLE `tests_objects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests_questions`
--
ALTER TABLE `tests_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_questions_testid_foreign` (`testID`);

--
-- Indexes for table `tests_useranswers`
--
ALTER TABLE `tests_useranswers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_useranswers_answerid_foreign` (`answerID`),
  ADD KEY `tests_useranswers_userid_foreign` (`userID`),
  ADD KEY `tests_useranswers_testid_foreign` (`testID`);

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
-- AUTO_INCREMENT for table `cruds`
--
ALTER TABLE `cruds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tests_answers`
--
ALTER TABLE `tests_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tests_objects`
--
ALTER TABLE `tests_objects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tests_questions`
--
ALTER TABLE `tests_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tests_useranswers`
--
ALTER TABLE `tests_useranswers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_objectid_foreign` FOREIGN KEY (`objectID`) REFERENCES `tests_objects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tests_answers`
--
ALTER TABLE `tests_answers`
  ADD CONSTRAINT `tests_answers_questionid_foreign` FOREIGN KEY (`questionID`) REFERENCES `tests_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tests_answers_testid_foreign` FOREIGN KEY (`testID`) REFERENCES `tests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tests_questions`
--
ALTER TABLE `tests_questions`
  ADD CONSTRAINT `tests_questions_testid_foreign` FOREIGN KEY (`testID`) REFERENCES `tests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tests_useranswers`
--
ALTER TABLE `tests_useranswers`
  ADD CONSTRAINT `tests_useranswers_answerid_foreign` FOREIGN KEY (`answerID`) REFERENCES `tests_answers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tests_useranswers_testid_foreign` FOREIGN KEY (`testID`) REFERENCES `tests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tests_useranswers_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
