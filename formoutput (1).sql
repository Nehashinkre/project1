-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2020 at 10:52 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quotation`
--

-- --------------------------------------------------------

--
-- Table structure for table `formoutput`
--

CREATE TABLE `formoutput` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(40) NOT NULL,
  `city` varchar(10) NOT NULL,
  `state` varchar(10) NOT NULL,
  `Zip` bigint(20) NOT NULL,
  `fieldofinterest` char(1) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `formoutput`
--

INSERT INTO `formoutput` (`id`, `firstname`, `lastname`, `gender`, `email`, `city`, `state`, `Zip`, `fieldofinterest`, `details`) VALUES
(7, 'santosh', 'kamat', 'm', 'heel@ymail.com', 'goa', 'margao', 210, 'e', 'give me brief details'),
(8, 'riya', 'naik', 'f', 'rya@ymail.com', 'goa', 'PANAJI', 403401, 'd', 'great'),
(9, 'ram', 'nath', 'm', 'ram@ymail.com', 'maharashtr', 'pune', 200, 'd', 'enter details here...'),
(10, 'ramya', 'nath', 'f', 'hellohi@ymail.com', 'maharashtr', 'pune', 200, 'd', 'enter details here...'),
(11, 'kavya', 'nath', 'f', 'kavya@ymail.com', 'maharashtr', 'pune', 200, 'a', 'enter details here...'),
(12, 'neha', 'shinkre', 'f', 'ne@gmail.com', 'goa', 'ponda', 403401, 'c', 'enter details here...'),
(13, 'varsha', 'kenkre', 'f', 'vsk@gmail.com', 'goa', 'margao', 403405, 'c', '.......');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `formoutput`
--
ALTER TABLE `formoutput`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `formoutput`
--
ALTER TABLE `formoutput`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
