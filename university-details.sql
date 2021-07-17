-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2021 at 07:46 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university-details`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(4) NOT NULL,
  `name` varchar(150) NOT NULL,
  `rollno` bigint(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `hobbies` varchar(29) NOT NULL,
  `achievements` varchar(200) NOT NULL,
  `year` varchar(10) NOT NULL,
  `imageid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `rollno`, `address`, `contact`, `hobbies`, `achievements`, `year`, `imageid`) VALUES
(1, 'Naman', 20124001, 'Chhani jatak naka', 9561234871, 'coding', 'won hackathon', '2020-2024', '20124001.jpg'),
(2, 'Rahulraj', 20124002, 'Near Dmart alkapuri', 7486980186, 'coding, cricket', '1st prize in district cricket', '2020-2024', '20124002.jpg'),
(3, 'coding code', 20124003, '62/E railway colony', 999897084, 'reading', '1st prize in quiz competition', '2020-2024', '20124003.jpg'),
(4, 'Ramu', 20124004, 'Near Tulsi motel 23/A', 9348759201, 'dancing', '1st prize in district dance competition', '2020-2024', '20124004.jpg'),
(5, 'Raj', 20124005, 'Behind char rasta Hajira', 9561564874, 'singing', '1st prize in india got talent', '2020-2024', '20124005.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
