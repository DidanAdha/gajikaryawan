-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2021 at 04:30 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nb_gajikaryawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` int(11) NOT NULL,
  `gaji` int(11) NOT NULL DEFAULT 4200000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `jabatan`, `gaji`, `created_at`, `updated_at`) VALUES
(1, 'Miss Mabelle Treutel', 2, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(2, 'Dr. Eduardo Dietrich', 2, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(3, 'Hassie Murazik IV', 1, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(4, 'Prof. Benton Larkin', 3, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(5, 'Ofelia Erdman', 4, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(6, 'Rosemarie Botsford', 4, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(7, 'Jordan Considine', 1, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(8, 'Elmo Bartell', 4, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(9, 'Braulio Hammes', 1, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(10, 'Prof. Loyce Kub', 1, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(11, 'Nathanael Streich', 1, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(12, 'Isaiah Kessler', 4, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(13, 'Steve Beer V', 4, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(14, 'Dr. Enid Kerluke', 2, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(15, 'Missouri Zieme V', 3, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(16, 'Miss Emilie Champlin', 3, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(17, 'Edison Balistreri I', 3, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(18, 'Maureen Wintheiser I', 3, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(19, 'Dr. Maudie Ratke', 4, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(20, 'Dr. Arnaldo Ruecker', 4, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(21, 'Herman Marks', 3, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(22, 'Dr. Elwyn Powlowski Jr.', 2, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(23, 'Nella Breitenberg', 2, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(24, 'Theron Wintheiser IV', 3, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(25, 'Dr. Jaylen Dickens', 1, 4200000, '2021-01-30 01:20:35', '2021-01-30 01:20:35'),
(26, 'Didan Rizky Adha', 1, 5000000, NULL, NULL),
(27, 'Eren Yeager', 1, 4310000, NULL, NULL),
(28, 'Levi Ackerman', 3, 2505000, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
