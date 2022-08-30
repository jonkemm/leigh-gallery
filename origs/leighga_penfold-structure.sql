-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 213.171.200.74
-- Generation Time: Aug 27, 2022 at 11:24 AM
-- Server version: 5.6.51-log
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leighga_penfold`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(5) NOT NULL,
  `artist_name` varchar(255) NOT NULL DEFAULT '',
  `artist_desc` longtext NOT NULL,
  `artist_home` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `artist_new`
--

CREATE TABLE `artist_new` (
  `artist_id` int(5) NOT NULL,
  `artist_name` varchar(255) NOT NULL DEFAULT '',
  `artist_surname` varchar(255) NOT NULL,
  `artist_desc` longtext NOT NULL,
  `artist_home` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(255) NOT NULL DEFAULT '',
  `news_desc` longtext NOT NULL,
  `news_date` varchar(10) NOT NULL DEFAULT '',
  `news_date1` varchar(10) NOT NULL DEFAULT '',
  `news_date_iso` varchar(10) NOT NULL DEFAULT '',
  `news_pic` varchar(255) NOT NULL DEFAULT '',
  `news_pic1` varchar(255) NOT NULL DEFAULT '',
  `news_pic2` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otheruser`
--

CREATE TABLE `otheruser` (
  `otheruser_id` int(11) NOT NULL,
  `otheruser_user` varchar(100) NOT NULL,
  `otheruser_pass` varchar(255) NOT NULL,
  `otheruser_password_salt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pic`
--

CREATE TABLE `pic` (
  `pic_id` int(11) NOT NULL,
  `pic_product_no` int(11) NOT NULL,
  `pic_name` varchar(255) NOT NULL,
  `pic_x` int(5) NOT NULL,
  `pic_y` int(5) NOT NULL,
  `pic_star` int(1) NOT NULL DEFAULT '0',
  `pic_order` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(5) NOT NULL,
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `product_desc` longtext NOT NULL,
  `product_artist_no` int(5) NOT NULL DEFAULT '0',
  `product_price` varchar(50) NOT NULL DEFAULT '',
  `product_type_no` int(5) NOT NULL DEFAULT '0',
  `product_pic` varchar(50) NOT NULL DEFAULT '',
  `product_star` char(1) NOT NULL DEFAULT '',
  `product_ref` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(5) NOT NULL,
  `type_name` varchar(255) NOT NULL DEFAULT '',
  `type_desc` longtext NOT NULL,
  `type_medium` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `artist_new`
--
ALTER TABLE `artist_new`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `otheruser`
--
ALTER TABLE `otheruser`
  ADD PRIMARY KEY (`otheruser_id`);

--
-- Indexes for table `pic`
--
ALTER TABLE `pic`
  ADD PRIMARY KEY (`pic_id`),
  ADD KEY `pic_product_no` (`pic_product_no`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artist_new`
--
ALTER TABLE `artist_new`
  MODIFY `artist_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otheruser`
--
ALTER TABLE `otheruser`
  MODIFY `otheruser_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pic`
--
ALTER TABLE `pic`
  MODIFY `pic_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
