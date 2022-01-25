-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 02:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

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
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `C_id` int(11) NOT NULL,
  `Cname` varchar(50) NOT NULL,
  `Caddress` varchar(100) NOT NULL,
  `Cphone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_id`, `Cname`, `Caddress`, `Cphone`) VALUES
(1, 'Swathi', 'Bangalore', '8564123214'),
(2, 'Vishnu', 'Mangalore', '9685663212');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Sh_id` int(10) NOT NULL,
  `C_id` int(10) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Sh_id`, `C_id`, `Product`, `Price`) VALUES
(0, 0, '[Pencil]', 0),
(1, 1, 'Pencil', 10);

-- --------------------------------------------------------

--
-- Table structure for table `regisform`
--

CREATE TABLE `regisform` (
  `E_id` int(3) NOT NULL,
  `Ename` char(50) NOT NULL,
  `Eaddress` varchar(100) NOT NULL,
  `Esalary` longtext NOT NULL,
  `Epass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regisform`
--

INSERT INTO `regisform` (`E_id`, `Ename`, `Eaddress`, `Esalary`, `Epass`) VALUES
(1, 'swathi', 'bangalore', '', 'pbkdf2:sha256:260000$fP6qHlWs3EtIzbdg$2cb67d3d2b87b86c508fa86f28e90fce60ac11d8fdb6556d91f94bc921b83dd4'),
(2, 'sanjay', 'mangalore', '', 'pbkdf2:sha256:260000$BCbQjBGQR4mVIvLj$6075a0c2eb95a96f8c661dd02219fccaddff29d6c7b0461e347326fae37ea686'),
(3, 'anitha', 'jaipur', '', 'pbkdf2:sha256:260000$lzZj9jAoYxpdojCR$3589f27a47d0badf5d67016175154037c37241b0ed5d60e18268567df6d2c749'),
(4, 'sathish', 'jaipur', '', 'pbkdf2:sha256:260000$dqgEBxeTDlP5t3OT$2eed10a189dabd68b5195810ae856d72df61c89089f5c9cb3c95fb079a31f0e3'),
(5, 'Esha', 'Assam', '', 'pbkdf2:sha256:260000$gzPXmgNOosh9worQ$319316641f0362a8fec8e763caeff0ccb53dcda2362ec186f299465d9e2b9c48'),
(6, '', '', '', 'pbkdf2:sha256:260000$P5TY5gk6DjVqpxFk$57c7be542354d03939378e24b57fb1b1813f137af4569e929fc2c0ae52c2643f'),
(7, 'priya', 'kerala', '', 'pbkdf2:sha256:260000$mIM9s2lWfYJ0Y7O4$ebcf65879546b27dda053b730a78e4d77734e72e88bc56bcc39ec8ec937a9049'),
(8, 'Esha', 'bangalore', '', 'pbkdf2:sha256:260000$MnBmyXjyAaev7Jvp$bc96d5b31f77f732e9585ff574d726234f92eae999dfdc2d6a579d5374b53677'),
(9, 'mayur', 'mlore', '', 'pbkdf2:sha256:260000$kZ2ebpiN5v6CTZma$811395a23329af0a2d1493129888a41a99e5c25b544672635239e10da538ba05');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `Sh_id` int(11) NOT NULL,
  `Shname` varchar(50) NOT NULL,
  `Shaddress` varchar(100) NOT NULL,
  `Shphone` varchar(10) NOT NULL,
  `E_id` int(3) NOT NULL,
  `C_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`Sh_id`, `Shname`, `Shaddress`, `Shphone`, `E_id`, `C_id`) VALUES
(1, 'Stationary Store', '1st floor, MallQuest, Bangalore', '7894561232', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `St_id` varchar(10) NOT NULL,
  `Stname` varchar(50) NOT NULL,
  `Stamount` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`St_id`, `Stname`, `Stamount`) VALUES
('SS001', 'Pencil', '10'),
('TS001', 'Teddy Bear', '200');

-- --------------------------------------------------------

--
-- Table structure for table `trig`
--

CREATE TABLE `trig` (
  `Tstid` varchar(20) NOT NULL,
  `Tstname` varchar(50) NOT NULL,
  `Tstamount` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_id`);

--
-- Indexes for table `regisform`
--
ALTER TABLE `regisform`
  ADD PRIMARY KEY (`E_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`Sh_id`),
  ADD KEY `emp` (`E_id`),
  ADD KEY `cus` (`C_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`St_id`);

--
-- Indexes for table `trig`
--
ALTER TABLE `trig`
  ADD PRIMARY KEY (`Tstid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `C_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `regisform`
--
ALTER TABLE `regisform`
  MODIFY `E_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `Sh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `cus` FOREIGN KEY (`C_id`) REFERENCES `customer` (`C_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emp` FOREIGN KEY (`E_id`) REFERENCES `regisform` (`E_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
