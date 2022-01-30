-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2022 at 07:02 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mallquest`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `M_id` int(3) NOT NULL,
  `Bname` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Baddress` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Bphone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`M_id`, `Bname`, `Baddress`, `Bphone`) VALUES
(1, 'Lifestyle Stores', 'Mangalore', 898876565),
(2, 'Esha Stores', 'Bangalore', 768493785),
(3, 'Shakti Stores', 'Pune', 998416523),
(4, 'Hyerpcity', 'Bangalore', 998876564),
(7, 'Vikas Retails', 'Shimla', 887865452),
(8, 'Pantaloons', 'Mangalore', 893726151),
(9, 'Toys Bazar', 'Kolkata', 778899056),
(10, 'Esha Stores', 'Bangalore', 768493785),
(11, 'Fiza Bakery', 'Mumbai', 876765678),
(13, 'Manali Store', 'Udaipur', 991234567);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `C_id` int(3) NOT NULL,
  `Cname` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Caddress` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Cphone` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_id`, `Cname`, `Caddress`, `Cphone`) VALUES
(1, 'Vishnu', 'bangalore', 8765455631),
(2, 'Anitha', 'Bangalore', 6788878883),
(3, 'Priya', 'Jaipur', 8997560074),
(4, 'Kavya', 'Hosur', 7765309005),
(5, 'Samaira', 'Jaipur', 9888774547),
(6, 'Rashi', 'Mangalore', 7701983420),
(7, 'James', 'Surat', 8767546654),
(8, 'Robert', 'Coorg', 7524319981),
(9, 'John', 'Manali', 9984531221),
(10, 'Charles', 'Udaipur', 8776650984),
(11, 'Daniel', 'Rishikesh', 9000678760),
(12, 'Anthony', 'Nainital', 8880675652),
(13, 'William', 'Darjelling', 6788905411),
(14, 'Steven', 'Mangalore', 7008943323),
(15, 'Wiston', 'Jaipur', 8988761235),
(16, 'Mayur', 'Mangalore', 9611609185),
(17, 'Sayuri', 'Mangalore', 9678564409),
(18, 'Riya', 'tumkur', 9887654345),
(19, 'Reema', 'Tumkur', 9885543120),
(20, 'Mayur', 'Mangalore', 9611609185),
(21, 'Gaana', 'pune', 6776567890),
(22, 'Tarun', 'Ooty', 9013456789),
(23, 'Hina', 'Pune', 6554590089),
(24, 'Hitha', 'Pune', 8978890089),
(25, 'Tia', 'Mumbai', 9900886754),
(26, 'Kavana', 'Mumbai', 8645678677),
(27, 'Soumya', 'Bangalore', 9087866453),
(28, 'Suraj', 'Bangalore', 9087866453),
(29, 'Jia', 'Mumbai', 8765345678),
(30, 'Rakesh', 'Lucknow', 7889098456),
(31, 'Moon', 'Lucknow', 8890045567),
(32, 'Tina', 'Udaipur', 8767890567),
(33, 'Tina', 'Udaipur', 8767890567),
(34, 'Rajeshwari', 'Bangalore', 9123432567),
(35, 'Karan', 'Mumbai', 7667890564),
(36, 'Anisha', 'Mumbai', 7845332100),
(37, 'Anish', 'Pune', 9087156421),
(38, 'Sara', 'Bangalore', 9123412367),
(39, 'Sara', 'Bangalore', 9123412367),
(40, 'Sana', 'Shimla', 9657890400),
(41, 'Venus', 'Surat', 7467890012),
(42, 'Leena', 'Hubli', 8957463526);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `E_id` int(3) NOT NULL,
  `Ename` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Eaddress` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Ephone` int(10) NOT NULL,
  `Esalary` double NOT NULL,
  `Epass` varchar(1000) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`E_id`, `Ename`, `Eaddress`, `Ephone`, `Esalary`, `Epass`) VALUES
(1, 'Kevin', 'Bangalore', 0, 0, 'pbkdf2:sha256:260000$4dGaAzhCWAGM7YCf$d8c826d20d100cc7124d9fa919b45a8db1ddcce1480ae21901b6ffed5fdb8cac'),
(2, 'Sanjay', 'Bangalore', 0, 0, 'pbkdf2:sha256:260000$GFQpE75qdZEjmYlc$8140538f5cd83cf13a2b4d4fef06b7e3165e0c2edbc31bafbd7836cc8168b6b6'),
(3, 'George', 'Kolkata', 0, 0, 'pbkdf2:sha256:260000$fZ4YcHCfDFKE2tT8$d8b4f578b816af0355ded8589ac89f7699f778a2d3c2c75c7f75b72053e7662b'),
(4, 'Richard', 'Bangalore', 0, 0, 'pbkdf2:sha256:260000$MOD9sdpFxSRy8KaZ$6f324dff95a9a095f48cae6c347bde1c42bbfb63b5fd0edc4ae95d0447cee245'),
(5, 'Ryan', 'Mangalore', 0, 0, 'pbkdf2:sha256:260000$WBsRDSwgkApvSs2Q$ba2a31b772aff7be47fdbae54303a4cd3022b8a54760c9fbcfbc8c166defde2a'),
(6, 'Nicholas', 'Surat', 0, 0, 'pbkdf2:sha256:260000$lzbpeMrZiQ0oSb3J$4fb2e5350cc11b0b5f8f0e4a52cc4d8deaa7863a074755499d378eed4f4cb592');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `M_id` int(3) NOT NULL,
  `Mname` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Maddress` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Memail` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`M_id`, `Mname`, `Maddress`, `Memail`) VALUES
(1, 'Sathish', 'Bangalore', 'sathish@gmail.com'),
(2, 'Esha', 'Tumkur', 'esha@gmail.com'),
(3, 'Reshma', 'Mangalore', 'reshma@gmail.com'),
(4, 'Siya', 'Delhi', 'siya@gmail.com'),
(5, 'Yathin', 'Bangalore', 'yathin@gmail.com'),
(6, 'Disha', 'Hubli', 'disha@gmail.com'),
(7, 'Fiza', 'Udaipur', 'fiza@gmail.com'),
(8, 'Pratham', 'Hosur', 'pratham@gmail.com'),
(9, 'Mira', 'Mumbai', 'mira@gmail.com'),
(10, 'Rakshith', 'Chennai', 'rakshith@gmail.com'),
(11, 'Harish', 'Mangalore', 'harish@gmail.com'),
(12, 'Karan', 'Pune', 'karan@gmail.com'),
(13, 'Neeraj', 'Jaipur', 'neeraj@gmail.com'),
(14, 'Tarun', 'Kolkata', 'tarun@gmail.com'),
(15, 'Jacob', 'Pune', 'jacob@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Ord_no` int(3) NOT NULL,
  `Sh_id` int(3) NOT NULL,
  `St_id` int(3) NOT NULL,
  `Stbarcode` bigint(12) NOT NULL,
  `Stname` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Stamount` varchar(20) CHARACTER SET latin1 NOT NULL,
  `C_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Ord_no`, `Sh_id`, `St_id`, `Stbarcode`, `Stname`, `Stamount`, `C_id`) VALUES
(1, 1, 1, 512345000107, 'Pencils', '20', 1),
(2, 1, 2, 7845123652, 'Eraser', '10', 3),
(3, 1, 2, 7845123652, 'Eraser', '10', 3),
(4, 1, 2, 7845123652, 'Eraser', '10', 3),
(5, 1, 0, 0, 'Scale', '10', 3),
(6, 1, 1, 512345000107, 'Pencils', '20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `producedby`
--

CREATE TABLE `producedby` (
  `St_id` int(3) NOT NULL,
  `M_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producedby`
--

INSERT INTO `producedby` (`St_id`, `M_id`) VALUES
(3, 10),
(5, 6),
(11, 4),
(10, 3),
(11, 4);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `Sh_id` int(3) NOT NULL,
  `Shname` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Shphone` int(15) NOT NULL,
  `Shaddress` varchar(20) CHARACTER SET latin1 NOT NULL,
  `E_id` int(3) NOT NULL,
  `C_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`Sh_id`, `Shname`, `Shphone`, `Shaddress`, `E_id`, `C_id`) VALUES
(1, 'Stationary Store', 789456123, 'Mangalore', 2, 9),
(2, 'Med Plus', 786765611, 'Mangalore', 3, 2),
(3, 'Toys Store', 678112345, 'Mangalore', 5, 15),
(4, 'Bakery Store', 999445678, 'Mangalore', 1, 5),
(5, 'Clothing Store', 677889034, 'Mangalore', 4, 3),
(6, 'Grocery Store', 894434567, 'Mangalore', 6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `shproducts`
--

CREATE TABLE `shproducts` (
  `Sh_id` int(3) NOT NULL,
  `shproducts` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shproducts`
--

INSERT INTO `shproducts` (`Sh_id`, `shproducts`) VALUES
(1, 'Pencils'),
(2, 'Crocin'),
(3, 'Teddy Bear'),
(4, 'Muffins'),
(5, 'Jacket'),
(6, 'Tomatoes');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `St_id` int(3) NOT NULL,
  `Stname` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Stamount` double NOT NULL,
  `Stbarcode` bigint(12) NOT NULL,
  `Sh_id` int(3) NOT NULL,
  `M_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`St_id`, `Stname`, `Stamount`, `Stbarcode`, `Sh_id`, `M_id`) VALUES
(1, 'Pencils', 20, 512345000107, 1, 2),
(2, 'Eraser', 10, 7845123652, 1, 13),
(4, 'Teddy Bear', 200, 512345000107, 3, 3),
(5, 'Crocin', 40, 233445567889, 2, 6),
(7, 'Chips', 50, 345654567890, 4, 11),
(9, 'Tshirt', 350, 856154234567, 5, 8),
(10, 'Doll', 400, 781234156711, 3, 3),
(11, 'Cucumber', 35, 990081445167, 6, 4),
(12, 'Cotton', 45, 876543456780, 2, 6),
(13, 'Dolo650', 20, 234576890187, 2, 6),
(14, 'Blocks', 100, 567789013425, 3, 9),
(16, 'Muffins', 30, 890653344567, 4, 11),
(17, 'Jacket', 600, 667789056434, 5, 1),
(18, 'Socks', 30, 454456778901, 5, 1),
(19, 'Raddish', 45, 345678987656, 6, 4),
(20, 'Tomatoes', 80, 567890987615, 6, 4),
(21, 'Scale', 10, 233445567889, 1, 10),
(22, 'Paracetomol', 20, 345678767890, 2, 15);

--
-- Triggers `stock`
--
DELIMITER $$
CREATE TRIGGER `StockUpdate` AFTER UPDATE ON `stock` FOR EACH ROW INSERT INTO trig 
VALUES (null,NEW.St_id,NEW.Stname,NEW.Stamount,NEW.Stbarcode,'Stock Info Updated!',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Stockinsert` AFTER INSERT ON `stock` FOR EACH ROW INSERT INTO trig 
VALUES (null,NEW.St_id,NEW.Stname,NEW.Stamount,NEW.Stbarcode,'Stock Inserted!',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `stockDeletion` BEFORE DELETE ON `stock` FOR EACH ROW INSERT INTO trig VALUES(null,OLD.St_id,OLD.Stname,OLD.Stamount,OLD.Stbarcode,'Stock Deleted!',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `trig`
--

CREATE TABLE `trig` (
  `Triggerid` int(3) NOT NULL,
  `St_id` int(3) NOT NULL,
  `Stname` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Stamount` bigint(50) NOT NULL,
  `Stbarcode` bigint(12) NOT NULL,
  `Action` varchar(30) CHARACTER SET latin1 NOT NULL,
  `Time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trig`
--

INSERT INTO `trig` (`Triggerid`, `St_id`, `Stname`, `Stamount`, `Stbarcode`, `Action`, `Time`) VALUES
(1, 1, 'Pencils', 20, 512345000107, 'Stock Inserted!', '2022-01-26 10:36:30'),
(10, 2, 'Eraser', 10, 7845123652, 'Stock Inserted!', '2022-01-26 10:37:31'),
(11, 3, 'Scale', 5, 233445567889, 'Stock Inserted!', '2022-01-26 10:39:49'),
(12, 4, 'Teddy Bear', 200, 512345000107, 'Stock Inserted!', '2022-01-26 10:44:35'),
(13, 5, 'Crocin', 40, 233445567889, 'Stock Inserted!', '2022-01-26 10:45:19'),
(14, 4, 'Teddy Bear', 200, 512345000107, 'Stock Info Updated!', '2022-01-26 10:45:44'),
(16, 6, 'Scale', 10, 7845123652, 'Stock Inserted!', '2022-01-26 10:50:10'),
(17, 7, 'Chips', 50, 345654567890, 'Stock Inserted!', '2022-01-26 10:50:38'),
(18, 8, 'Carrots', 80, 887453110919, 'Stock Inserted!', '2022-01-26 10:51:18'),
(19, 9, 'Tshirt', 350, 856154234567, 'Stock Inserted!', '2022-01-26 10:52:19'),
(20, 6, 'Scale', 10, 7845123652, 'Stock Deleted!', '2022-01-26 10:52:37'),
(21, 10, 'Doll', 400, 781234156711, 'Stock Inserted!', '2022-01-26 10:53:59'),
(22, 11, 'Cucumber', 35, 990081445167, 'Stock Inserted!', '2022-01-26 10:54:49'),
(23, 11, 'Cucumber', 35, 990081445167, 'Stock Info Updated!', '2022-01-26 10:55:00'),
(24, 12, 'Cotton', 45, 876543456780, 'Stock Inserted!', '2022-01-26 10:56:24'),
(25, 13, 'Dolo650', 20, 234576890187, 'Stock Inserted!', '2022-01-26 10:57:13'),
(26, 13, 'Dolo650', 20, 234576890187, 'Stock Info Updated!', '2022-01-26 10:57:28'),
(27, 14, 'Blocks', 100, 567789013425, 'Stock Inserted!', '2022-01-26 11:00:32'),
(28, 15, 'Cups', 60, 987656543122, 'Stock Inserted!', '2022-01-26 11:01:38'),
(29, 16, 'Muffins', 30, 890653344567, 'Stock Inserted!', '2022-01-26 11:02:17'),
(30, 17, 'Jacket', 600, 667789056434, 'Stock Inserted!', '2022-01-26 11:03:04'),
(32, 18, 'Socks', 30, 454456778901, 'Stock Inserted!', '2022-01-26 11:04:41'),
(33, 19, 'Raddish', 45, 345678987656, 'Stock Inserted!', '2022-01-26 11:04:41'),
(34, 20, 'Tomatoes', 80, 567890987615, 'Stock Inserted!', '2022-01-26 11:05:07'),
(35, 3, 'Scale', 10, 233445567889, 'Stock Info Updated!', '2022-01-27 13:41:20'),
(36, 2, 'Eraser', 5, 7845123652, 'Stock Info Updated!', '2022-01-27 14:19:26'),
(37, 2, 'Eraser', 10, 7845123652, 'Stock Info Updated!', '2022-01-27 14:20:04'),
(38, 21, 'Shorts', 250, 788905645451, 'Stock Inserted!', '2022-01-27 14:25:45'),
(39, 8, 'Carrots', 80, 887453110919, 'Stock Deleted!', '2022-01-27 14:28:00'),
(40, 21, 'Shorts', 250, 788905645451, 'Stock Deleted!', '2022-01-27 14:29:53'),
(41, 3, 'Scale', 10, 233445567889, 'Stock Deleted!', '2022-01-27 14:31:11'),
(42, 15, 'Cups', 60, 987656543122, 'Stock Deleted!', '2022-01-27 14:35:30'),
(43, 21, 'Scale', 10, 233445567889, 'Stock Inserted!', '2022-01-27 14:37:20'),
(44, 22, 'Paracetomol', 20, 345678767890, 'Stock Inserted!', '2022-01-28 15:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `Sh_id` int(3) NOT NULL,
  `C_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`Sh_id`, `C_id`) VALUES
(1, 9),
(2, 2),
(3, 15),
(5, 3),
(6, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`M_id`),
  ADD KEY `M_id` (`M_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`E_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`M_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Ord_no`);

--
-- Indexes for table `producedby`
--
ALTER TABLE `producedby`
  ADD KEY `St_id` (`St_id`),
  ADD KEY `M_id` (`M_id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`Sh_id`),
  ADD KEY `C_id` (`C_id`),
  ADD KEY `E_id` (`E_id`);

--
-- Indexes for table `shproducts`
--
ALTER TABLE `shproducts`
  ADD PRIMARY KEY (`Sh_id`),
  ADD KEY `Sh_id` (`Sh_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`St_id`),
  ADD KEY `Sh_id` (`Sh_id`),
  ADD KEY `M_id` (`M_id`);

--
-- Indexes for table `trig`
--
ALTER TABLE `trig`
  ADD PRIMARY KEY (`Triggerid`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD KEY `Sh_id` (`Sh_id`),
  ADD KEY `C_id` (`C_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `M_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `C_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `E_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `M_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Ord_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `Sh_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shproducts`
--
ALTER TABLE `shproducts`
  MODIFY `Sh_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `St_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `trig`
--
ALTER TABLE `trig`
  MODIFY `Triggerid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `C_id` FOREIGN KEY (`C_id`) REFERENCES `customer` (`C_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `E_id` FOREIGN KEY (`E_id`) REFERENCES `employee` (`E_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `M_id` FOREIGN KEY (`M_id`) REFERENCES `manufacturer` (`M_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Sh_id` FOREIGN KEY (`Sh_id`) REFERENCES `shop` (`Sh_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
