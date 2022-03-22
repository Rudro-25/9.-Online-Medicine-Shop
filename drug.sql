-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2020 at 10:58 AM
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
(1, 'Fever'),
(2, 'Injection'),
(3, 'Tablet'),
(4, 'Syrup'),
(5, 'Headache');

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
(3, 'Square ', '01741960830', 'Natun bazar'),
(4, 'Beximco', '01741960830', 'bottola'),
(5, 'Incepta', '01741758387', 'rupatali'),
(6, 'RENATA', '01741758387', 'amtola');

-- --------------------------------------------------------

--
-- Table structure for table `drug_list`
--

CREATE TABLE `drug_list` (
  `ID` int(10) NOT NULL,
  `Name` text NOT NULL,
  `Location` text NOT NULL,
  `Shop` varchar(30) NOT NULL,
  `Contact_no` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug_list`
--

INSERT INTO `drug_list` (`ID`, `Name`, `Location`, `Shop`, `Contact_no`) VALUES
(1, 'Giloma', 'Sadar', 'RUMMAN PHARMACY', '01734567356'),
(2, 'Scurvy', 'Rupatali', 'TARIN PHARMACY', '01937289503'),
(3, 'Amebiasis', 'Bottola', 'RD Pharmacy', '01741960830'),
(4, 'Soliris', 'Rupatali', 'TARIN PHARMACY', '01745378537'),
(5, 'Glybera', 'Coumatha', 'sheikh pharmacy', '0753829402'),
(6, 'Elaprase', 'Sadar Road', 'Lata pharmacy', '0753829402'),
(7, 'Naglazyme', 'Notullabad', 'rahat pharmacy', '0753829402'),
(8, 'Cinryze', 'Bangla Bazar', 'Shadhin Pharmacy', '0753829402'),
(9, 'Folotyn', 'Rupatali', 'Mumu pharmacy', '0753829402'),
(10, 'Acthar', 'Notun Bazar', 'Topu Pharmacy', '0753829402'),
(11, 'Myozyme', 'Notullabad', 'Malo Pharmacy', '0753829402'),
(12, 'Giloma', 'Rupatali', 'Mumu Pharmacy', '0753829402'),
(13, 'Amebiasis', 'Rupatali', 'tarin Pharmacy', '0753829402'),
(14, 'Soliris', 'Bottola', 'RD Pharmacy', '01741960830'),
(15, 'Cinryze', 'Sadar', 'RUMMAN PHARMACY', '01724374629'),
(16, 'Cinryze', 'Rupatali', 'Lata pharmacy', '01753627181'),
(17, 'Folotyn', 'amtola', 'subal pharmacy', '0195473210'),
(18, 'kakdj', 'adka', 'djjd', '0788'),
(19, 'kakdj', 'adka', 'djjd', '0788');

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
(1, '20.00', 4, 2, 'rad'),
(2, '30.00', 5, 3, 'fad'),
(3, '10.00', 3, 2, 'sad'),
(4, '24.00', 5, 1, 'fsd');

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
(6, 3, 5);

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
(1, 'A', 'A', 'A'),
(2, 'akash', '016266272', 'coumatha'),
(3, 'rita', '01752542461', 'sadar'),
(4, 'subal', '01736545463', 'amtola'),
(5, 'maloda', '017282623', 'natun bazar');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `id` int(20) DEFAULT NULL,
  `name` text NOT NULL,
  `user_name` text NOT NULL,
  `password` text NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`id`, `name`, `user_name`, `password`, `email`) VALUES
(NULL, 'rudro', 'cse5', '123456', 'rudro.cse5.bu@gmail.com');

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
-- Indexes for table `drug_list`
--
ALTER TABLE `drug_list`
  ADD PRIMARY KEY (`ID`);

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
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `compId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `drug_list`
--
ALTER TABLE `drug_list`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medshop`
--
ALTER TABLE `medshop`
  MODIFY `medshopId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shopId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
