-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2022 at 09:43 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `designation`, `gender`, `created_at`) VALUES
(1, 'Lê Sỹ Hùng', 'hungls12@gmail.com', 'DEV', '', '2022-07-12 04:34:07'),
(2, 'Lê Sỹ Hùng 123', 'hunglsctk4224@gmail.com', 'DEV', '', '2022-07-12 07:02:45'),
(3, 'Sanjay Kumar', 'sanjaytest@mail.com', 'PHP Developer', 'male', '2022-07-12 07:14:27'),
(4, 'le hung', 'lehung@mail.com', 'PHP Developer', 'male', '2022-07-12 07:15:22'),
(5, 'gfgfdhfdghfg', 'afsadfasdf@mail.com', 'PHP â Developer', 'male', '2022-07-13 07:08:07'),
(6, 'gfgfdh123', 'afsad123@mail.com', 'PHP â Developer', 'male', '2022-07-13 07:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20220712042957, 'CreateEmployees', '2022-07-11 21:30:18', '2022-07-11 21:30:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`ID`, `Name`, `Detail`) VALUES
(1, 'Lê sỹ hùng', 'Dev 1'),
(2, 'Thái', 'Dev '),
(3, 'Thái Long', 'Dev');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `email`, `password`, `created`, `modified`) VALUES
(4, 'hung12', 'hungls12@gmail.com', '$2y$10$NixY.vpWT0MWd62nX4Wae.utZCsZCZeoK5r3oRdU7mLFW0Kc8k/iC', '2022-07-11 01:36:04', '2022-07-11 01:36:04'),
(5, 'hung12345', 'hungls12345@gmail.com', '$2y$10$iQBxOLA0TuMPDMzIoVi4U.V9ZWc/fQCwvxPuBLJ2VnDdd3iEOsQ4K', '2022-07-11 09:19:54', '2022-07-13 01:23:56'),
(6, 'hunglsctk42', 'hunglsctk42@gmail.com', '$2y$10$kVSzKDHeb60FEEVQmHyJVOQ42ZlDmo.ftIpEbmxD8iU84eABJS4tG', '2022-07-11 09:42:13', '2022-07-11 09:42:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
