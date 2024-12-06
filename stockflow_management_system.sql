-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2024 at 08:20 PM
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
-- Database: `stockflow_management_system`
--
CREATE DATABASE IF NOT EXISTS `stockflow_management_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `stockflow_management_system`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `AdminNo` int(11) NOT NULL,
  `ID` varchar(50) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`AdminNo`, `ID`, `Username`, `Password`) VALUES
(1, '123456', 'admin', 'admin'),
(2, '123456', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `Product_ID` int(11) NOT NULL,
  `Product_Name` varchar(50) DEFAULT NULL,
  `Product_Category` varchar(50) NOT NULL,
  `Product_Price` double(16,2) DEFAULT NULL,
  `Product_Sales_Value` double(16,2) DEFAULT NULL,
  `Product_Stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`Product_ID`, `Product_Name`, `Product_Category`, `Product_Price`, `Product_Sales_Value`, `Product_Stock`) VALUES
(3, 'Wheel', 'Electronics', 899.00, 999.00, 1),
(7, 'Floatie', 'Electronics', 50.00, 75.00, 1),
(9, 'Steel Wheel', 'Electronics', 10.00, 19.00, 1),
(32, 'rt', 'Electronics', 54.00, 45.00, 1),
(37, 'hh', 'Utility', 23.00, 50.00, 1),
(38, 'VV', 'Kitchen Applicances', 14.00, 80.00, 1),
(39, 'Far', 'Kitchen Applicances', 56.00, 56.00, 1),
(41, '123456', 'Miscellaneous', 123456.00, 123456.00, 1),
(42, '122', 'Miscellaneous', 122.00, 122.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `logistics`
--

CREATE TABLE `logistics` (
  `Order_ID` int(11) NOT NULL,
  `Order_Type` varchar(10) DEFAULT NULL,
  `Item_ID` int(11) DEFAULT NULL,
  `Item_Name` varchar(50) DEFAULT NULL,
  `Category` varchar(50) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Amount` double(16,2) DEFAULT NULL,
  `Order_Date` datetime DEFAULT current_timestamp(),
  `Total` double(16,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logistics`
--

INSERT INTO `logistics` (`Order_ID`, `Order_Type`, `Item_ID`, `Item_Name`, `Category`, `Quantity`, `Amount`, `Order_Date`, `Total`) VALUES
(120, 'Purchase', 46, 'ss', '', 1, 1000.00, '2024-12-07 02:57:16', 1000.00),
(121, 'Purchase', 46, 'ss', '', 3, 1000.00, '2024-12-07 02:57:46', 4000.00),
(122, 'Purchase', 46, 'ss', '', 2, 1000.00, '2024-12-07 02:59:49', 2000.00),
(123, 'Sale', 45, 'sa', '', 1, 120.00, '2024-12-07 03:01:19', 120.00),
(124, 'Sale', 46, 'ss', '', 2, 1000.00, '2024-12-07 03:02:05', 2000.00),
(125, 'Purchase', 47, '1212', '', 1, 1212.00, '2024-12-07 03:02:46', 1212.00),
(126, 'Purchase', 47, '1212', '', 4, 1212.00, '2024-12-07 03:02:51', 4848.00),
(127, 'Sale', 47, '1212', '', 1, 1221.00, '2024-12-07 03:03:05', 1221.00),
(128, 'Sale', 47, '1212', '', 4, 1221.00, '2024-12-07 03:03:30', 4884.00),
(129, 'Sale', 45, 'sa', '', 1, 120.00, '2024-12-07 03:05:22', 120.00),
(130, 'Remove', 43, 'rt121', '', 1, 121212.99, '2024-12-07 03:05:38', 121212.99),
(131, 'Purchase', 48, '21', '', 1, 12.00, '2024-12-07 03:07:42', 12.00),
(132, 'Purchase', 48, '21', '', 4, 12.00, '2024-12-07 03:07:59', 48.00),
(133, 'Sale', 48, '21', '', 1, 12.00, '2024-12-07 03:08:09', 12.00),
(134, 'Remove', 48, '21', '', 1, 12.00, '2024-12-07 03:08:14', 12.00),
(135, 'Remove', 48, '21', '', 0, 12.00, '2024-12-07 03:08:32', 0.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`AdminNo`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `logistics`
--
ALTER TABLE `logistics`
  ADD PRIMARY KEY (`Order_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `AdminNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `logistics`
--
ALTER TABLE `logistics`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
