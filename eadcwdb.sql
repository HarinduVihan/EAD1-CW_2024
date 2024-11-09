-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Oct 31, 2024 at 05:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eadcwdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `aName` varchar(25) NOT NULL,
  `aTel` int(10) NOT NULL,
  `aEmial` varchar(50) NOT NULL,
  `aAdd` varchar(50) NOT NULL,
  `aPassword` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `aName`, `aTel`, `aEmial`, `aAdd`, `aPassword`) VALUES
(1, 'Harindu', 332220870, 'harindu@gmail.com', 'Gampaha', '123');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cusID` int(11) NOT NULL,
  `cusName` varchar(25) NOT NULL,
  `cusAdd` varchar(25) NOT NULL,
  `cusNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cusID`, `cusName`, `cusAdd`, `cusNo`) VALUES
(1, 'Niaml', 'Polonnaruwa', 762347897),
(2, 'Kamal', 'Trincomalee', 712332645),
(3, 'Satoru', 'Colombo', 779210389),
(4, 'Yuji', 'Gampaha', 332220870),
(5, 'Tadashi', 'Hambantota', 718968542);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemId` int(11) NOT NULL,
  `itemName` varchar(25) NOT NULL,
  `itemPrice` double(25,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemId`, `itemName`, `itemPrice`) VALUES
(1, 'Monster Beef Burger', 2390.00),
(2, 'Monster Chicken Burger', 2290.00),
(3, 'Ultimate Beef', 1090.00),
(4, 'Shredded Beef', 1490.00),
(5, 'Beef Chilli Cheese', 1120.00),
(6, 'Ultimate Chicken', 1090.00),
(7, 'Shredded Chicken', 1190.00),
(8, 'Classic Beef', 1190.00),
(9, 'Double Pounder', 1490.00),
(10, 'Tandoori Chicken', 1390.00),
(11, 'Freshly Veggie', 990.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `cusName` varchar(25) NOT NULL,
  `total` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `cusName`, `total`) VALUES
(1, 'Niaml', 3630.00),
(2, 'Satoru', 15520.00),
(3, 'Tadashi', 5160.00);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `salesId` int(11) NOT NULL,
  `itemName` varchar(25) NOT NULL,
  `price` double NOT NULL,
  `qnt` int(11) NOT NULL,
  `subTotal` double NOT NULL,
  `orderId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`salesId`, `itemName`, `price`, `qnt`, `subTotal`, `orderId`) VALUES
(1, 'Beef Chilli Cheese', 1120, 2, 2240, 1),
(2, 'Tandoori Chicken', 1390, 1, 1390, 1),
(3, 'Monster Beef Burger', 2390, 5, 11950, 2),
(4, 'Shredded Chicken', 1190, 2, 2380, 2),
(5, 'Classic Beef', 1190, 1, 1190, 2),
(6, 'Tandoori Chicken', 1390, 3, 4170, 3),
(7, 'Freshly Veggie', 990, 1, 990, 3);

-- --------------------------------------------------------

--
-- Table structure for table `suborders`
--

CREATE TABLE `suborders` (
  `subID` int(11) NOT NULL,
  `itemName` varchar(25) NOT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `subTotal` decimal(9,2) NOT NULL,
  `orderId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(25) NOT NULL,
  `uTel` int(12) NOT NULL,
  `uEmail` varchar(50) NOT NULL,
  `uAdd` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`userId`, `userName`, `uTel`, `uEmail`, `uAdd`, `password`) VALUES
(1, 'Vihan', 765506968, 'vihan@gmail.com', 'Gampaha', '123'),
(2, 'Melantha', 718349712, 'melantha@gmail.com', 'Colombo', '124');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cusID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesId`);

--
-- Indexes for table `suborders`
--
ALTER TABLE `suborders`
  ADD PRIMARY KEY (`subID`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `salesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
