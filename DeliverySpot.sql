-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 07, 2020 at 07:34 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Lepanier`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery_spot`
--

CREATE TABLE `DeliverySpot` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_home` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_spot`
--

INSERT INTO `DeliverySpot` (`id`, `name`, `address_home`, `postal_code`, `city`) VALUES
(1, 'Chez Nikola', '8 rue de Morice-Gallier ', 93020, 'Aubervilliers'),
(2, 'Joey\'s Home', '15 Avenue des antilles', 75017, 'Paris'),
(3, 'Fifi Market', '20 bis  rue de Marcel Sebban', 95400, 'Enghien les bains'),
(4, 'La Boutique de Momo', '89 Boulevard Momo', 94000, 'Créteil');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delivery_spot`
--
ALTER TABLE `DeliverySpot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delivery_spot`
--
ALTER TABLE `DeliverySpot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
