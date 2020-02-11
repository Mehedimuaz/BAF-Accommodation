-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2019 at 11:19 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airforce`
--

-- --------------------------------------------------------

--
-- Table structure for table `a_o_cs`
--

CREATE TABLE `a_o_cs` (
  `id` int(10) UNSIGNED NOT NULL,
  `bdNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `athNo` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a_o_cs`
--

INSERT INTO `a_o_cs` (`id`, `bdNo`, `athNo`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, '1234', 4321, 'Mr AOC', 'test@test.com', '$2y$10$0Vljk/m/9h1JqEom4.YMwuS4BbI1COEcQuK6ijBsXQ59Pn8gv3c2G', '2018-09-02 11:13:17', '2018-09-02 11:13:17');

--
-- Triggers `a_o_cs`
--
DELIMITER $$
CREATE TRIGGER `aoc_into_user` AFTER INSERT ON `a_o_cs` FOR EACH ROW BEGIN
                   INSERT INTO users (bdNo, name, password, role, created_at, updated_at) VALUES (NEW.bdNo , NEW.name , NEW.password , "AOC" ,  now(), null);
                END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_30_140826_create_regular_users_table', 1),
(4, '2018_08_31_052749_create_system_admins_table', 1),
(5, '2018_08_31_052811_create_system_users_table', 1),
(6, '2018_08_31_052826_create_a_o_cs_table', 1),
(7, '2018_08_31_052922_create_o_cs_table', 1),
(8, '2018_08_31_052938_create_profiles_table', 1),
(9, '2018_08_31_134730_create_trigger', 1),
(10, '2018_08_31_204153_create_quaters_table', 1),
(11, '2018_09_01_032010_create_offers_table', 1),
(12, '2018_09_20_004355_create_toffer_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `bdNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rejected` date DEFAULT NULL,
  `quater_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `o_cs`
--

CREATE TABLE `o_cs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bdNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `o_cs`
--

INSERT INTO `o_cs` (`id`, `name`, `bdNo`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Mr OC', '2345', 'test1@test.com', '$2y$10$4T9PgxzXYvqo.dysBh2p1OxoO8TlrHBl/yhlodjHDCDkpDXYt60Na', '2018-09-02 11:13:17', '2018-09-02 11:13:17');

--
-- Triggers `o_cs`
--
DELIMITER $$
CREATE TRIGGER `oc_into_user` AFTER INSERT ON `o_cs` FOR EACH ROW BEGIN
                   INSERT INTO users (bdNo, name, password, role, created_at, updated_at) VALUES (NEW.bdNo , NEW.name , NEW.password , "OC" ,  now(), null);
                END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `bdNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gradationSerial` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfCommission` date NOT NULL,
  `posted` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `children` int(11) NOT NULL,
  `point` int(11) DEFAULT NULL,
  `eligibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currentQuaterType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currentQuaterDate` date DEFAULT NULL,
  `quater_id` int(11) DEFAULT NULL,
  `rejected` int(11) DEFAULT NULL,
  `rejectionDate` date DEFAULT NULL,
  `offer1` date DEFAULT NULL,
  `offer2` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `bdNo`, `rank`, `gradationSerial`, `name`, `dateOfCommission`, `posted`, `children`, `point`, `eligibility`, `currentQuaterType`, `currentQuaterDate`, `quater_id`, `rejected`, `rejectionDate`, `offer1`, `offer2`, `created_at`, `updated_at`) VALUES
(4, '8982', 'Wing commander', 789, 'Shadia Islam', '1987-05-12', 'Dhaka', 1, 0, 'C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-02 08:36:50', '2018-12-02 08:36:50'),
(5, '9875', 'Air vice marshal', 852, 'Faruk Hossain', '1989-08-12', 'Dhaka', 2, 0, 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-02 08:38:28', '2018-12-02 08:38:28'),
(6, '8750', 'Air commodore', 123, 'Md.Mashruk Aulia', '1991-12-05', 'Dhaka', 2, 0, 'B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-02 08:40:03', '2018-12-02 08:40:03'),
(7, '9852', 'Wing commander', 789, 'Shakila Easmin', '1992-12-06', 'Dhaka', 1, 21, 'C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-02 08:41:25', '2018-12-02 08:41:25'),
(8, '9561', 'Flight lieutenant', 8952, 'Anika Yazdani', '2015-12-02', 'Dhaka', 0, 0, 'D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-02 08:42:45', '2018-12-02 08:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `quaters`
--

CREATE TABLE `quaters` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buildingNo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flatNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfVacancy` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quaters`
--

INSERT INTO `quaters` (`id`, `address`, `buildingNo`, `flatNo`, `status`, `type`, `dateOfVacancy`, `created_at`, `updated_at`) VALUES
(7, 'Shishmohol', '248/Gha', 'E-110,V-270', 'under process', 'B', '2018-10-30', '2018-10-29 11:21:15', '2018-12-02 09:17:56'),
(8, 'Nil-oboni', '789', 'kha', 'under process', 'B', '2018-07-12', '2018-12-02 08:44:52', '2018-12-02 09:17:56'),
(9, 'Falcon', '230', 'Gha', 'under process', 'C', '2018-11-12', '2018-12-02 08:55:52', '2018-12-02 09:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `regular_users`
--

CREATE TABLE `regular_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `bdNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regular_users`
--

INSERT INTO `regular_users` (`id`, `bdNo`, `rank`, `name`, `password`, `created_at`, `updated_at`) VALUES
(9, '8982', 'Wing commander', 'Shadia Islam', '$2y$10$KWtUyW0uzBZ54PUTLsY/RedGgO3.F0F0SQoz2aQkhXoOPyhMoVf.i', '2018-12-02 08:36:50', '2018-12-02 08:36:50'),
(10, '9875', 'Air vice marshal', 'Faruk Hossain', '$2y$10$S1JHyGeuI2SGWX0gDG7/z.C138oJeY4rkSuwT9Y.V3NYHOU8/Z5Fu', '2018-12-02 08:38:28', '2018-12-02 08:38:28'),
(11, '8750', 'Air commodore', 'Md.Mashruk Aulia', '$2y$10$Ic7KPcCHgvPif6JyevcfGOaPjB0/qoAove8T2MGkhGFi6yBJWziW.', '2018-12-02 08:40:03', '2018-12-02 08:40:03'),
(12, '9852', 'Wing commander', 'Shakila Easmin', '$2y$10$woS0IGcGAT1Yka0ukQ3v1eiCFccaOcGnvAeolwpQMhYu8X4aZ9os6', '2018-12-02 08:41:25', '2018-12-02 08:41:25'),
(13, '9561', 'Flight lieutenant', 'Anika Yazdani', '$2y$10$ChIa2LKH.0nXGvIu8BJi3u.HBrrFbrrngMeE0rQ17yAQN733hJw0q', '2018-12-02 08:42:45', '2018-12-02 08:42:45');

--
-- Triggers `regular_users`
--
DELIMITER $$
CREATE TRIGGER `regular_user_into_user` AFTER INSERT ON `regular_users` FOR EACH ROW BEGIN
                   INSERT INTO users (bdNo, name, password, role, created_at, updated_at) VALUES (NEW.bdNo , NEW.name , NEW.password , "RegularUser" ,  now(), null);
                END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `system_admins`
--

CREATE TABLE `system_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `bdNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_admins`
--

INSERT INTO `system_admins` (`id`, `bdNo`, `rank`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, '3456', 'Commander', 'Mr SA', 'test2@test.com', '$2y$10$VtdhnXJ37itjC/ggqNCP4u7nZYeCstSZLty3D7mHRwwIPTbarhnda', '2018-09-02 11:13:17', '2018-09-02 11:13:17');

--
-- Triggers `system_admins`
--
DELIMITER $$
CREATE TRIGGER `system_admin_into_user` AFTER INSERT ON `system_admins` FOR EACH ROW BEGIN
                   INSERT INTO users (bdNo, name, password, role, created_at, updated_at) VALUES (NEW.bdNo , NEW.name , NEW.password , "SystemAdmin" ,  now(), null);
                END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE `system_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `bdNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`id`, `bdNo`, `rank`, `name`, `password`, `created_at`, `updated_at`) VALUES
(1, '4567', 'Commander', 'Mr SU', '$2y$10$X9DJERB9SokCcFZctz47XenAvY6fzxryx8jbCKUCqZ8w7Nr8W2b16', '2018-09-02 11:13:18', '2018-09-02 11:13:18');

--
-- Triggers `system_users`
--
DELIMITER $$
CREATE TRIGGER `system_user_into_user` AFTER INSERT ON `system_users` FOR EACH ROW BEGIN
                   INSERT INTO users (bdNo, name, password, role, created_at, updated_at) VALUES (NEW.bdNo , NEW.name , NEW.password , "SystemUser" ,  now(), null);
                END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `toffers`
--

CREATE TABLE `toffers` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(11) NOT NULL,
  `bdNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quater_id` int(11) NOT NULL,
  `choice` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toffers`
--

INSERT INTO `toffers` (`id`, `group_id`, `bdNo`, `quater_id`, `choice`, `created_at`, `updated_at`) VALUES
(19, 1, '9875', 7, 1, '2018-12-02 09:17:56', '2018-12-02 09:50:29'),
(20, 1, '8750', 7, 1, '2018-12-02 09:17:56', '2018-12-02 09:53:17'),
(21, 1, '9875', 8, 2, '2018-12-02 09:17:56', '2018-12-02 09:50:29'),
(22, 1, '8750', 8, 2, '2018-12-02 09:17:56', '2018-12-02 09:53:17'),
(23, 1, '8982', 9, 1, '2018-12-02 09:17:56', '2018-12-02 09:57:18'),
(24, 1, '8750', 9, 3, '2018-12-02 09:17:56', '2018-12-02 09:53:17'),
(25, 1, '9852', 9, NULL, '2018-12-02 09:17:56', '2018-12-02 09:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `bdNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`bdNo`, `name`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
('1234', 'Mr AOC', '$2y$10$l.Ybp/MpeeXR7z/aFipnRuvvLBbOBGWJW3jQGT4X6zzhqVBWQVzki', 'AOC', 'DwWGULb12yqumxX3ebDSCw6vlcMz64ctt9tPYZtauGMZV7F755gYNlF7nxCy', '2018-10-27 06:07:05', NULL),
('2345', 'Mr OC', '$2y$10$l.Ybp/MpeeXR7z/aFipnRuvvLBbOBGWJW3jQGT4X6zzhqVBWQVzki', 'OC', 'tlgZEqpdUrlAr00qXcPAgDLtSIEEGebyOoVo24txCGvOooCJ5zKFhSO7agLm', '2018-10-27 06:07:05', NULL),
('3456', 'Mr SA', '$2y$10$l.Ybp/MpeeXR7z/aFipnRuvvLBbOBGWJW3jQGT4X6zzhqVBWQVzki', 'SystemAdmin', 'vFux2FMO1eaPjET5Jo4CXMU2s7mfUBxPgdmilrWPazG7I8USORTE79aRTx56', '2018-10-27 06:07:05', NULL),
('4567', 'Mr SU', '$2y$10$l.Ybp/MpeeXR7z/aFipnRuvvLBbOBGWJW3jQGT4X6zzhqVBWQVzki', 'SystemUser', 'YtpoNvWjxkI00eGZwS7OCHukOsbjlpo3y8C00RVbXcrv9FE6Fb9bkjZYBpD7', '2018-10-27 06:07:05', NULL),
('8982', 'Shadia Islam', '$2y$10$l.Ybp/MpeeXR7z/aFipnRuvvLBbOBGWJW3jQGT4X6zzhqVBWQVzki', 'RegularUser', 'VRlrIdK5W1nOa7DqyxtRyHyyQpbmicPZ805g1c3Ug5rbz4ogUtdb7ktkGTB6', '2018-12-02 14:36:50', NULL),
('9875', 'Faruk Hossain', '$2y$10$l.Ybp/MpeeXR7z/aFipnRuvvLBbOBGWJW3jQGT4X6zzhqVBWQVzki', 'RegularUser', 'hLIuw65e5hFJPVeQR8A8drkhLoDvDmaX74wfkZ7AAubWpN1bf2DSBO3LdSaK', '2018-12-02 14:38:28', NULL),
('8750', 'Md.Mashruk Aulia', '$2y$10$l.Ybp/MpeeXR7z/aFipnRuvvLBbOBGWJW3jQGT4X6zzhqVBWQVzki', 'RegularUser', 'wbApgQNqCgWqGRV7EGeERnMugduVmrkyNOE45I2nM2IE8HM4zWuDP3lE5W6z', '2018-12-02 14:40:03', NULL),
('9852', 'Shakila Easmin', '$2y$10$l.Ybp/MpeeXR7z/aFipnRuvvLBbOBGWJW3jQGT4X6zzhqVBWQVzki', 'RegularUser', NULL, '2018-12-02 14:41:25', NULL),
('9561', 'Anika Yazdani', '$2y$10$l.Ybp/MpeeXR7z/aFipnRuvvLBbOBGWJW3jQGT4X6zzhqVBWQVzki', 'RegularUser', 'GAE6jHT3qtZvYnDKRkIJyxtDxoyJGIPkgj7TuyDv1W6hfxT7qtV4BGw8kmQE', '2018-12-02 14:42:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a_o_cs`
--
ALTER TABLE `a_o_cs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `a_o_cs_bdno_unique` (`bdNo`),
  ADD UNIQUE KEY `a_o_cs_athno_unique` (`athNo`),
  ADD UNIQUE KEY `a_o_cs_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `o_cs`
--
ALTER TABLE `o_cs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `o_cs_bdno_unique` (`bdNo`),
  ADD UNIQUE KEY `o_cs_email_unique` (`email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_bdno_unique` (`bdNo`);

--
-- Indexes for table `quaters`
--
ALTER TABLE `quaters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regular_users`
--
ALTER TABLE `regular_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regular_users_bdno_unique` (`bdNo`);

--
-- Indexes for table `system_admins`
--
ALTER TABLE `system_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_admins_bdno_unique` (`bdNo`),
  ADD UNIQUE KEY `system_admins_email_unique` (`email`);

--
-- Indexes for table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_users_bdno_unique` (`bdNo`);

--
-- Indexes for table `toffers`
--
ALTER TABLE `toffers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `users_bdno_unique` (`bdNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a_o_cs`
--
ALTER TABLE `a_o_cs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `o_cs`
--
ALTER TABLE `o_cs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quaters`
--
ALTER TABLE `quaters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `regular_users`
--
ALTER TABLE `regular_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `system_admins`
--
ALTER TABLE `system_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `toffers`
--
ALTER TABLE `toffers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
