-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2018 at 11:37 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `health_sympton`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
`user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `name`, `email`, `password`, `mobile`, `created_date`) VALUES
(2, 'Admin1', 'admin@gmail.com', 'test', '09790675343', '2017-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE IF NOT EXISTS `disease` (
`dis_id` int(200) NOT NULL,
  `email` varchar(500) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`dis_id`, `email`, `field_1`) VALUES
(2, 'admin@gmail.com', 'fever'),
(3, 'admin@gmail.com', 'chicken pox'),
(4, 'admin@gmail.com', 'measles '),
(5, 'admin@gmail.com', 'poliomylitis'),
(6, 'admin@gmail.com', 'rabies ');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `name`, `email`, `password`, `mobile`, `field_1`, `field_2`, `field_3`, `field_4`, `created_date`) VALUES
(3, 'Panneer', 'user@gmail.com', 'test', '9999955555', 'CSE', 'chennai', 'white', 'rose', '2017-03-08'),
(4, 'fowji', 'fowji@gmail.com', 'test', '1234567890', 'Female', 'Railway road,Thirunageswaram', 'boozi', 'priya', '2017-04-10'),
(5, 'Panneer', 'panner224@gmail.com', 'test', '12345678990', 'Male', 'test', 'test', 'test', '2017-07-14'),
(6, 'mani', 'mani@gmail.com', 'test', '56156145', 'Male', 'kum', 'fgdgf', 'dfgfdfg', '2018-02-12');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_11` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `field_11`, `created_date`) VALUES
(1, 'admin@gmail.com', 'fever', 'cough', 'winter', 'cold', 'vicks action500', '10 to 20', 'b+', 'male', 'new ABC tablet', '', '', '2018-02-17'),
(2, 'admin@gmail.com', 'chicken pox', 'headache', 'spring', 'fever', 'callpall', '20 to 30', 'a-', 'female', 'new CDE tablet', '', '', '2018-02-17'),
(3, 'admin@gmail.com', 'measles', 'common cold', 'monsoon', 'back pain', 'saridon', '30 to 40', 'a+', 'male', 'new FGH tablet', '', '', '2018-02-17'),
(4, 'admin@gmail.com', 'poliomylitis', 'stiffness of neck', 'Autumn', 'head pain', 'epliexchrono', '40 to 50', 'b-', 'female', 'new IJK tablet', '', '', '2018-02-17'),
(5, 'admin@gmail.com', 'rabies', 'svere headache and high fever', 'winter', 'sugar', 'enchrotono', '50 to 60', 'a+', 'male', 'new LMN tablet', '', '', '2018-02-17'),
(6, 'admin@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '2018-02-17'),
(7, 'admin@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '2018-02-17'),
(8, 'admin@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '2018-02-17'),
(9, 'admin@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '2018-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE IF NOT EXISTS `problems` (
`pid` int(200) NOT NULL,
  `email` varchar(500) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`pid`, `email`, `field_1`) VALUES
(1, 'admin@gmail.com', 'cold'),
(3, 'admin@gmail.com', 'fever'),
(6, 'admin@gmail.com', 'back pain'),
(7, 'admin@gmail.com', 'head pain'),
(8, 'admin@gmail.com', 'sugar');

-- --------------------------------------------------------

--
-- Table structure for table `symptom_type`
--

CREATE TABLE IF NOT EXISTS `symptom_type` (
`cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_11` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `symptom_type`
--

INSERT INTO `symptom_type` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `field_11`, `created_date`) VALUES
(5, 'admin@gmail.com', 'cough', '', '', '', '', '', '', '', '', '', '', '2017-04-10'),
(6, 'admin@gmail.com', 'headache', '', '', '', '', '', '', '', '', '', '', '2017-04-10'),
(7, 'admin@gmail.com', 'common cold', '', '', '', '', '', '', '', '', '', '', '2017-04-10'),
(9, 'admin@gmail.com', 'stiffness of neck', '', '', '', '', '', '', '', '', '', '', '2018-02-15'),
(10, 'admin@gmail.com', 'svere headache and high fever', '', '', '', '', '', '', '', '', '', '', '2018-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `tablets`
--

CREATE TABLE IF NOT EXISTS `tablets` (
`tid` int(200) NOT NULL,
  `email` varchar(500) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tablets`
--

INSERT INTO `tablets` (`tid`, `email`, `field_1`) VALUES
(1, 'admin@gmail.com', 'vicks action500'),
(2, 'admin@gmail.com', 'callpall'),
(3, 'admin@gmail.com', 'saridon'),
(4, 'admin@gmail.com', 'epliexchrono'),
(5, 'admin@gmail.com', 'enchrotono ');

-- --------------------------------------------------------

--
-- Table structure for table `user_health_info`
--

CREATE TABLE IF NOT EXISTS `user_health_info` (
`user_id` int(200) NOT NULL,
  `email` varchar(500) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(500) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(500) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(500) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(500) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_health_info`
--

INSERT INTO `user_health_info` (`user_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`) VALUES
(1, 'mani@gmail.com', '75kg', '150cm', 'A+', 'no', 'fd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
 ADD PRIMARY KEY (`dis_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
 ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
 ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `symptom_type`
--
ALTER TABLE `symptom_type`
 ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `tablets`
--
ALTER TABLE `tablets`
 ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user_health_info`
--
ALTER TABLE `user_health_info`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
MODIFY `dis_id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
MODIFY `pid` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `symptom_type`
--
ALTER TABLE `symptom_type`
MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tablets`
--
ALTER TABLE `tablets`
MODIFY `tid` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_health_info`
--
ALTER TABLE `user_health_info`
MODIFY `user_id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
