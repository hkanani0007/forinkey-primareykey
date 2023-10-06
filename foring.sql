-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 05:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foring`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city_id` int(49) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `firstname`, `email`, `city_id`) VALUES
(5, 'hardik', 'hardikkanai13@gmail.com', 1),
(6, 'bhavin', 'bhavin13@gmail.com', 1),
(7, 'raj', 'hardikkanai13@gmail.com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `class1`
--

CREATE TABLE `class1` (
  `id` int(6) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `city_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class1`
--

INSERT INTO `class1` (`id`, `fname`, `lname`, `email`, `phone`, `city_id`) VALUES
(3, 'hardik', 'kanani', 'kanai13@gmail.com', '34343434343', 2),
(4, 'ram', 'sita', 'sita23@gmail.com', '65656565656', 1);

-- --------------------------------------------------------

--
-- Table structure for table `forin`
--

CREATE TABLE `forin` (
  `id` int(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forin`
--

INSERT INTO `forin` (`id`, `city`, `pincode`, `phone`) VALUES
(1, 'Surat ', '395010', '123456789'),
(2, 'Bharuch ', '23456', '234567890');

-- --------------------------------------------------------

--
-- Table structure for table `forkey`
--

CREATE TABLE `forkey` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forkey`
--

INSERT INTO `forkey` (`id`, `name`, `email`, `phone`) VALUES
(1, 'hardik', 'hardi13@gmail.com', '123456789'),
(2, 'hardik', 'hrdfy@gmail.com', '987654321'),
(3, 'gulab', 'gulab13@gmail.com', '45454545454545');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `class1`
--
ALTER TABLE `class1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `forin`
--
ALTER TABLE `forin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forkey`
--
ALTER TABLE `forkey`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `class1`
--
ALTER TABLE `class1`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forin`
--
ALTER TABLE `forin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `forkey`
--
ALTER TABLE `forkey`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `forkey` (`id`);

--
-- Constraints for table `class1`
--
ALTER TABLE `class1`
  ADD CONSTRAINT `class1_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `forin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
