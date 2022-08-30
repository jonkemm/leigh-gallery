-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 213.171.200.74
-- Generation Time: Aug 27, 2022 at 11:23 AM
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

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `artist_name`, `artist_desc`, `artist_home`) VALUES
(19, 'Clare CONRAD', '', 0),
(23, 'Sasha WARDELL', '', 0),
(24, 'Penny FOWLER', '', 0),
(26, 'Eamonn MCGOVERN', '', 0),
(28, 'Yasuyuki SUZUKI', '', 0),
(30, 'Mana LAGERHOLM', '', 0),
(38, 'Sheila FOURNIER', '', 0),
(33, 'John MAINWARING', '', 0),
(116, 'Clive SOORD', '', 0),
(39, 'Betty BLANDINO', '', 0),
(40, 'Katharine PLEYDELL-BOUVERIE', '', 0),
(41, 'James WALFORD', '', 0),
(42, 'Jeremy LEACH', '', 0),
(109, 'David LEACH', '', 0),
(46, 'Andrew SANDERS', '', 0),
(47, 'David WALLACE', '', 0),
(49, 'Siddig el NIGOUMI', '', 0),
(53, 'Eric J MELLON', '', 0),
(57, 'Eileen LEWENSTEIN', '', 0),
(59, 'Sophie MACCARTHY', '', 0),
(14, 'David WHITE', '', 0),
(15, 'Marie PRETT', '', 0),
(16, 'Norman Stuart CLARKE', '', 0),
(17, 'Lesley CLARKE', '', 0),
(18, 'Jennie HALE', '', 0),
(12, 'Katherine KADISH', '', 0),
(123, 'William WARDEN', '', 0),
(117, 'Pamela MEI-YEE LEUNG', '', 0),
(68, 'Katherine MORTON', '', 0),
(72, 'Douglas HILL', '', 0),
(112, 'John MALTBY', '', 0),
(78, 'Tessa FUCHS', '', 0),
(113, 'Rupert SPIRA', '', 0),
(80, 'Patricia VOLK', '', 0),
(82, 'Richard SLEE', '', 0),
(122, 'Seth CARDEW', '', 0),
(84, 'Alan SPENCER-GREEN', '', 0),
(85, 'Richard BATTERHAM', '', 0),
(89, 'Clive BOWEN', '', 0),
(90, 'Paul BARON', '', 0),
(95, 'Russell COATES', '', 0),
(97, 'Anne DAVIES', '', 0),
(100, 'Sarah ADAMS', '', 0),
(101, 'Helene HALSTUCH', '', 0),
(105, 'Sarah MCDADE', '', 0),
(126, 'Masutaro MURATA', '', 0),
(127, 'Mike DODD', '', 0),
(129, 'Kathleen LE CLERC FOWLE', '', 0),
(131, 'Alfred COHEN', '', 0),
(132, 'Lynne CURRAN', '', 0),
(133, 'Lisa HAMMOND', '', 0),
(134, 'Jules TATTERSALL', '', 0),
(135, 'Yvonne HAWKER', '', 0),
(138, 'Jandrell RALPH', '', 0);

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

--
-- Dumping data for table `artist_new`
--

INSERT INTO `artist_new` (`artist_id`, `artist_name`, `artist_surname`, `artist_desc`, `artist_home`) VALUES
(101, 'Helene', 'Halstuch', '', 0),
(171, 'Keith', 'King', '', 0),
(97, 'Anne', 'Davies', '', 0),
(95, 'Russell', 'Coates', '', 1),
(90, 'Paul', 'Baron', '', 0),
(89, 'Clive', 'Bowen', '', 0),
(85, 'Richard', 'Batterham', '', 0),
(84, 'Alan', 'Spencer-Green', '', 0),
(122, 'Seth', 'Cardew', '', 0),
(82, 'Richard', 'Slee', '', 0),
(80, 'Patricia', 'Volk', '', 0),
(78, 'Tessa', 'Fuchs', '', 0),
(112, 'John', 'Maltby', '', 0),
(72, 'Douglas', 'Hill', '', 0),
(68, 'Katherine', 'Morton', '', 0),
(117, 'Pamela', 'Leung', '', 0),
(123, 'William', 'Warden', '', 0),
(12, 'Katherine', 'Kadish', '', 0),
(18, 'Jennie', 'Hale', '', 0),
(17, 'Lesley', 'Clarke', '', 1),
(16, 'Norman Stuart', 'Clarke', '', 1),
(15, 'Marie', 'Prett', '', 0),
(150, 'David', 'White', '', 1),
(59, 'Sophie', 'MacCarthy', '', 0),
(57, 'Eileen', 'Lewenstein', '', 0),
(53, 'Eric', 'J Mellon', '', 0),
(49, 'Siddig', 'El Nigoumi', '', 0),
(47, 'David', 'Wallace', '', 0),
(46, 'Andrew', 'Sanders', '', 0),
(109, 'David', 'Leach', '', 0),
(42, 'Jeremy', 'Leach', '', 0),
(41, 'James', 'Walford', '', 0),
(40, 'Katharine', 'Pleydell-Bouverie', '', 0),
(39, 'Betty', 'Blandino', '', 0),
(116, 'Clive', 'Soord', '', 0),
(33, 'John', 'Mainwaring', '', 0),
(38, 'Sheila', 'Fournier', '', 0),
(30, 'Mana', 'Lagerholm', '', 0),
(28, 'Yasuyuki', 'Suzuki', '', 0),
(26, 'Eamonn', 'Mcgovern', '', 1),
(24, 'Penny', 'Fowler', '', 1),
(23, 'Sasha', 'Wardell', '', 0),
(19, 'Clare', 'Conrad', '', 0),
(105, 'Sarah', 'Mcdade', '', 0),
(126, 'Masutaro', 'Murata', '', 0),
(127, 'Mike', 'Dodd', '', 0),
(129, 'Kathleen', 'Le Clerc Fowle', '', 0),
(131, 'Alfred', 'Cohen', '', 0),
(133, 'Lisa', 'Hammond', '', 0),
(134, 'Jules', 'Tattersall', '', 0),
(135, 'Yvonne', 'Hawker', '', 0),
(138, 'Jandrell', 'Ralph', '', 0),
(144, 'Davod', 'Cox', '', 0),
(143, 'Peter', 'Care', '', 0),
(145, 'N', 'Stanton', '', 0),
(146, 'Gilbert', 'Spencer', '', 0),
(147, 'Shahin ', 'Afrassiabi', '', 0),
(148, 'Choko', 'kamoshita', '', 0),
(149, 'David &amp; William', 'Strang', '', 0),
(151, 'Richard ', 'Allen', '', 0),
(152, 'Gabriele ', 'Koch', '', 0),
(153, 'Christine-Ann', 'Richards', '', 0),
(154, 'Jason', 'Wason', '', 0),
(155, 'Mal', 'Magson', '', 0),
(156, 'Julie', 'Bennett', '', 0),
(157, 'Katherine', 'Kadish', '', 0),
(158, 'Stig', 'Lindberg', '', 0),
(159, 'Derek', 'Davis', '', 0),
(160, 'David Howard', 'Jones', '', 0),
(161, 'Peter', 'Hayes', '', 0),
(162, 'Alan', 'Spencer Green', '', 0),
(163, 'John', 'Glick', '(1938-20170', 0),
(164, 'Beryl', 'Turpin', '', 0),
(166, 'Jane', 'Muir', '', 0),
(168, 'Amanda', 'Popham', '', 0),
(169, 'Jack', 'Kenny', '', 0),
(170, 'Eric', 'Mellon', '', 0),
(172, 'Derek', 'Nice', '', 0),
(173, 'Emily ', 'Myers', '', 0),
(174, 'Judy', 'Dwyer', '', 0),
(176, 'Janet ', 'Bolton', '', 0),
(177, 'Julie ', 'Arkell', '', 0),
(179, 'Maker', 'Unknown', '', 0),
(180, 'Colin', 'Pearson', '', 0),
(181, 'Michael', 'Casson', '', 0),
(182, 'Micki', 'Scholessingk', '', 0),
(183, 'Artist unkown', '', '', 0),
(184, 'Masutaro', 'Murata', '', 0),
(185, 'Philip ', 'Evans', '', 0),
(186, 'Peter', 'Beard', '', 0),
(187, 'Richard', 'Phethean', '', 0),
(188, 'Ray', 'Finch', '', 0),
(189, 'Claudia ', 'Lis', '', 0),
(190, 'Hazel', 'Johnston', '', 0),
(191, 'Jennifer', 'Hall', '', 0),
(192, 'Julian', 'King-Salter', '', 0),
(193, 'Mark', 'Griffiths', '', 0),
(194, 'Trevor', 'Corser', '', 0),
(195, 'Peter', 'Lane', '', 0),
(196, 'George', 'Wilson', '', 0),
(215, 'Constantin', 'Brancusi', '', 0),
(198, 'Alan', 'Spencer Green', '', 0),
(199, 'Andrew', 'Crouch', '', 0),
(202, 'Ruthanne', 'Tudball', '', 0),
(201, 'John ', 'Jelfs', '', 0),
(214, 'Peter', 'Starkey', '', 0),
(205, 'Mary', 'White', '', 0),
(206, 'Neil', 'Ions', '', 0),
(207, 'Pottery', 'Lowerdown', '', 0),
(208, 'Gerard ', 'Morris', '', 0),
(209, 'Margaret', 'Frith', '', 0),
(210, 'David ', 'Frith', '', 0),
(211, 'James ', 'Campbell', '', 0),
(212, 'Winchcombe ', 'Pottery', '', 0),
(213, 'John ', 'Calver', '', 0),
(216, 'Norman', 'Makinson', '', 0),
(217, 'Jane', 'Hamlyn', '', 0),
(218, 'David', 'Eeles', '', 0),
(219, 'Laurel', 'Keeley', '', 0),
(220, 'Craig', 'Underhill', '', 0),
(221, 'Sutton', 'Taylor', '', 0),
(222, 'John', 'Dan', '', 0);

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

--
-- Dumping data for table `otheruser`
--

INSERT INTO `otheruser` (`otheruser_id`, `otheruser_user`, `otheruser_pass`, `otheruser_password_salt`) VALUES
(1, 'leighadmin', 'Grapepaint1', NULL);

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

--
-- Dumping data for table `pic`
--

INSERT INTO `pic` (`pic_id`, `pic_product_no`, `pic_name`, `pic_x`, `pic_y`, `pic_star`, `pic_order`) VALUES
(36, 677, 'DSCF2625.jpg', 1200, 900, 0, 0),
(41, 677, 'DSCF2624.jpg', 1200, 900, 0, 0),
(40, 677, 'DSCF2622.jpg', 1200, 900, 0, 0),
(812, 1047, 'DSCN1851-001.jpg', 1200, 1600, 0, 0),
(813, 1048, 'DSCN1856-001.jpg', 1200, 1600, 0, 0),
(811, 1046, 'DSCN1851-001.jpg', 1200, 1600, 0, 0),
(722, 1009, 'DSCN1769-001.jpg', 1200, 1600, 0, 0),
(723, 1011, 'DSCN1756-001.jpg', 1200, 1600, 0, 0),
(724, 1012, 'DSCN1756-001.jpg', 1200, 1600, 0, 0),
(725, 1013, 'DSCN1761-001.jpg', 1200, 900, 0, 0),
(726, 1014, 'DSCN1764-001.jpg', 1200, 1600, 0, 0),
(727, 1015, 'DSCN1758-001.jpg', 1200, 1600, 0, 0),
(728, 1016, 'DSCN1768-001.jpg', 1200, 1600, 0, 0),
(1021, 1134, 'DSCN2019-001.jpg', 1200, 1600, 0, 0),
(1004, 1129, 'DSCN1999-001.jpg', 1200, 900, 0, 0),
(1003, 1129, 'DSCN1998-001.jpg', 1200, 1600, 0, 0),
(855, 854, 'DSCN1903-001_2.jpg', 1200, 900, 0, 0),
(924, 1105, 'DSCN1942-001.jpg', 1200, 900, 0, 3),
(922, 1104, 'DSCN1940-001.jpg', 1200, 900, 0, 0),
(923, 1104, 'DSCN1941-001.jpg', 1200, 900, 0, 0),
(1011, 1132, 'DSCN2009-001.jpg', 1200, 1600, 0, 0),
(1007, 1130, 'DSCN2002-001.jpg', 1200, 1600, 0, 0),
(1006, 1130, 'DSCN2001-001.jpg', 1200, 900, 0, 0),
(1005, 1129, 'DSCN2000-001.jpg', 1200, 900, 0, 0),
(632, 982, 'DSCN1093-001.jpg', 1200, 900, 0, 0),
(397, 912, 'DSCF4123-001.jpg', 1200, 900, 0, 0),
(1147, 1167, 'DSCN1123-001.jpg', 1200, 840, 0, 0),
(840, 1081, 'DSCN1896-001.jpg', 1200, 900, 0, 0),
(762, 1028, 'DSCN1096-001.jpg', 1200, 900, 0, 0),
(1278, 1194, 'DSCN2215-001.jpg', 1200, 1600, 0, 0),
(1277, 1194, 'DSCN2214-001.jpg', 1200, 1600, 0, 0),
(1276, 1194, 'DSCN2213-001.jpg', 1200, 1600, 0, 0),
(824, 1074, '1616362007396.jpg', 1200, 1200, 0, 0),
(139, 577, 'DSCF2651-001.jpg', 1200, 900, 0, 0),
(133, 135, 'DSCF2653-001.jpg', 1200, 900, 0, 0),
(134, 611, 'DSCF2654-001.jpg', 1200, 1600, 0, 0),
(136, 616, 'DSCF2657-001.jpg', 1200, 1600, 0, 0),
(716, 1005, 'DSCF0968.jpg', 1200, 1602, 0, 0),
(633, 982, 'DSCN1094-001.jpg', 1200, 1600, 0, 0),
(700, 1000, 'DSCN1478-001.jpg', 1200, 1600, 0, 0),
(927, 1106, 'DSCN1946-001.jpg', 1200, 900, 0, 0),
(144, 136, 'P3280476.jpg', 1200, 900, 0, 0),
(145, 135, 'P3280482.jpg', 1200, 966, 0, 0),
(1324, 0, 'DSCN2356-001.jpg', 1200, 1600, 0, 0),
(1323, 0, 'DSCN2355-001.jpg', 1200, 1600, 0, 0),
(721, 0, 'DSCN1769-001.jpg', 1200, 1600, 0, 0),
(634, 982, 'DSCN1095-001.jpg', 1200, 1600, 0, 0),
(153, 437, 'DSCF1352.jpg', 1200, 1203, 0, 0),
(921, 1104, 'DSCN1939-001.jpg', 1200, 900, 0, 0),
(852, 851, 'DSCN1903-001_1.jpg', 1200, 900, 0, 0),
(1406, 1223, 'DSCN1995-001.jpg', 1200, 1600, 0, 0),
(1405, 1223, 'DSCN1994-001.jpg', 1200, 1600, 0, 0),
(810, 1045, 'DSCN1843-001.jpg', 1200, 675, 0, 0),
(809, 1045, 'DSCN1835-001.jpg', 1200, 900, 0, 0),
(1322, 1204, 'DSCN2108-001_1.jpg', 1200, 900, 0, 0),
(1318, 1204, 'DSCN2107-001.jpg', 1200, 900, 0, 0),
(1317, 0, 'DSCN2110-001.jpg', 1200, 900, 0, 0),
(920, 1104, 'DSCN1938-001.jpg', 1200, 803, 0, 0),
(181, 838, 'DSCF3615-001.jpg', 1200, 923, 0, 0),
(182, 838, 'DSCF3616-001.jpg', 1200, 1404, 0, 0),
(183, 838, 'DSCF3617-001.jpg', 1200, 945, 0, 0),
(184, 839, 'DSCF3609-001.jpg', 1200, 1054, 0, 0),
(1417, 1226, 'DSCN2397-001.jpg', 1200, 900, 0, 0),
(187, 843, 'DSCF3626-001.jpg', 1200, 977, 0, 0),
(631, 982, 'DSCN1092-001.jpg', 1200, 900, 0, 0),
(699, 1000, 'DSCN1477-001.jpg', 1200, 1600, 0, 0),
(1068, 1087, 'DSCN2133-001.jpg', 1200, 900, 0, 0),
(844, 843, 'DSCN1907-001.jpg', 1200, 836, 0, 0),
(843, 842, 'DSCN1906-001.jpg', 1200, 900, 0, 0),
(719, 136, 'P3280476_1.jpg', 1200, 900, 0, 0),
(688, 995, 'DSCN1451-001.jpg', 1200, 900, 0, 0),
(1013, 1132, 'DSCN2011-001.jpg', 1200, 1600, 0, 0),
(686, 995, 'DSCN1449-001.jpg', 1200, 900, 0, 0),
(687, 995, 'DSCN1450-001.jpg', 1200, 900, 0, 0),
(836, 1084, 'DSCN1856-001.jpg', 1200, 1600, 0, 0),
(621, 979, 'DSCN1119-001.jpg', 1200, 951, 0, 0),
(620, 979, 'DSCN1112-001.jpg', 1200, 971, 0, 0),
(701, 1000, 'DSCN1480-001.jpg', 1200, 1600, 0, 0),
(829, 828, 'P3280476.jpg', 1200, 900, 0, 0),
(854, 853, 'DSCN1902-001_2.jpg', 1200, 900, 0, 0),
(1020, 1134, 'DSCN2018-001.jpg', 1200, 1600, 0, 0),
(1019, 1134, 'DSCN2017-001.jpg', 1200, 1600, 0, 0),
(1146, 1167, 'DSCN1122-001.jpg', 1200, 900, 0, 0),
(491, 950, 'DSCF4168-001.jpg', 1200, 900, 0, 0),
(490, 950, 'DSCF4165-001.jpg', 1200, 900, 0, 0),
(489, 950, 'DSCF4164-001.jpg', 1200, 900, 0, 0),
(1145, 1166, 'DSCN1843-001.jpg', 1200, 675, 0, 0),
(850, 0, 'DSCN1901-001_1.jpg', 1200, 900, 0, 0),
(851, 850, 'DSCN1902-001_1.jpg', 1200, 900, 0, 0),
(999, 1127, 'DSCN1992-001.jpg', 1200, 1600, 0, 0),
(334, 886, 'Richard_allen_-_Pumpkin_Moon.jpeg', 1200, 1365, 0, 0),
(717, 1006, 'DSCF0968.jpg', 1200, 1602, 0, 0),
(718, 1007, 'DSCF0968.jpg', 1200, 1602, 0, 0),
(289, 870, 'DSCF3769-001.jpg', 1200, 923, 0, 0),
(287, 870, 'DSCF3770-001.jpg', 1200, 896, 0, 0),
(926, 1105, 'DSCN1945-001.jpg', 1200, 900, 0, 0),
(290, 870, 'DSCF3772-001.jpg', 1200, 819, 0, 0),
(291, 871, 'DSCF3778-001.jpg', 1200, 878, 0, 0),
(292, 871, 'DSCF3779-001.jpg', 1200, 819, 0, 0),
(293, 871, 'DSCF3780-001.jpg', 1200, 900, 0, 0),
(493, 952, 'P9180295.jpg', 1200, 1484, 0, 0),
(492, 951, 'P9180293.jpg', 1200, 1486, 0, 0),
(647, 986, 'DSCN1166-001.jpg', 1200, 1600, 0, 0),
(646, 986, 'DSCN1165-001.jpg', 1200, 1600, 0, 0),
(625, 980, 'DSCN1127-001.jpg', 1200, 900, 0, 0),
(624, 980, 'DSCN1119-001.jpg', 1200, 951, 0, 0),
(861, 860, 'DSCN1910-001.jpg', 1200, 900, 0, 0),
(649, 986, 'DSCN1168-001.jpg', 1200, 1600, 0, 0),
(648, 986, 'DSCN1167-001.jpg', 1200, 1600, 0, 0),
(860, 859, 'DSCN1909-001.jpg', 1200, 1600, 0, 0),
(1416, 1226, 'DSCN2396-001.jpg', 1200, 900, 0, 0),
(642, 984, 'DSCN1122-001.jpg', 1200, 900, 0, 0),
(834, 1081, 'DSCN1851-001.jpg', 1200, 1600, 0, 0),
(853, 0, 'DSCN1901-001_2.jpg', 1200, 900, 0, 0),
(925, 1105, 'DSCN1944-001.jpg', 1200, 900, 0, 0),
(623, 980, 'DSCN1112-001.jpg', 1200, 971, 0, 0),
(622, 979, 'DSCN1127-001.jpg', 1200, 900, 0, 0),
(845, 0, 'DSCN1901-001.jpg', 1200, 900, 0, 0),
(847, 846, 'DSCN1903-001.jpg', 1200, 900, 0, 0),
(846, 845, 'DSCN1902-001.jpg', 1200, 900, 0, 0),
(1012, 1132, 'DSCN2010-001.jpg', 1200, 1600, 0, 0),
(1280, 1195, 'DSCN2217-001.jpg', 1200, 1600, 0, 0),
(838, 1084, 'DSCN1891.jpg', 1200, 900, 0, 0),
(841, 1081, 'DSCN1895-002.jpg', 1200, 1600, 0, 0),
(1330, 0, 'DSCN2358-001_1.jpg', 1200, 900, 0, 0),
(868, 867, 'DSCN1915-001.jpg', 1200, 1600, 0, 0),
(869, 868, 'DSCN1916-001.jpg', 1200, 900, 0, 0),
(1329, 0, 'DSCN2357-001_1.jpg', 1200, 1600, 0, 0),
(873, 872, 'DSCN1918-001.jpg', 1200, 1600, 0, 0),
(874, 873, 'DSCN1919-001.jpg', 1200, 900, 0, 0),
(998, 1127, 'DSCN1991-001.jpg', 1200, 1600, 0, 0),
(997, 1127, 'DSCN1989-001.jpg', 1200, 1600, 0, 0),
(877, 1091, 'DSCN1758-001.jpg', 1200, 1600, 0, 0),
(878, 877, 'DSCN1759-001.jpg', 1200, 1600, 0, 0),
(879, 878, 'DSCN1760-001.jpg', 1200, 1600, 0, 0),
(880, 1091, 'DSCN1759-001_1.jpg', 1200, 1600, 0, 0),
(881, 1091, 'DSCN1760-001_1.jpg', 1200, 1600, 0, 0),
(882, 1092, 'DSCN1764-001.jpg', 1200, 1600, 0, 0),
(883, 882, 'DSCN1765-001.jpg', 1200, 1600, 0, 0),
(884, 1093, 'DSCN1769-001.jpg', 1200, 1600, 1, 5),
(885, 884, 'DSCN1770-001.jpg', 1200, 1600, 0, 0),
(886, 885, 'DSCN1771-001.jpg', 1200, 1600, 0, 0),
(887, 886, 'DSCN1772-001.jpg', 1200, 1600, 0, 0),
(1409, 1224, 'DSCN2270-001.jpg', 1200, 900, 0, 0),
(889, 1093, 'DSCN1771-001_1.jpg', 1200, 1600, 0, 0),
(890, 1093, 'DSCN1772-001_1.jpg', 1200, 1600, 0, 0),
(1408, 1224, 'DSCN2269-001.jpg', 1200, 900, 0, 0),
(1407, 1224, 'DSCN2268-001.jpg', 1200, 900, 0, 0),
(896, 895, 'logo-vertical.png', 1200, 6380, 0, 0),
(897, 896, 'logo.png', 1200, 226, 0, 0),
(899, 898, 'IMG_2318.jpg', 1200, 449, 0, 0),
(900, 899, 'logo-vertical.png', 1200, 6380, 0, 0),
(929, 1106, 'DSCN1948-001.jpg', 1200, 1600, 0, 0),
(902, 901, 'IMG_2318.jpg', 1200, 449, 0, 0),
(903, 902, 'logo-vertical.png', 1200, 6380, 0, 0),
(928, 1106, 'DSCN1947-001.jpg', 1200, 1600, 0, 0),
(915, 1102, 'DSCN1922-001.jpg', 1200, 900, 0, 0),
(914, 1102, 'DSCN1921-001.jpg', 1200, 900, 0, 0),
(913, 1102, 'DSCN1920-001.jpg', 1200, 900, 0, 0),
(930, 1106, 'DSCN1950-001.jpg', 1200, 900, 0, 0),
(1008, 1130, 'DSCN2003-001.jpg', 1200, 900, 0, 0),
(1279, 1195, 'DSCN2216-001.jpg', 1200, 1600, 0, 0),
(1404, 1223, 'DSCN1993-001.jpg', 1200, 1600, 0, 0),
(946, 1112, 'DSCN1973-001.jpg', 1200, 1340, 0, 0),
(947, 1112, 'DSCN1976-001.jpg', 1200, 1414, 0, 0),
(958, 1115, 'DSCN0471-001.jpg', 1200, 1600, 0, 0),
(959, 1115, 'DSCN0474-001.jpg', 1200, 1645, 1, 6),
(960, 1115, 'DSCN0475-001.jpg', 1200, 1655, 0, 0),
(1014, 1132, 'DSCN2012-001.jpg', 1200, 900, 0, 0),
(1328, 0, 'DSCN2356-001_1.jpg', 1200, 1600, 0, 0),
(1025, 1136, 'DSCN2023-001-Copy.jpg', 1200, 900, 0, 0),
(1026, 1136, 'DSCN2024.jpg', 1200, 900, 0, 0),
(1027, 1136, 'DSCN2024-001.jpg', 1200, 900, 0, 0),
(1284, 1196, 'DSCN2221-001.jpg', 1200, 1600, 0, 0),
(1283, 1196, 'DSCN2220-001.jpg', 1200, 1600, 0, 0),
(1282, 1196, 'DSCN2219-001.jpg', 1200, 1600, 0, 0),
(1281, 1195, 'DSCN2218-001.jpg', 1200, 1600, 0, 0),
(1032, 1138, 'DSCN2032-001.jpg', 1200, 1600, 0, 0),
(1033, 1138, 'DSCN2033-001.jpg', 1200, 1600, 0, 0),
(1034, 1138, 'DSCN2034-001.jpg', 1200, 1600, 0, 0),
(1035, 1139, 'DSCN2035-001.jpg', 1200, 1600, 0, 0),
(1036, 1139, 'DSCN2036-001.jpg', 1200, 1600, 0, 0),
(1037, 1139, 'DSCN2041-001.jpg', 1200, 1600, 0, 0),
(1038, 1140, 'DSCN2038-001.jpg', 1200, 1600, 0, 0),
(1039, 1140, 'DSCN2039-001.jpg', 1200, 1600, 0, 0),
(1040, 1140, 'DSCN2040-001.jpg', 1200, 1600, 0, 0),
(1041, 1141, 'DSCN2042-001.jpg', 1200, 1600, 0, 0),
(1042, 1141, 'DSCN2043-001.jpg', 1200, 1600, 0, 0),
(1043, 1141, 'DSCN2044-001.jpg', 1200, 900, 0, 0),
(1044, 1142, 'DSCN2045-001.jpg', 1200, 900, 0, 0),
(1045, 1142, 'DSCN2046-001.jpg', 1200, 900, 0, 0),
(1046, 1142, 'DSCN2047-001.jpg', 1200, 900, 0, 0),
(1047, 0, 'DSCN2048-001.jpg', 1200, 900, 0, 0),
(1048, 0, 'DSCN2049-001.jpg', 1200, 900, 0, 0),
(1049, 0, 'DSCN2050-001.jpg', 1200, 900, 0, 0),
(1053, 1144, 'DSCN2055-001.jpg', 1200, 1600, 0, 0),
(1054, 1144, 'DSCN2056-001.jpg', 1200, 900, 0, 0),
(1055, 1144, 'DSCN2057-001.jpg', 1200, 900, 0, 0),
(1144, 1166, 'DSCN1835-001.jpg', 1200, 900, 0, 0),
(1056, 1145, 'DSCN2059-001.jpg', 1200, 1600, 0, 0),
(1057, 1145, 'DSCN2060-001.jpg', 1200, 1600, 0, 0),
(1058, 1145, 'DSCN2061-001.jpg', 1200, 900, 0, 0),
(1059, 1146, 'DSCN2062-001.jpg', 1200, 900, 0, 0),
(1060, 1146, 'DSCN2063-001.jpg', 1200, 900, 0, 0),
(1061, 1146, 'DSCN2064-001.jpg', 1200, 900, 0, 0),
(1062, 0, 'DSCN2066-001.jpg', 1200, 900, 0, 0),
(1063, 0, 'DSCN2069-001.jpg', 1200, 900, 0, 0),
(1064, 0, 'DSCN2070-001.jpg', 1200, 900, 0, 0),
(1065, 0, 'DSCN2066-001_1.jpg', 1200, 900, 0, 0),
(1066, 0, 'DSCN2069-001_1.jpg', 1200, 900, 0, 0),
(1067, 0, 'DSCN2070-001_1.jpg', 1200, 900, 0, 0),
(1069, 1087, 'DSCN2134-001.jpg', 1200, 900, 0, 0),
(1070, 1087, 'DSCN2135-001.jpg', 1200, 900, 0, 0),
(1071, 1087, 'DSCN2136-001.jpg', 1200, 900, 0, 0),
(1072, 0, 'DSCN2066-001_2.jpg', 1200, 900, 0, 0),
(1073, 0, 'DSCN2069-001_2.jpg', 1200, 900, 0, 0),
(1074, 0, 'DSCN2070-001_2.jpg', 1200, 900, 0, 0),
(1078, 1148, 'DSCN2071-001.jpg', 1200, 1600, 0, 0),
(1079, 1148, 'DSCN2072-001.jpg', 1200, 1600, 0, 0),
(1080, 1148, 'DSCN2073-001.jpg', 1200, 900, 0, 0),
(1081, 1149, 'DSCN2074-001.jpg', 1200, 1600, 1, 1),
(1082, 1149, 'DSCN2077-001.jpg', 1200, 900, 0, 0),
(1083, 1149, 'DSCN2078-001.jpg', 1200, 1600, 0, 0),
(1084, 1150, 'DSCN2079-001.jpg', 1200, 900, 0, 0),
(1085, 1150, 'DSCN2080-001.jpg', 1200, 900, 0, 0),
(1100, 0, 'DSCN2096-001.jpg', 1200, 900, 0, 0),
(1101, 0, 'DSCN2097-001.jpg', 1200, 900, 0, 0),
(1102, 0, 'DSCN2098-001.jpg', 1200, 900, 0, 0),
(1103, 1155, 'DSCN2096-001.jpg', 1200, 900, 0, 0),
(1104, 1155, 'DSCN2097-001.jpg', 1200, 900, 0, 0),
(1105, 1155, 'DSCN2098-001.jpg', 1200, 900, 0, 0),
(1106, 1156, 'DSCN2099-001.jpg', 1200, 900, 0, 0),
(1107, 1156, 'DSCN2101-001.jpg', 1200, 900, 0, 0),
(1108, 1156, 'DSCN2102-001.jpg', 1200, 900, 0, 0),
(1109, 0, 'DSCN2103-001.jpg', 1200, 900, 0, 0),
(1110, 0, 'DSCN2104-001.jpg', 1200, 900, 0, 0),
(1111, 0, 'DSCN2105-001.jpg', 1200, 900, 0, 0),
(1327, 0, 'DSCN2355-001_1.jpg', 1200, 1600, 0, 0),
(1326, 0, 'DSCN2358-001.jpg', 1200, 900, 0, 0),
(1325, 0, 'DSCN2357-001.jpg', 1200, 1600, 0, 0),
(1415, 1226, 'DSCN2395-001.jpg', 1200, 900, 0, 0),
(1412, 1225, 'DSCN2391-001.jpg', 1200, 861, 0, 0),
(1411, 1225, 'DSCN2388-001.jpg', 1200, 900, 0, 0),
(1410, 1225, 'DSCN2382-001.jpg', 1200, 900, 0, 0),
(1119, 0, 'DSCN2111-001.jpg', 1200, 1600, 0, 0),
(1120, 0, 'DSCN2112-001.jpg', 1200, 900, 0, 0),
(1121, 0, 'DSCN2114-001.jpg', 1200, 900, 0, 0),
(1122, 1159, 'DSCN2111-001.jpg', 1200, 1600, 0, 0),
(1123, 1159, 'DSCN2112-001.jpg', 1200, 900, 0, 0),
(1124, 1159, 'DSCN2114-001.jpg', 1200, 900, 0, 0),
(1321, 1204, 'DSCN2110-001.jpg', 1200, 900, 0, 0),
(1129, 0, 'DSCN2121-001.jpg', 1200, 1600, 0, 0),
(1320, 1204, 'DSCN2109-001.jpg', 1200, 900, 0, 0),
(1130, 0, 'DSCN2122-001.jpg', 1200, 1600, 0, 0),
(1131, 0, 'DSCN2123-001.jpg', 1200, 900, 0, 0),
(1132, 1161, 'DSCN2121-001.jpg', 1200, 1600, 0, 0),
(1133, 1161, 'DSCN2122-001.jpg', 1200, 1600, 0, 0),
(1134, 1161, 'DSCN2123-001.jpg', 1200, 900, 0, 0),
(1136, 1162, 'DSCN2124-001.jpg', 1200, 1600, 0, 0),
(1137, 1162, 'DSCN2125-001.jpg', 1200, 1600, 0, 0),
(1138, 1162, 'DSCN2127-001.jpg', 1200, 900, 0, 0),
(1139, 1163, 'DSCN2129-001.jpg', 1200, 900, 0, 0),
(1140, 1163, 'DSCN2130-001.jpg', 1200, 1600, 0, 0),
(1141, 1163, 'DSCN2132-001.jpg', 1200, 1600, 0, 0),
(1142, 1164, 'DSCN2143.jpg', 1200, 1503, 0, 0),
(1143, 1165, 'DSCN2145.jpg', 1200, 1495, 0, 0),
(1148, 1167, 'DSCN1125-001.jpg', 1200, 900, 0, 0),
(1149, 1168, 'DSCN1122-001.jpg', 1200, 900, 0, 0),
(1150, 1168, 'DSCN1123-001.jpg', 1200, 840, 0, 0),
(1151, 1168, 'DSCN1125-001.jpg', 1200, 900, 0, 0),
(1382, 1217, 'DSCN2288-001.jpg', 1200, 1600, 0, 0),
(1381, 1216, 'DSCN2267-001.jpg', 1200, 1600, 0, 0),
(1380, 1216, 'DSCN2266-001.jpg', 1200, 1600, 0, 0),
(1379, 1216, 'DSCN2265-001.jpg', 1200, 1600, 0, 0),
(1156, 1170, 'DSCN1092-001.jpg', 1200, 900, 0, 0),
(1157, 1170, 'DSCN1093-001.jpg', 1200, 900, 0, 0),
(1158, 1170, 'DSCN1094-001.jpg', 1200, 1600, 0, 0),
(1159, 1170, 'DSCN1095-001.jpg', 1200, 1600, 0, 0),
(1160, 1171, 'DSCN1096-001.jpg', 1200, 900, 1, 2),
(1161, 1171, 'DSCN1097-001.jpg', 1200, 900, 0, 0),
(1162, 1171, 'DSCN1098-001.jpg', 1200, 1600, 0, 0),
(1163, 1171, 'DSCN1100-001.jpg', 1200, 1600, 0, 0),
(1164, 1171, 'DSCN1102-001.jpg', 1200, 900, 0, 0),
(1165, 1172, 'DSCF4163-001.jpg', 1200, 900, 1, 4),
(1171, 1173, 'DSCF3568-001.jpg', 1200, 900, 0, 0),
(1167, 1172, 'DSCF4165-001.jpg', 1200, 900, 0, 0),
(1170, 1172, 'DSCF4167-002.jpg', 1200, 1600, 0, 0),
(1169, 1172, 'DSCF4168-001.jpg', 1200, 900, 0, 0),
(1172, 1173, 'DSCF3570-001.jpg', 1200, 913, 0, 0),
(1173, 1173, 'DSCF3571-001.jpg', 1200, 900, 0, 0),
(1272, 1193, 'DSCN1768-001.jpg', 1200, 1600, 0, 0),
(1275, 1193, 'DSCN1963-001_1.jpg', 1200, 1600, 0, 0),
(1274, 1193, 'DSCN1958-001_1.jpg', 1200, 1600, 0, 0),
(1273, 1193, 'DSCN1956-001_1.jpg', 1200, 1600, 0, 0),
(1191, 1177, 'DSCN2152-001_1.jpg', 1200, 900, 0, 0),
(1187, 1177, 'DSCN2151-001.jpg', 1200, 1306, 0, 0),
(1190, 1177, 'DSCN2150-001_2.jpg', 1200, 900, 0, 0),
(1336, 1206, 'DSCN2360-001.jpg', 1200, 1600, 0, 0),
(1335, 1206, 'DSCN2359-001.jpg', 1200, 1600, 0, 0),
(1334, 1205, 'DSCN2358-001.jpg', 1200, 900, 0, 0),
(1195, 1179, 'DSCN2158-001.jpg', 1200, 900, 0, 0),
(1196, 1179, 'DSCN2159-001.jpg', 1200, 900, 0, 0),
(1197, 1179, 'DSCN2160-001.jpg', 1200, 900, 0, 0),
(1198, 1179, 'DSCN2161-001.jpg', 1200, 761, 0, 0),
(1316, 0, 'DSCN2109-001.jpg', 1200, 900, 0, 0),
(1315, 0, 'DSCN2108-001.jpg', 1200, 900, 0, 0),
(1314, 0, 'DSCN2107-001.jpg', 1200, 900, 0, 0),
(1215, 1183, 'DSCF0968-001.jpg', 1200, 1600, 0, 0),
(1216, 1184, 'DSCN0572-001.jpg', 1200, 900, 0, 0),
(1217, 1184, 'DSCN0573-001.jpg', 1200, 900, 0, 0),
(1223, 1185, 'DSCN2169-001.jpg', 1200, 900, 0, 0),
(1219, 1183, 'DSCN2177-001.jpg', 1200, 1600, 0, 0),
(1222, 1185, 'DSCN2168-001.jpg', 1200, 1035, 0, 0),
(1221, 1183, 'DSCN2179-001.jpg', 1200, 1600, 0, 0),
(1224, 1185, 'DSCN2170-001.jpg', 1200, 857, 0, 0),
(1225, 1186, 'DSCN2172-001.jpg', 1200, 984, 0, 0),
(1226, 1186, 'DSCN2173-001.jpg', 1200, 900, 0, 0),
(1227, 1186, 'DSCN2174-001.jpg', 1200, 900, 0, 0),
(1228, 1187, 'DSCN2187.jpg', 1200, 900, 0, 0),
(1229, 1187, 'DSCN2188-001.jpg', 1200, 900, 0, 0),
(1230, 1187, 'DSCN2189-001.jpg', 1200, 900, 0, 0),
(1231, 1188, 'DSCN2190-001.jpg', 1200, 900, 0, 0),
(1232, 1188, 'DSCN2191-001.jpg', 1200, 900, 0, 0),
(1233, 1188, 'DSCN2192-001.jpg', 1200, 900, 0, 0),
(1234, 0, 'DSCN2204-001.jpg', 1200, 1714, 0, 0),
(1235, 0, 'DSCN2205-001.jpg', 1200, 1681, 0, 0),
(1236, 0, 'DSCN2206-001.jpg', 1200, 1641, 0, 0),
(1237, 0, 'DSCN2207-001.jpg', 1200, 1816, 0, 0),
(1238, 0, 'DSCN2204-001_1.jpg', 1200, 1714, 0, 0),
(1239, 0, 'DSCN2205-001_1.jpg', 1200, 1681, 0, 0),
(1240, 0, 'DSCN2206-001_1.jpg', 1200, 1641, 0, 0),
(1241, 0, 'DSCN2207-001_1.jpg', 1200, 1816, 0, 0),
(1242, 0, 'DSCN2204-001_2.jpg', 1200, 1714, 0, 0),
(1243, 0, 'DSCN2205-001_2.jpg', 1200, 1681, 0, 0),
(1244, 0, 'DSCN2206-001_2.jpg', 1200, 1641, 0, 0),
(1245, 0, 'DSCN2207-001_2.jpg', 1200, 1816, 0, 0),
(1246, 0, 'DSCN2204-001_3.jpg', 1200, 1714, 0, 0),
(1247, 0, 'DSCN2205-001_3.jpg', 1200, 1681, 0, 0),
(1248, 0, 'DSCN2206-001_3.jpg', 1200, 1641, 0, 0),
(1249, 0, 'DSCN2206-001_4.jpg', 1200, 1641, 0, 0),
(1250, 0, 'DSCN2204-001_4.jpg', 1200, 1714, 0, 0),
(1251, 0, 'DSCN2205-001_4.jpg', 1200, 1681, 0, 0),
(1252, 0, 'DSCN2206-001_5.jpg', 1200, 1641, 0, 0),
(1253, 0, 'DSCN2207-001_3.jpg', 1200, 1816, 0, 0),
(1254, 1189, 'DSCN2208-001.jpg', 1200, 900, 0, 0),
(1255, 1189, 'DSCN2209-001.jpg', 1200, 1641, 0, 0),
(1256, 1189, 'DSCN2210-001.jpg', 1200, 1600, 0, 0),
(1257, 1189, 'DSCN2211-001.jpg', 1200, 1600, 0, 0),
(1258, 0, 'DSCN2204-001_5.jpg', 1200, 1714, 0, 0),
(1259, 1190, 'DSCN2204-001.jpg', 1200, 1714, 0, 0),
(1260, 1190, 'DSCN2205-001.jpg', 1200, 1681, 0, 0),
(1261, 1190, 'DSCN2206-001.jpg', 1200, 1641, 0, 0),
(1262, 1190, 'DSCN2207-001.jpg', 1200, 1816, 0, 0),
(1263, 1191, 'DSCN2193.jpg', 1200, 982, 0, 0),
(1264, 1191, 'DSCN2194-001.jpg', 1200, 900, 0, 0),
(1265, 1191, 'DSCN2197-001.jpg', 1200, 900, 0, 0),
(1266, 1192, 'DSCN2195-001.jpg', 1200, 806, 0, 0),
(1267, 1192, 'DSCN2196-001.jpg', 1200, 900, 0, 0),
(1414, 1226, 'DSCN2394-001.jpg', 1200, 900, 0, 0),
(1413, 1226, 'DSCN2392-001.jpg', 1200, 900, 0, 0),
(1422, 1199, 'DSCN2224-001.jpg', 1200, 1600, 0, 0),
(1421, 1199, 'DSCN2223-001.jpg', 1200, 1600, 0, 0),
(1420, 1199, 'DSCN2222-001.jpg', 1200, 1600, 0, 0),
(1333, 1205, 'DSCN2357-001.jpg', 1200, 1600, 0, 0),
(1332, 1205, 'DSCN2356-001.jpg', 1200, 1600, 0, 0),
(1331, 1205, 'DSCN2355-001.jpg', 1200, 1600, 0, 0),
(1337, 1206, 'DSCN2361-001.jpg', 1200, 1600, 0, 0),
(1338, 1206, 'DSCN2362-001.jpg', 1200, 1600, 0, 0),
(1339, 1207, 'DSCN2326-001.jpg', 1200, 908, 0, 0),
(1340, 1207, 'DSCN2327-001.jpg', 1200, 900, 0, 0),
(1341, 1207, 'DSCN2329-001.jpg', 1200, 900, 0, 0),
(1342, 1207, 'DSCN2330-001.jpg', 1200, 900, 0, 0),
(1343, 1208, 'DSCN2331-001.jpg', 1200, 900, 0, 0),
(1344, 1208, 'DSCN2332-001.jpg', 1200, 900, 0, 0),
(1345, 1208, 'DSCN2333-001.jpg', 1200, 900, 0, 0),
(1346, 1208, 'DSCN2334-001.jpg', 1200, 900, 0, 0),
(1347, 1209, 'DSCN2310-001.jpg', 1200, 1600, 0, 0),
(1348, 1209, 'DSCN2313-001.jpg', 1200, 1600, 0, 0),
(1352, 1209, 'Julian-KS-2-001.jpg', 1200, 1600, 0, 0),
(1350, 1209, 'DSCN2315-001.jpg', 1200, 1600, 0, 0),
(1351, 1209, 'DSCN2316-001.jpg', 1200, 900, 0, 0),
(1360, 1210, 'DSCN2325-001.jpg', 1200, 900, 0, 0),
(1359, 1210, 'DSCN2324-001.jpg', 1200, 1600, 0, 0),
(1358, 1210, 'DSCN2323-001.jpg', 1200, 1600, 0, 0),
(1357, 1210, 'DSCN2322-001.jpg', 1200, 1600, 0, 0),
(1361, 0, 'DSCN2317-001.jpg', 1200, 1600, 0, 0),
(1362, 0, 'DSCN2318-001.jpg', 1200, 1600, 0, 0),
(1363, 0, 'DSCN2319-001.jpg', 1200, 900, 0, 0),
(1364, 0, 'DSCN2321-001.jpg', 1200, 900, 0, 0),
(1365, 1211, 'DSCN2317-001.jpg', 1200, 1600, 0, 0),
(1366, 1211, 'DSCN2318-001.jpg', 1200, 1600, 0, 0),
(1367, 1211, 'DSCN2319-001.jpg', 1200, 900, 0, 0),
(1368, 1211, 'DSCN2321-001.jpg', 1200, 900, 0, 0),
(1372, 1214, 'DSCN2376.jpg', 1200, 900, 0, 0),
(1373, 1214, 'DSCN2377.jpg', 1200, 900, 0, 0),
(1374, 1214, 'DSCN2378.jpg', 1200, 708, 0, 0),
(1375, 1211, 'Julian-KS-1-001.jpg', 1200, 1600, 0, 0),
(1376, 1215, 'DSCN2342-001.jpg', 1200, 1600, 0, 0),
(1377, 1215, 'DSCN2343-001.jpg', 1200, 1600, 0, 0),
(1378, 1215, 'DSCN2344-001.jpg', 1200, 1600, 0, 0),
(1383, 1217, 'DSCN2289-001.jpg', 1200, 1600, 0, 0),
(1384, 1217, 'DSCN2290-001.jpg', 1200, 1600, 0, 0),
(1385, 1217, 'DSCN2291-001.jpg', 1200, 1600, 0, 0),
(1386, 1218, 'DSCN2274-001.jpg', 1200, 900, 0, 0),
(1387, 1218, 'DSCN2275-001.jpg', 1200, 900, 0, 0),
(1388, 1218, 'DSCN2276-001.jpg', 1200, 900, 0, 0),
(1389, 1218, 'DSCN2277-001.jpg', 1200, 900, 0, 0),
(1390, 1219, 'DSCN2292-001.jpg', 1200, 1600, 0, 0),
(1391, 1219, 'DSCN2293-001.jpg', 1200, 1600, 0, 0),
(1392, 1219, 'DSCN2294-001.jpg', 1200, 769, 0, 0),
(1393, 1220, 'DSCN2278-001.jpg', 1200, 900, 0, 0),
(1394, 1220, 'DSCN2279-001.jpg', 1200, 900, 0, 0),
(1395, 1220, 'DSCN2280-001.jpg', 1200, 900, 0, 0),
(1396, 1220, 'DSCN2281-001.jpg', 1200, 900, 0, 0),
(1397, 1221, 'DSCN2335-001.jpg', 1200, 1555, 0, 0),
(1398, 1221, 'DSCN2336-001.jpg', 1200, 1555, 0, 0),
(1399, 1221, 'DSCN2337-001.jpg', 1200, 1627, 0, 0),
(1400, 1221, 'DSCN2338-001.jpg', 1200, 1820, 0, 0),
(1401, 1222, 'DSCN2339-001.jpg', 1200, 900, 0, 0),
(1402, 1222, 'DSCN2340-001.jpg', 1200, 900, 0, 0),
(1403, 1222, 'DSCN2341-001.jpg', 1200, 928, 0, 0);

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

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_desc`, `product_artist_no`, `product_price`, `product_type_no`, `product_pic`, `product_star`, `product_ref`) VALUES
(979, 'Miniature Vase', 'Height - 8.5cm\r\nDiameter - 5.5cm', 158, '£225', 8, '', '', 'SL1CO'),
(1130, 'Stoneware slab vessel with handle', 'Height - 17cm\r\nWidth - 21cm\r\nDepth - 7cm', 185, '£145', 8, '', '', 'PH2C'),
(1150, 'Large earthenware bowl', 'Blue and metallic black glaze to exterior\r\nYellow glaze to interior\r\nDiameter - 35.5cm\r\nHeight - 15cm\r\n', 187, '£250', 8, '', '', 'RP1C'),
(1149, 'Faceted cylinder vase I', 'Thick white glaze\r\nHeight - 21.5cm\r\nDiameter - 7.5cm', 199, '£95', 8, '', '0', 'AC1C'),
(1148, 'Faceted cylinder vase II', 'Tenmoku glaze\r\nHeight - 23cm\r\nDiameter - 5.5cm', 199, '£95', 8, '', '0', 'AC2C'),
(1145, 'Stoneware Bottle', 'Black glaze over iron slip with nuka glaze top\r\nHeight - 24cm\r\nDiameter - 17cm', 193, '£115', 8, '', '0', 'MG1C'),
(1146, 'Bowl with three leaves - brown', 'Diameter - 17.5cm\r\nHeight - 8.5cm', 59, '£140', 8, '', '', 'SM5C'),
(437, 'Habour Town', 'Acrylic on board\r\n30cm x 30cm', 97, '£325', 14, 'DSCF1352.JPG', '0', 'AD2P'),
(843, '\"A Startled Woman\"', 'Etching\r\nImage size - 6\" x 8\"', 149, '£165', 14, '', '', 'DS1P'),
(951, 'Mountain Weather', 'Oil &amp; wax monotype\r\nImage size - 14.5\" x 10\"\r\nFramed', 12, '£340', 14, '', '0', 'KK1P'),
(1115, 'Cat', 'Stoneware', 126, 'NFS', 8, '', '', 'MM1C'),
(839, 'Wanden Farm', 'Oil on board\r\nImage size - 38cm x 34cm', 145, '£185', 14, '', '', 'NS1P'),
(1168, 'Porcelain dish with inlaid decoration', 'Stylized flower inlay in the Korean style\r\nDiameter - 17cm\r\nHeight - 3.5cm', 84, '£185', 8, '', '', 'ASG1C'),
(1216, 'Four sided bottle', 'Stoneware\r\nHeight - 24.5cm\r\nWidth - 14cm', 193, '£110', 8, '', '', 'MG1C'),
(1170, 'Raku Teapot form', 'Raku\r\nHeight - 28.5cm\r\nWidth - 34cm\r\nDepth - 9cm', 160, '£450', 8, '', '0', 'DHJ1C'),
(248, 'The adration of the Magi/Kings', 'After Bruegel - The Adoration of the Magi/Kings - 1564\r\nWatercolour & gouache\r\nImage size - 36cm x 43cm\r\nFrame size - 54cm x 68cm', 66, '225', 14, 'DSCF0385.jpg', '', 'RA2P'),
(611, 'Large Cone Bowl', 'Bone china with hand carved decoration\r\nDiameter - 11.5cm   Height - 17cm', 24, '£275', 8, 'DSCF2654.JPG', '0', 'PF1C'),
(466, 'Reclining nude', 'Screenprint & pencil drawing 8/10\r\nFramed - 55cm x 52cn', 106, '85', 14, 'DSCF1433.JPG', '', 'CH1P'),
(269, 'Dish', 'Stoneware dish\r\nSlab built, wax and latex resist with transparent glaze\r\n18.5cm x 24cm', 13, '45', 8, 'DSCF0500.jpg', '', 'MM3C'),
(277, 'Fruit Dish', 'Earthenware dish with handles\r\nSlip decoration\r\n45cm x 33cm - 9cmH', 70, '100', 8, 'DSCF0518.jpg', '', 'Taja1C'),
(1179, 'Large Rectangular Dish', 'Stoneware \r\nLength - 40cm\r\nWidth - 27cm\r\nDepth -  4.5cm', 212, '£195', 8, '', '0', 'WP1C'),
(467, 'Howk', 'Stoneware sculpture\r\nHeight - 20cm', 107, '59', 8, 'DSCF1431.JPG', '', 'GH1C'),
(1225, 'Large Bowl', 'Stoneware bowl with Tenmoku Glaze\r\nDiameter - 33cm\r\nHeight - 9.5cm', 199, '£175', 8, '', '', 'AC3C'),
(1195, 'Cornish Sea 3', 'Glass vase\r\nHeight - 16cm', 17, '£180', 10, '', '', 'LG3G'),
(1224, 'Bowl', 'Bowl with lustre decoration\r\nDiameter - 19m\r\nHeight - 13.5cm', 221, '£265', 8, '', '0', 'ST1C'),
(1194, 'Cornish Sea 2', 'Glass vase \r\nHeight - 18.5cm', 17, '£180', 10, '', '', 'LC2G'),
(1127, 'Cornish Sea 4', 'Height - 23cm\r\nWidth - 11.5cm', 17, '£180', 10, '', '', 'LC4G'),
(1129, 'Stoneware vase with red collar', 'Height - 12cm\r\nDiameter - 14cm', 185, '£145', 8, '', '', 'PE1C'),
(1087, 'Bird Mugs', 'Height - 9.5cm\r\nDiameter - 8cm', 59, '£46 each', 8, '', '1', 'SM8C'),
(1144, 'Ginger Jar', 'Salt glazed  stoneware\r\nHeight 20cm\r\nDiameter - 17cm', 202, '£185', 8, '', '0', 'RT1C'),
(1091, '\"PZ3\"', 'Sculpture (wood)\r\nHeight - 46cm\r\nWidth - 36cm\r\nDepth - 9cm', 172, '£355', 16, '', '0', 'DN1OT'),
(1156, 'Large Bowl', 'Stoneware with red iron glaze\r\nDiameter - 32.5cm\r\nHeight - 8.5cm', 188, '£350', 8, '', '', 'RF1C'),
(1092, 'Male Nude Sculpture', 'Height - 54cm\r\nWidth - 29cm\r\nDepth - 23cm', 171, '£395', 8, '', '', 'KK1C'),
(1167, 'Porcelain dish with inlaid decoration', 'Stylized flower inlay in the Korean style\r\nDiameter - 17cm\r\nHeight - 3.5cm', 0, '£185', 8, '', '', 'ASG1C'),
(1093, 'Clock', 'Ceramic clock\r\nHeight - 22.5cm\r\nWidth - 20cm\r\nDepth - 7cm', 168, '£245', 8, '', '1', 'AP!C'),
(1196, 'Cornish Sea 6', 'Glass vase\r\nHeight - 16.5cm', 17, '£175', 10, '', '', 'LG6G'),
(1136, 'Bowl with incised decoration', 'Height -7cm\r\nDiameter - 22cm', 195, '£165', 8, '', '', 'PL1C'),
(1112, 'Abstract  painting', 'Oil on canvas in a gilt frame\r\nFrame size - 93cm x 81cm\r\nImage size - 75cm x 63cm\r\n\r\nProvenance\r\nIncluded with other fine art from the collection of the late Leon Shepherdson(Stamco) in an auction by Burstow &amp; Hewett in 2008', 183, '£695', 14, '', '0', 'AUK1P'),
(1104, 'Lidded Pot', 'Porcelain\r\nDiameter - £8.5cm\r\nHeight - 7.5cm', 109, '£350', 8, '', '0', 'DL1C'),
(1105, 'Tea Pot', 'Stoneware\r\nHeight - 18.5cm\r\nWidth - 26cm', 122, '£125', 8, '', '1', 'SC1C'),
(1106, 'Jug', 'Stoneware\r\nHeight - 14.5cm\r\nWidth - 16.5cm', 40, '£350', 8, '', '', 'KPB1C'),
(952, 'Small Still Life', 'Oil &amp; wax monotype \r\nImage size - 15\" x 11\"\r\nFramed', 157, '£370', 14, '', '0', 'KK2P'),
(1173, 'Octagonal dish', 'Stoneware\r\nDiameter - 24cm\r\nHeight - 4cm', 209, '£85', 8, '', '0', 'MF1C'),
(1193, 'Three faceted vases ', 'Red stoneware with dry pale green galze\r\nTall octagonal vase - 30cm H\r\nSlender octagonal vase - 25cm H\r\nPentagon vase - 11.5cm H', 173, '£395', 8, '', '0', 'EM1C'),
(1177, 'Large Dish', 'Stoneware\r\nDiameter - 40cm\r\nHeight  - 6cm', 213, '£175', 8, '', '0', 'JC1C'),
(1206, 'Owl', 'Ceramic sculpture - stoneware\r\nHeight - 20cm\r\nWidth - 10cm\r\nDepth  - 5cm', 216, '£215', 8, '', '', 'NM2C'),
(616, 'Slender Form III', 'Bone china with hand carved decoration\r\nDiameter - 7cm    Height 14.5cm', 24, '£155', 8, 'DSCF2657.JPG', '0', 'PF5C'),
(1172, '\"Elixir of Life\"', 'Stoneware sculpture\r\nHeight - 24cm\r\nWidth - 30cm\r\nDepth - 21cm', 117, '£875', 8, '', '0', 'PL1C'),
(442, 'Deck Chair', 'Watercolour\r\n45cm x 59cm', 99, '175', 14, 'DSCF1347.JPG', '', 'HS1P'),
(513, 'Les Come Finistere', 'Oil on Paper\r\nImage size - 24cm x 32cm', 125, '145', 14, 'DSCF1781.JPG', '', 'NK3P'),
(1226, 'Tea pot', 'This was made for Wivenhoe Pottery around 1955\r\nPurchased from Primavera London\r\nHeight - 12cm\r\nDiameter - 15cm\r\n', 222, '£135', 8, '', '0', 'JD1C'),
(1159, 'Lidded pot ', 'White stoneware with dry white glaze\r\nHeight - 19cm\r\nDiameter - 14cm', 162, '£185', 8, '', '0', 'ASG1C'),
(1223, 'Big Wave', 'Glass vase\r\nHeight - 21cm', 16, '£230', 10, '', '', 'NSC2G'),
(1189, '\"Figure holding a bird\"', 'Stoneware Sculpture\r\nHeight - 28cm\r\nWidth - 25cm\r\nDepth - 29cm', 26, '£280', 8, '', '0', 'EM1C'),
(1162, 'Large Jug', 'Stoneware \r\nAmerican potter\r\nHeight - 20cm\r\nDiameter - 18cm', 163, '£160', 8, '', '', 'JG1C'),
(1163, 'Hippo with bird on its back', 'Hippo with cane handle. \r\nTenmoku glaze.\r\nHeight - 21cn (incl.handle)\r\nLength - 20cm\r\nWidth - 10cm', 49, 'Reserved', 8, '', '0', 'SEN1C'),
(1164, 'The Scholar', 'Oil on paper\r\nImage size - 33.5cm x 25cm\r\nFrame size - 53cm x 45cm', 208, '£350', 14, '', '', 'GM1P'),
(1165, 'The Leather Boat', 'Oil on Paper\r\nImage size - 33.5cm x 25cm\r\nFrame size - 53cm x 45cm', 208, '£350', 14, '', '', 'GM2P'),
(1138, 'Jug', 'Salt glaze with tear drop decoration\r\nHeight - 20cm', 188, '£145', 8, '', '', 'RF1C'),
(1139, 'Large Box - Birds', 'Porcelain with Kutani style decoration\r\nHeight -30.5cm\r\nWidth -19cm\r\nDepth -8cm', 95, '£220', 8, '', '0', 'RC1C'),
(1140, 'Tall Box - Bird', 'Porcelain with Kutani style decoration\r\nHeight - 31cm\r\nWidth - 14cm\r\nDepth - 8cm', 95, '£200', 8, '', '', 'RC2C'),
(1141, 'Large dish - Birds', 'Porcelain with Kutani style decoration\r\nDiameter - 37cm\r\nHeight - 8cm', 95, '£350', 8, '', '0', 'RC3C'),
(1142, 'Bowl with copper red glaze', 'Porcelain\r\nDiameter - 23cm\r\nHeight - 9cm', 196, '£165', 8, '', '', 'GW1C'),
(1192, 'Sailing boat \"Cleopatra\"', 'Wood\r\nHeight - 9cm\r\nWidth - 15cm', 112, '£225', 16, '', '0', 'JM2O'),
(1204, 'Round Vase ', 'Hand built stoneware\r\nBlack glaze, purple and red eglaze decoration\r\nHeight - 23cm\r\nDiameter - 23 cm', 192, '£315', 8, '', '', 'JKS1C'),
(1191, 'Fishing boat \"Willie\"', 'Wood \r\nHeight - 10cm\r\nWidth - 13cm', 112, '£225', 16, '', '0', 'JM1O'),
(1155, 'Casserole pot', 'Stoneware with Tenmoku glaze\r\nHeight - 17.5cm\r\nDiameter - 22cm', 207, '£85', 8, '', '', 'LP!C'),
(1183, 'Sculpture - Swimmers', 'Stoneware\r\nFigure 1 Height - 56cm\r\nFigure 2 Height - 43.5cm', 166, '£650', 8, '', '', 'JM1C'),
(1184, 'Bowl with Nerikomi decoration', 'Diameter - 20cm\r\nHeight - 5cm', 155, '£40', 8, '', '', 'MM1C'),
(1185, 'Plate', 'Stoneware\r\nDiameter - 23.5cm\r\n', 212, '£37', 8, '', '0', 'WP2C'),
(1186, 'Plate', 'Stoneware\r\nDiameter - 28cm', 212, '£55', 8, '', '', 'WP3C'),
(1187, 'Dish with two handles', 'Stoneware\r\nDiameter - 29cm\r\nHeight - 9cm', 214, '£76', 8, '', '0', 'PS1C'),
(1188, 'Plate with female nude', 'Stoneware with painted fire\r\n32cm x 44cm\r\nDepth - 6cm', 159, '£375', 8, '', '', 'DD2C'),
(1190, 'Sculpture ', 'After Constantin Brancusi\r\nPortland stone (very heavy)\r\n55.5cm x 26.5cm x 17cm', 183, '£450', 16, '', '0', 'CB1O'),
(1171, 'Large Form', 'Stoneware\r\nHeight - 38.5cm\r\nWidth -  47cm\r\nDepth -  18cm', 159, '£2,950', 8, '', '0', 'DD1C'),
(1102, '\"Hitchhiking Queen\"', 'Wood carving\r\nHeight - 15.5cm\r\nWidth - 21.7cm\r\nDepth - 3.7cm', 179, '£185', 16, '', '', 'UN1OT'),
(1132, 'Vase with pale turquoise glaze', 'Height -16.5cm\r\nDiameter - 10cm', 186, '£225', 8, '', '', 'PB1C'),
(1166, 'Large bowl with plumb design', 'Earthenware \r\nDiameter -  26.5cm\r\nHeight - 9.5cm', 78, '£95', 8, '', '', 'TF1C'),
(1134, 'Porcelain vase with celadon glaze', 'Height - 12.5cm\r\nDiameter - 10cm', 194, '£86', 8, '', '', 'TC1C'),
(1081, ' Papier-mâché doll', 'Height - 16cm\r\nWidth - £10cm', 177, '£235', 16, '', '0', 'JA1OT'),
(1084, 'Hand Painted fabric doll', 'Height - 37cm\r\nWidth - 20cm', 174, '£85', 16, '', '0', 'JD1OT'),
(730, 'Large Oakleaf Vase', 'Earthenware Vase\r\nHeight - 31cms', 137, '76', 8, 'DSCF2825.JPG', '', 'RJ6C'),
(733, 'Large Magnolia Lamp  Base', 'Earthenware\r\n\r\nHeight - Base (37cms) + Metal socket (6cms) ', 137, '160', 8, 'DSCF2829.JPG', '', 'RJ9C'),
(1214, 'Large Owl dish with handles', 'Stoneware dish\r\nDiameter - 38cm\r\nHeight - 9cm', 218, '£145', 8, '', '0', 'DE1C'),
(1000, '\'OM\' Vase\'96', 'Height - 16.5cm', 16, '£195', 10, '', '', 'NSC5G'),
(1199, 'Cornish Sea 1', 'Glass vase\r\nHeight - 18cm\r\nWidth - 12.5cm', 17, '£180', 10, '', '0', 'LC1G'),
(1205, 'Pigeon', 'Ceramic Sculpture - Porcelain\r\nHeight - 18cm\r\nWidth - 15cm\r\nDepth - 8cm', 216, '£215', 8, '', '', 'NM1C'),
(1207, 'Large footed dish', 'Stoneware - saltgalze\r\nWidth - 31cm square\r\nHeight - 7cm', 217, '£245', 8, '', '0', 'JH1C'),
(1208, 'Bowl with handle', 'Stoneware - salt glaze\r\nDiameter - 21cm\r\nHeight - 8cm', 217, '75', 8, '', '', 'JH2C'),
(1209, 'Large three sided vase', 'Stoneware handbuilt vase\r\nHeight - 38cm\r\nDiameter - 26cm', 192, '£560', 8, '', '0', 'JKS2C'),
(1210, 'Slender vase', 'Handbuilt stoneware vase\r\nHeight - 27.5cm\r\nWidth - 13cm\r\nDepth - 9cm', 192, '£285', 8, '', '', 'JKS3C'),
(1211, 'Vase with turquoise interior', 'Handbuilt stoneware\r\nHeight - 22cm\r\nWidth - 20cm\r\nDepth - 11cm', 192, '£215', 8, '', '0', 'JKS4C'),
(1215, 'Porcelain lidded Jar', 'Thrown, textured, and incised \r\nHeight - 22.5cm\r\nDiameter - 16cm', 185, '£125', 8, '', '0', 'PE3C'),
(1217, 'Jug', 'Stoneware with abstract tree design\r\nHeight - 17cm', 218, '£48', 8, '', '', 'DE2'),
(1218, 'Vase with pink and red', 'Handbuilt - wrapped sheet of clay\r\nHeight - 13.5cm\r\nWidth - 12.5\r\nDepth - 10.5', 220, '£195', 8, '', '', 'CU1C'),
(1219, 'Large dish with school of fish', 'Stoneware\r\nDiameter - 38cm\r\nHeight - 5cm', 219, '£245', 8, '', '', 'LK1C'),
(1220, 'Lidded pot', 'Stoneware\r\nDiameter - 11cm\r\nHeight - 7cm', 202, '£65', 8, '', '', 'RT2C'),
(1221, 'Jug - leaves &amp; stalks', 'Earthenware\r\nHeight - 19cm', 59, '£180', 8, '', '', 'SM3C'),
(1222, 'Dish with leaves &amp; stalks', 'Earthenware\r\nDiameter - 27cm\r\nHeight - 4.5cm', 59, '£200', 8, '', '0', 'SM4C');

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
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `type_desc`, `type_medium`) VALUES
(8, 'Ceramics', 'Medium', 'Medium'),
(10, 'Glass', 'Medium', 'Medium'),
(14, 'Paintings', 'Medium', 'Medium'),
(16, 'Other', 'Medium', 'Medium');

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
  MODIFY `artist_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `artist_new`
--
ALTER TABLE `artist_new`
  MODIFY `artist_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `otheruser`
--
ALTER TABLE `otheruser`
  MODIFY `otheruser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pic`
--
ALTER TABLE `pic`
  MODIFY `pic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1424;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1242;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
