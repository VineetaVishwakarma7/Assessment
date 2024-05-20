-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2024 at 07:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_data`
--

CREATE TABLE `cart_data` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `prod_details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_data`
--

INSERT INTO `cart_data` (`prod_id`, `prod_name`, `prod_details`) VALUES
(1, 'asus laptop', 'nice laptop'),
(2, 'oppof23 5G', 'super mobile'),
(3, 'iphone 13', 'best '),
(4, 'hp laptop', 'very nice'),
(5, 'redmi 15', 'cool mobile'),
(6, 'sony camera', 'mind-blowing'),
(7, 'type-c datacable', 'good quality'),
(9, 'acer laptop', 'very nice quality'),
(10, 'apple charger', 'good product'),
(11, '', ''),
(12, '', ''),
(13, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_data`
--
ALTER TABLE `cart_data`
  ADD PRIMARY KEY (`prod_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_data`
--
ALTER TABLE `cart_data`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
