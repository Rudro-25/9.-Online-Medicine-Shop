-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2020 at 09:45 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drug`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) DEFAULT NULL,
  `name` text NOT NULL,
  `user_name` text NOT NULL,
  `password` text NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `user_name`, `password`, `email`) VALUES
(NULL, 'rudro', 'cse5', '123456', 'rudro.cse5.bu@gmail.com'),
(NULL, 'Tarin', 'cse', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catId`, `catName`) VALUES
(1, 'capsule'),
(2, 'Injection'),
(3, 'Tablet'),
(4, 'Syrup'),
(5, 'suspension');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `compId` int(11) NOT NULL,
  `compName` varchar(255) NOT NULL,
  `compMobile` varchar(20) NOT NULL,
  `compAddress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`compId`, `compName`, `compMobile`, `compAddress`) VALUES
(3, 'Square ', '01741960830', 'House-197, Lane-1, New DOHS, Mohakhali, Dhaka-1206'),
(4, 'Beximco', '01741960830', '2,bara magbazar'),
(5, 'Incepta', '01741758387', 'ACI Centre, 245, Tejgaon I/A, Dhaka-1212'),
(6, 'RENATA', '01741758387', 'House-21, Road-113/A, Gulshan-2, Dhaka-1212.'),
(7, 'Delta Pharma Limited', '01741758387', 'House-1, Road-71, Gulshan-2, Dhaka-1212.'),
(8, 'Centeon Pharma Limited', '01741758387', '222/2, Malibagh, Dhaka-1217.'),
(9, 'Ethical Drug Ltd.', '01741758387', 'ACI Centre, 245, Tejgaon I/A, Dhaka-1212'),
(10, 'ACI Limited', '01741960830', 'House-21, Road-113/A, Gulshan-2, Dhaka-1212.'),
(11, 'ACME', '01741960830', 'Court de la ACME, 1/4, Mirpur Road, Kallayanpur, Dhaka 1207,');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medId` int(11) NOT NULL,
  `medPrice` decimal(10,2) NOT NULL,
  `compId` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `medName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medId`, `medPrice`, `compId`, `catId`, `medName`) VALUES
(1, '20.00', 4, 2, 'activit z (vitamin B complex+zinc)'),
(2, '30.00', 5, 3, 'ethicid 250mg '),
(3, '10.00', 3, 2, '	Adenosine BP 6mg/2ml ampoule'),
(4, '24.00', 5, 1, 'omecent 20 mg '),
(5, '20.00', 8, 3, 'biosnac 100mg '),
(6, '20.00', 8, 3, 'arizith 500mg '),
(7, '20.00', 7, 3, 'activit silver (multivitamin & multimineral)  '),
(8, '15.00', 7, 3, 'anin 50mg '),
(9, '16.00', 11, 3, 'atv 40mg'),
(10, '25.00', 10, 4, 'activit z (vitamin B complex+zinc)'),
(11, '30.00', 9, 4, 'amsiv 15mg/5ml '),
(12, '10.00', 3, 5, 'azo 200mg/5ml '),
(13, '5.00', 4, 5, 'danidazol 200mg/5ml '),
(14, '15.00', 6, 5, 'degut 5mg/5ml'),
(15, '20.00', 9, 5, 'delfex 30mg/5ml'),
(16, '40.00', 11, 4, 'alargol 5mg/5ml '),
(17, '15.00', 6, 4, 'ambeet 15mg/5ml '),
(18, '12.00', 5, 4, 'covit-m multivitamin'),
(19, '10.00', 4, 4, 'ehxin 4mg/5ml'),
(20, '16.00', 3, 1, 'elocef 250mg '),
(21, '10.00', 4, 1, 'ambeet 75mg '),
(22, '12.00', 3, 1, 'ethicid 250mg '),
(23, '5.00', 4, 3, 'ethidin 150mg '),
(24, '10.00', 11, 3, 'albol ds 400mg '),
(25, '10.00', 8, 5, 'enystin 100000 unit/ml '),
(26, '18.00', 5, 5, 'elocef 125mg/5ml '),
(27, '30.00', 4, 2, 'Meropenem Trihydrate'),
(30, '25.00', 4, 2, 'Bupivacaine Hydrochloride'),
(31, '20.00', 4, 2, 'Dexaqua'),
(32, '50.00', 4, 2, 'Evo IV Fluid');

-- --------------------------------------------------------

--
-- Table structure for table `medshop`
--

CREATE TABLE `medshop` (
  `medshopId` int(11) NOT NULL,
  `medId` int(11) NOT NULL,
  `shopId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medshop`
--

INSERT INTO `medshop` (`medshopId`, `medId`, `shopId`) VALUES
(1, 2, 2),
(2, 1, 3),
(3, 3, 5),
(4, 3, 2),
(5, 1, 4),
(6, 3, 4),
(7, 7, 5),
(27, 7, 4),
(28, 1, 5),
(29, 10, 5),
(30, 3, 1),
(31, 16, 1),
(32, 24, 6),
(33, 17, 7),
(34, 21, 4),
(35, 11, 5),
(36, 8, 3),
(37, 6, 2),
(38, 6, 1),
(39, 9, 6),
(40, 12, 7),
(41, 12, 4),
(42, 5, 7),
(43, 18, 3),
(44, 13, 2),
(45, 14, 6),
(46, 15, 6),
(47, 15, 3),
(48, 19, 7),
(49, 26, 5),
(50, 20, 6),
(51, 25, 1),
(52, 2, 7),
(53, 4, 7),
(54, 7, 6),
(55, 23, 2),
(56, 24, 3),
(57, 22, 6),
(58, 27, 1),
(61, 27, 6),
(62, 27, 4),
(64, 30, 7),
(65, 30, 5),
(67, 31, 2),
(68, 31, 4);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shopId` int(11) NOT NULL,
  `shopName` varchar(255) NOT NULL,
  `shopMobile` varchar(20) NOT NULL,
  `shopAddress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shopId`, `shopName`, `shopMobile`, `shopAddress`) VALUES
(1, '	Antumoni-2 Departmental Store', '01741960830\r\n', '1/3, West Hajipara, D.I.T Road, Rampura'),
(2, 'Aqib Departmental Store', '01626627277', 'coumatha,barisal'),
(3, 'Family World (Pvt.) Ltd.', '01752542461', 'sadar,barisal'),
(4, 'PQS Super Centers', '01736545463', 'amtola,barisal'),
(5, 'Nayeem Enterprise', '01728262345', 'natun bazar,barisal'),
(6, 'Alams drug Store', '01741960830', 'Road # 5, Dhanmondi, Mirpur Road'),
(7, '3S Shopping Mall', '01741960830', 'House # 2, Road # 9, Sector # 1,Uttara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`compId`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medId`),
  ADD KEY `compId` (`compId`),
  ADD KEY `catId` (`catId`);

--
-- Indexes for table `medshop`
--
ALTER TABLE `medshop`
  ADD PRIMARY KEY (`medshopId`),
  ADD KEY `medId` (`medId`),
  ADD KEY `shopId` (`shopId`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shopId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `compId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `medshop`
--
ALTER TABLE `medshop`
  MODIFY `medshopId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shopId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`compId`) REFERENCES `company` (`compId`) ON DELETE CASCADE,
  ADD CONSTRAINT `medicine_ibfk_2` FOREIGN KEY (`catId`) REFERENCES `category` (`catId`) ON DELETE CASCADE;

--
-- Constraints for table `medshop`
--
ALTER TABLE `medshop`
  ADD CONSTRAINT `medshop_ibfk_1` FOREIGN KEY (`medId`) REFERENCES `medicine` (`medId`) ON DELETE CASCADE,
  ADD CONSTRAINT `medshop_ibfk_2` FOREIGN KEY (`shopId`) REFERENCES `shop` (`shopId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
