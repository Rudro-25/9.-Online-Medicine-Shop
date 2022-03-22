-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2020 at 06:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

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
  `cat_id` int(10) NOT NULL,
  `cat_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `c_id` int(10) NOT NULL,
  `c_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `c_id` int(20) NOT NULL,
  `cat_id` int(20) NOT NULL,
  `m_id` int(20) NOT NULL,
  `m_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `medi_shop`
--

CREATE TABLE `medi_shop` (
  `s_id` int(10) NOT NULL,
  `m_id` int(10) NOT NULL,
  `r_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `s_id` int(10) NOT NULL,
  `s_name` varchar(40) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `place` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `drug_list`
--
ALTER TABLE `drug_list`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `medi_shop`
--
ALTER TABLE `medi_shop`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drug_list`
--
ALTER TABLE `drug_list`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `m_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medi_shop`
--
ALTER TABLE `medi_shop`
  MODIFY `r_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
