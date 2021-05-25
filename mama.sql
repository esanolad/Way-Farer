-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 08:04 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `casemanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblassignments`
--

CREATE TABLE `tblassignments` (
  `assignmentId` int(11) NOT NULL,
  `caseId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `assignmentDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblassignments`
--

INSERT INTO `tblassignments` (`assignmentId`, `caseId`, `userId`, `assignmentDate`) VALUES
(1, 19, 4, '2021-05-07'),
(2, 19, 5, '2021-05-07'),
(3, 19, 6, '2021-05-07'),
(4, 19, 2, '2021-05-07'),
(5, 3, 2, '2021-05-07'),
(8, 3, 9, '2021-05-07'),
(9, 12, 22, '2021-05-07'),
(10, 4, 5, '2021-05-07'),
(11, 12, 16, '2021-05-07'),
(12, 4, 3, '2021-05-07'),
(13, 5, 3, '2021-05-07'),
(14, 13, 16, '2021-05-07'),
(15, 5, 5, '2021-05-07'),
(16, 5, 22, '2021-05-07'),
(18, 14, 13, '2021-05-07'),
(22, 8, 3, '2021-05-07'),
(23, 10, 1, '2021-05-07'),
(24, 10, 2, '2021-05-07'),
(37, 20, 3, '2021-05-10'),
(38, 20, 18, '2021-05-10'),
(39, 20, 17, '2021-05-10'),
(40, 20, 8, '2021-05-10'),
(41, 21, 15, '2021-05-11'),
(42, 21, 5, '2021-05-11'),
(43, 21, 3, '2021-05-11'),
(44, 21, 4, '2021-05-11'),
(45, 22, 15, '2021-05-11'),
(46, 22, 11, '2021-05-11'),
(47, 22, 12, '2021-05-11'),
(48, 26, 5, '2021-05-11'),
(49, 26, 3, '2021-05-11'),
(50, 27, 6, '2021-05-12'),
(51, 27, 2, '2021-05-12'),
(52, 27, 3, '2021-05-12'),
(53, 27, 5, '2021-05-12'),
(54, 28, 7, '2021-05-12'),
(55, 29, 5, '2021-05-12'),
(56, 30, 6, '2021-05-12'),
(57, 31, 7, '2021-05-12'),
(58, 32, 7, '2021-05-12'),
(59, 33, 4, '2021-05-12'),
(60, 33, 6, '2021-05-12'),
(61, 34, 5, '2021-05-13'),
(62, 34, 4, '2021-05-13'),
(63, 35, 1, '2021-05-13'),
(64, 36, 4, '2021-05-13'),
(65, 37, 4, '2021-05-13'),
(66, 38, 4, '2021-05-14'),
(73, 7, 2, '2021-05-18'),
(74, 7, 7, '2021-05-18'),
(75, 11, 3, '2021-05-18'),
(76, 6, 19, '2021-05-18'),
(77, 6, 5, '2021-05-18'),
(78, 9, 5, '2021-05-18'),
(79, 9, 3, '2021-05-18'),
(80, 9, 1, '2021-05-18'),
(81, 15, 11, '2021-05-18'),
(82, 15, 2, '2021-05-18'),
(83, 15, 3, '2021-05-18'),
(84, 15, 1, '2021-05-18'),
(85, 15, 7, '2021-05-18'),
(86, 16, 10, '2021-05-18'),
(87, 16, 13, '2021-05-18'),
(88, 16, 6, '2021-05-18'),
(89, 16, 1, '2021-05-18'),
(90, 16, 2, '2021-05-18'),
(91, 39, 5, '2021-05-18'),
(92, 39, 7, '2021-05-18'),
(93, 39, 4, '2021-05-18'),
(98, 40, 8, '2021-05-24'),
(99, 40, 7, '2021-05-24'),
(100, 40, 13, '2021-05-24'),
(101, 40, 2, '2021-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `tblcases`
--

CREATE TABLE `tblcases` (
  `caseId` int(11) NOT NULL,
  `caseName` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text NOT NULL,
  `createUser` int(11) NOT NULL,
  `createDate` text NOT NULL DEFAULT current_timestamp(),
  `createFrom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcases`
--

INSERT INTO `tblcases` (`caseId`, `caseName`, `status`, `description`, `createUser`, `createDate`, `createFrom`) VALUES
(2, 'Hala', 0, 'this is a test ', 1, '11/04/2021', 0),
(3, 'sala', 1, 'this is a test ', 1, '2019-05-13', 0),
(4, 'Maja', 1, 'this is a test ', 1, '11/04/2021', 0),
(5, 'IPO', 1, 'this is a test ', 1, '11/04/2021', 0),
(6, 'Super', 1, 'this is a test ', 1, '11/04/2021', 0),
(7, 'Raja', 1, 'this is a test update', 1, '11/04/2021', 0),
(8, 'Suver', 1, 'this is a test ', 1, '11/04/2021', 0),
(9, 'Majab', 1, 'this is a test ', 1, '11/04/2021', 0),
(10, 'asigni', 1, 'this is a test ', 1, '11/04/2021', 0),
(11, 'asi', 1, 'this is a test update', 1, '11/04/2021', 0),
(12, 'asigblas', 1, 'this is a test ', 1, '11/04/2021', 0),
(13, 'asigb', 1, 'this is a test ', 1, '11/04/2021', 0),
(14, 'asigdf', 1, 'this is a test ', 1, '11/04/2021', 0),
(15, 'Ogun', 1, 'this is a test ', 1, '11/04/2021', 0),
(16, 'salamon', 1, 'this is a test ', 1, '12/04/2021', 0),
(17, 'salam', 1, 'this is a test ', 1, '11/04/2021', 0),
(18, 'salababa', 1, 'this is a test ', 1, '11/04/2021', 0),
(19, 'sala', 1, 'this is a test ', 1, '11/04/2021', 0),
(20, 'Phone', 0, 'this is not a drill', 2, '11/04/2021', 0),
(21, 'salamandeen', 1, 'this is a test ', 1, '11/04/2021', 0),
(22, 'Soal', 1, 'this is a test ', 1, '11/05/2021', 0),
(25, 'maksi', 1, 'frontend', 1, '11/04/2021', 0),
(26, 'makodk', 1, 'frontend', 1, '11/04/2021', 0),
(27, 'front end name', 1, 'testing front end', 1, '11/04/2021', 0),
(28, 'maja majad', 1, 'sad', 1, '11/04/2021', 0),
(29, 'bootstrap', 1, 'maja', 1, '11/04/2021', 0),
(30, 'spinner', 1, 'loading', 1, '11/04/2021', 0),
(31, 'spin', 1, 'spin', 1, '11/05/2021', 0),
(32, 'off spinner', 1, 'maja', 1, '11/04/2021', 0),
(33, 'alert', 1, 'frontend', 1, '11/04/2021', 0),
(34, 'maja maja', 1, 'frontend', 1, '11/04/2021', 0),
(35, 'status', 1, 'status', 1, '01/04/2021', 0),
(36, 'status2', 1, 'true status', 1, '05/13/2021', 0),
(37, 'created from', 1, 'created from', 1, '05/11/2021', 0),
(38, 'mki', 1, 'mi', 1, '05/20/2021', 0),
(39, 'add case', 1, 'adding of new case', 1, '05/18/2021', 0),
(40, 'presentation', 1, 'presentation', 1, '05/24/2021', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblinterceptions`
--

CREATE TABLE `tblinterceptions` (
  `interceptId` int(11) NOT NULL,
  `phoneNumber` text NOT NULL,
  `startDate` text NOT NULL DEFAULT current_timestamp(),
  `endDate` text NOT NULL,
  `description` text NOT NULL,
  `language` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `approvedby` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblinterceptions`
--

INSERT INTO `tblinterceptions` (`interceptId`, `phoneNumber`, `startDate`, `endDate`, `description`, `language`, `rating`, `targetId`, `userId`, `approvedby`) VALUES
(3, '234817010123', '05/19/2020', '05/19/2021', 'test intercept', '', 0, 3, 1, 'DSIGINT'),
(4, '234810010123', '05/19/2020', '05/19/2021', 'test intercept', '', 0, 7, 1, 'DSIGINT'),
(5, '234813010128', '05/19/2020', '05/19/2021', 'test intercept', 'Kanuri', 4, 4, 1, 'DSIGINT'),
(6, '234813410123', '05/19/2020', '05/19/2021', 'test intercept', '', 0, 4, 1, 'DSIGINT'),
(7, '234813010123', '05/19/2020', '05/19/2021', 'test intercept', '', 0, 7, 1, 'DSIGINT'),
(8, '234813010121', '05/19/2020', '05/19/2021', 'test intercept', '', 0, 8, 1, 'DSIGINT'),
(9, '234081101568', '05/14/2021', '05/21/2021', 'maja', 'English', 3, 20, 1, 'DDTECHINT'),
(10, '234081101561', '05/14/2021', '05/21/2021', 'maja', 'Yoruba', 3, 20, 1, 'DDTECHINT'),
(11, '234081101562', '05/14/2021', '05/21/2021', 'maja', 'Yoruba', 3, 20, 1, 'DDTECHINT'),
(13, '234081101552', '05/14/2021', '05/21/2021', 'maja', 'Yoruba', 3, 20, 1, 'DDTECHINT'),
(14, '234081101552', '05/14/2021', '05/21/2021', 'maja', 'Yoruba', 3, 23, 1, 'DDTECHINT'),
(15, '234081101561', '05/14/2021', '05/21/2021', 'maja', 'Yoruba', 3, 23, 1, 'DDTECHINT'),
(16, '234081101568', '05/14/2021', '05/21/2021', 'maja', 'Yoruba', 3, 23, 1, 'DDTECHINT'),
(17, '234081101562', '05/14/2021', '05/21/2021', 'maja', 'Yoruba', 3, 23, 1, 'DDTECHINT'),
(18, '234081101568', '05/14/2021', '05/21/2021', 'maja', 'Yoruba', 3, 26, 1, 'DDTECHINT'),
(19, '234081101562', '05/14/2021', '05/21/2021', 'maja', 'Yoruba', 3, 26, 1, 'DDTECHINT'),
(20, '234081101561', '05/14/2021', '05/21/2021', 'maja', 'Yoruba', 3, 26, 1, 'DDTECHINT'),
(21, '234081101552', '05/14/2021', '05/21/2021', 'maja', 'Yoruba', 3, 26, 1, 'DDTECHINT'),
(22, '234081101552', '05/14/2021', '05/21/2021', 'maja', 'Yoruba', 3, 24, 1, 'DDTECHINT'),
(23, '234081101561', '05/14/2021', '05/21/2021', 'maja', 'Yoruba', 3, 24, 1, 'DDTECHINT'),
(25, '1232', '05/19/2021', '05/19/2021', 'maja', 'Kanuri', 5, 24, 1, 'DDTECHINT'),
(26, '23454', '05/19/2021', '05/19/2021', 'maja', 'Kanuri', 5, 24, 1, 'DDTECHINT'),
(27, '122', '05/19/2021', '05/19/2021', 'maja', 'Kanuri', 5, 22, 1, 'DDTECHINT'),
(28, '234', '05/19/2021', '05/19/2021', 'maja', 'Kanuri', 5, 22, 1, 'DDTECHINT'),
(35, '345', '05/13/2021', '05/27/2021', 'maja', 'Yoruba', 2, 22, 1, 'DDTECHINT'),
(36, '654', '05/13/2021', '05/27/2021', 'maja', 'Yoruba', 2, 22, 1, 'DDTECHINT'),
(37, '456', '05/13/2021', '05/19/2021', 'frontend', 'Igbo', 0, 27, 1, 'DDTECHINT'),
(38, '45', '05/13/2021', '05/19/2021', 'frontend', 'Igbo', 0, 27, 1, 'DDTECHINT'),
(39, '12', '05/13/2021', '05/19/2021', 'frontend', 'Igbo', 0, 27, 1, 'DDTECHINT'),
(40, '4562', '05/13/2021', '05/19/2021', 'frontend', 'Igbo', 0, 27, 1, 'DDTECHINT'),
(41, '453', '05/13/2021', '05/19/2021', 'frontend', 'Igbo', 0, 27, 1, 'DDTECHINT'),
(42, '4562', '05/13/2021', '05/19/2021', 'frontend', 'Igbo', 0, 7, 1, 'DDTECHINT'),
(43, '453', '05/13/2021', '05/19/2021', 'frontend', 'Igbo', 0, 7, 1, 'DDTECHINT'),
(44, '343', '05/14/2021', '05/29/2021', 'frontend', 'Kanuri', 2, 27, 1, 'DDTECHINT'),
(45, '45323', '05/14/2021', '05/29/2021', 'frontend', 'Igbo', 2, 27, 1, 'DDTECHINT'),
(46, '4537645', '05/14/2021', '05/29/2021', 'frontend', 'Igbo', 2, 27, 1, 'DDTECHINT'),
(47, '34234', '05/14/2021', '05/29/2021', 'frontend', 'Igbo', 2, 27, 1, 'DDTECHINT'),
(48, '655322', '05/14/2021', '05/29/2021', 'frontend', 'Igbo', 2, 27, 1, 'DDTECHINT'),
(49, '655', '05/14/2021', '05/29/2021', 'frontend', 'Igbo', 2, 27, 1, 'DDTECHINT'),
(50, '111', '05/18/2021', '05/13/2021', 'frontend', '', 0, 19, 1, 'DDTECHINT'),
(51, '4444', '05/18/2021', '05/13/2021', 'frontend', '', 0, 19, 1, 'DDTECHINT'),
(52, '5566', '05/18/2021', '05/13/2021', 'frontend', '', 0, 19, 1, 'DDTECHINT'),
(53, '233', '2021-05-12', '2021-05-13', '', '', 0, 22, 1, 'DDTECHINT'),
(54, '435', '2021-05-12', '2021-05-13', '', '', 0, 22, 1, 'DDTECHINT'),
(55, '56', '2021-05-12', '2021-05-13', '', '', 0, 22, 1, 'DDTECHINT'),
(56, '232', '2021-05-19', '2021-05-20', 'frontend', '', 0, 7, 1, 'DDTECHINT'),
(57, '765', '2021-05-19', '2021-05-20', 'frontend', '', 0, 7, 1, 'DDTECHINT'),
(58, '35423', '2021-05-19', '2021-05-20', 'frontend', '', 0, 7, 1, 'DDTECHINT'),
(59, '35423123', '2021-05-19', '2021-05-20', 'frontend', '', 0, 7, 1, 'DDTECHINT'),
(60, '34', '05/04/2021', '05/26/2021', 'sad', '', 0, 19, 1, 'DDTECHINT'),
(61, '765', '05/04/2021', '05/26/2021', 'sad', '', 0, 19, 1, 'DDTECHINT'),
(62, '56', '05/11/2021', '05/12/2021', 'frontend', '', 0, 27, 1, 'DDTECHINT'),
(63, '76', '05/11/2021', '05/12/2021', 'frontend', '', 0, 27, 1, 'DDTECHINT'),
(64, '333', '05/20/2021', '05/29/2021', 'lk', 'Hausa', NULL, 27, 1, 'DDTECHINT'),
(65, '2348003423', '05/18/2021', '06/24/2021', 'flow', 'Igbo', 4, 29, 1, 'DSIGINT'),
(66, '23498054', '05/18/2021', '06/24/2021', 'flow', 'Igbo', 4, 29, 1, 'DSIGINT'),
(67, '234455', '05/18/2021', '06/24/2021', 'flow', 'Igbo', 4, 29, 1, 'DSIGINT'),
(68, '234890', '05/04/2021', '05/19/2021', 'duplicate one', 'English', NULL, 29, 1, 'DSIGINT'),
(69, '2344590', '05/04/2021', '05/19/2021', 'duplicate one', 'English', NULL, 29, 1, 'DSIGINT'),
(70, '234455', '05/18/2021', '05/27/2021', 'maja', 'Kanuri', NULL, 30, 1, 'DSIGINT'),
(71, '23458990', '05/12/2021', '05/26/2021', '2345', '', 2, 27, 1, 'DD TECHINT'),
(72, '65423', '05/25/2021', '05/27/2021', '5643', NULL, NULL, 24, 1, 'DSIGINT'),
(73, '23456', '05/13/2021', '05/26/2021', 'maja', 'Hausa', 4, 27, 1, 'DSIGINT'),
(74, '43244', '05/12/2021', '05/27/2021', '', 'Kanuri', 2, 27, 1, 'DD TECHINT'),
(75, '5423', '05/05/2021', '05/26/2021', 'sczx', 'Hausa', NULL, 27, 1, 'DD TECHINT'),
(76, '345678', '05/19/2021', '05/27/2021', 'frontend edn', 'Igbo', 4, 31, 1, 'DD TECHINT'),
(77, '5433', '05/12/2021', '05/25/2021', 'frontend', 'Yoruba', 5, 30, 1, 'DD TECHINT'),
(78, '689', '05/21/2021', '05/27/2021', 'frontend', 'Kanuri', 4, 30, 1, 'DD TECHINT'),
(79, '2345', '05/06/2021', '05/27/2021', 'frontend', 'Yoruba', 3, 27, 1, 'DD TECHINT'),
(80, '4567', '05/20/2021', '05/27/2021', 'gh', 'Arabic', 3, 30, 1, 'DD TECHINT'),
(81, '453523', '05/26/2021', '05/28/2021', '54erd', 'Yoruba', 3, 30, 1, 'DSIGINT'),
(82, '452342', '05/19/2021', '05/26/2021', 'frontend', 'Arabic', 3, 30, 1, 'DD TECHINT'),
(83, '5467', '05/19/2021', '05/25/2021', 'maja', 'Kanuri', 3, 27, 1, 'DD TECHINT'),
(84, '456', '05/12/2021', '05/27/2021', 'sad', 'Igbo', 3, 30, 1, 'DD TECHINT'),
(85, '76', '05/12/2021', '05/27/2021', 'sad', 'Igbo', 3, 30, 1, 'DD TECHINT'),
(86, '23', '05/12/2021', '05/27/2021', 'sad', 'Igbo', 3, 30, 1, 'DD TECHINT'),
(87, '44567', '05/18/2021', '05/19/2021', 'alert', 'Arabic', 0, 32, 1, 'DSIGINT'),
(88, '3456', '05/18/2021', '05/25/2021', 'monitoring of alert target', 'Igbo', 3, 32, 1, 'DD TECHINT'),
(89, '456', '05/04/2021', '05/26/2021', 'frontend', 'Igbo', 2, 32, 1, 'DD TECHINT'),
(90, '789', '05/04/2021', '05/26/2021', 'frontend', 'Igbo', 2, 32, 1, 'DD TECHINT'),
(91, '23', '05/18/2021', '05/27/2021', 'cases', 'Igbo', 2, 33, 1, 'DD TECHINT'),
(92, '45', '05/18/2021', '05/27/2021', 'cases', 'Igbo', 2, 33, 1, 'DD TECHINT'),
(93, '21', '05/18/2021', '05/27/2021', 'cases', 'Igbo', 2, 33, 1, 'DD TECHINT'),
(94, '2345', '05/19/2021', '05/25/2021', 'maja', 'Igbo', 3, 30, 1, 'DD TECHINT'),
(95, '645', '05/19/2021', '05/25/2021', 'maja', 'Igbo', 3, 30, 1, 'DD TECHINT'),
(96, '567', '05/18/2021', '05/25/2021', 'maja', 'Igbo', 2, 32, 1, 'DD TECHINT'),
(97, '890', '05/18/2021', '05/25/2021', 'maja', 'Igbo', 2, 32, 1, 'DD TECHINT'),
(98, '45', '05/18/2021', '05/25/2021', 'maja', 'Igbo', 2, 32, 1, 'DD TECHINT'),
(99, 'etrytuio', '05/18/2021', '05/25/2021', 'sdfg', 'Yoruba', 3, 33, 1, 'DSIGINT'),
(100, '3456', '05/18/2021', '05/26/2021', 'frontend', 'Arabic', 2, 20, 1, 'DSIGINT'),
(101, '764', '05/18/2021', '05/26/2021', 'frontend', 'Arabic', 2, 20, 1, 'DSIGINT'),
(102, '3445', '05/18/2021', '05/26/2021', 'frontend', 'Arabic', 2, 20, 1, 'DSIGINT'),
(103, '234', '05/19/2021', '05/28/2021', '23456tygh', 'Arabic', 3, 21, 1, 'DD TECHINT'),
(104, '978', '05/19/2021', '05/28/2021', '23456tygh', 'Arabic', 3, 21, 1, 'DD TECHINT'),
(105, '534', '05/19/2021', '05/28/2021', '23456tygh', 'Arabic', 3, 21, 1, 'DD TECHINT'),
(106, '3343', '05/13/2021', '05/27/2021', 'frontend', 'Igbo', 2, 31, 1, 'DSIGINT'),
(107, '78', '05/13/2021', '05/27/2021', 'frontend', 'Igbo', 2, 31, 1, 'DSIGINT'),
(108, '565', '05/13/2021', '05/27/2021', 'frontend', 'Igbo', 2, 31, 1, 'DSIGINT'),
(109, '654', '05/18/2021', '05/26/2021', 'sdfg', 'Igbo', 3, 31, 1, 'DSIGINT'),
(110, '653', '05/18/2021', '05/26/2021', 'sdfg', 'Igbo', 3, 31, 1, 'DSIGINT'),
(111, '23456087', '05/24/2021', '05/29/2021', 'frontend', 'Igbo', 4, 34, 1, 'DSIGINT'),
(112, '23498767', '05/24/2021', '06/25/2021', 'frontend', 'Igbo', 4, 34, 1, 'DSIGINT'),
(113, '45987', '05/24/2021', '05/29/2021', 'frontend', 'Igbo', 4, 34, 1, 'DSIGINT'),
(115, '34qw', '05/25/2021', '05/25/2021', 'maja', 'Kanuri', NULL, 30, 1, 'DD TECHINT'),
(116, '76435', '05/24/2021', '05/28/2021', 'frontend', 'Yoruba', 2, 32, 1, 'DSIGINT'),
(117, '756453', '05/24/2021', '05/28/2021', 'frontend', 'Yoruba', 2, 32, 1, 'DSIGINT'),
(119, '75645', '05/24/2021', '05/25/2021', 'maja', 'Yoruba', 2, 32, 1, 'DSIGINT');

-- --------------------------------------------------------

--
-- Table structure for table `tblrenewals`
--

CREATE TABLE `tblrenewals` (
  `renewalId` int(11) NOT NULL,
  `interceptId` int(11) NOT NULL,
  `oldEndDate` date NOT NULL,
  `newEndDate` date NOT NULL,
  `renewalDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbltargets`
--

CREATE TABLE `tbltargets` (
  `targetId` int(11) NOT NULL,
  `targetName` text NOT NULL,
  `caseId` int(11) NOT NULL,
  `createDate` text NOT NULL DEFAULT current_timestamp(),
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltargets`
--

INSERT INTO `tbltargets` (`targetId`, `targetName`, `caseId`, `createDate`, `userId`) VALUES
(3, 'MAra', 2, '2020-09-07', 1),
(4, 'super', 2, '2020-09-07', 1),
(5, 'super', 19, '2020-09-07', 1),
(7, 'makala', 3, '2020-09-07', 1),
(8, 'makala', 6, '2020-09-07', 1),
(19, 'MArajab', 6, '2020-09-07', 1),
(20, 'MArajab', 4, '2020-09-07', 1),
(21, 'MAra ass', 4, '2020-09-07', 1),
(22, 'MAra ass2', 19, '2020-09-07', 1),
(23, 'Masjid', 20, '2014-02-07', 2),
(24, 'maja', 2, '2021-05-13', 1),
(25, 'maja', 3, '2021-05-19', 1),
(26, 'raja', 7, '2021-05-12', 1),
(27, 'empty checker', 29, '05/11/2021', 1),
(28, 'CREATE', 37, '05/18/2021', 1),
(29, 'add case target', 39, '05/18/2021', 1),
(30, 'add case target2', 39, '05/18/2021', 1),
(31, 'MArajab', 9, '2020-09-07', 1),
(32, 'alert target', 33, '05/18/2021', 1),
(33, 'asi target', 11, '05/18/2021', 1),
(34, 'target1', 40, '05/24/2021', 1),
(35, 'target2', 40, '05/25/2021', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `userId` int(11) NOT NULL,
  `userName` text NOT NULL,
  `initials` text NOT NULL,
  `password` text DEFAULT NULL,
  `role` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`userId`, `userName`, `initials`, `password`, `role`, `active`) VALUES
(1, 'admin_a', '', '', 'admin', 1),
(2, 'admin_b', '', '', 'admin', 1),
(3, 'user_a1', '', '', 'user', 1),
(4, 'user_a2', '', '', 'user', 1),
(5, 'user_a3', '', '', 'user', 1),
(6, 'user_a4', '', '', 'user', 1),
(7, 'user_a5', '', '', 'user', 1),
(8, 'user_a6', '', '', 'user', 1),
(9, 'user_a7', '', '', 'user', 1),
(10, 'user_a8', '', '', 'user', 1),
(11, 'user_a9', '', '', 'user', 1),
(12, 'user_b1', '', '', 'user', 1),
(13, 'user_b2', '', '', 'user', 1),
(14, 'user_b3', '', '', 'user', 1),
(15, 'user_b4', '', '', 'user', 1),
(16, 'user_b5', '', '', 'user', 1),
(17, 'user_b6', '', '', 'user', 1),
(18, 'user_b7', '', '', 'user', 1),
(19, 'user_b8', '', '', 'user', 1),
(20, 'user_b9', '', '', 'user', 1),
(22, 'user_b10', '', '', 'user', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblassignments`
--
ALTER TABLE `tblassignments`
  ADD PRIMARY KEY (`assignmentId`),
  ADD KEY `caseId` (`caseId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `tblcases`
--
ALTER TABLE `tblcases`
  ADD PRIMARY KEY (`caseId`),
  ADD KEY `createUser` (`createUser`);

--
-- Indexes for table `tblinterceptions`
--
ALTER TABLE `tblinterceptions`
  ADD PRIMARY KEY (`interceptId`),
  ADD KEY `targetId` (`targetId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `tblrenewals`
--
ALTER TABLE `tblrenewals`
  ADD PRIMARY KEY (`renewalId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `interceptId` (`interceptId`);

--
-- Indexes for table `tbltargets`
--
ALTER TABLE `tbltargets`
  ADD PRIMARY KEY (`targetId`),
  ADD KEY `caseId` (`caseId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblassignments`
--
ALTER TABLE `tblassignments`
  MODIFY `assignmentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tblcases`
--
ALTER TABLE `tblcases`
  MODIFY `caseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblinterceptions`
--
ALTER TABLE `tblinterceptions`
  MODIFY `interceptId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `tblrenewals`
--
ALTER TABLE `tblrenewals`
  MODIFY `renewalId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltargets`
--
ALTER TABLE `tbltargets`
  MODIFY `targetId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblassignments`
--
ALTER TABLE `tblassignments`
  ADD CONSTRAINT `tblassignments_ibfk_1` FOREIGN KEY (`caseId`) REFERENCES `tblcases` (`caseId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tblassignments_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `tblusers` (`userId`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tblcases`
--
ALTER TABLE `tblcases`
  ADD CONSTRAINT `tblcases_ibfk_1` FOREIGN KEY (`createUser`) REFERENCES `tblusers` (`userId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblinterceptions`
--
ALTER TABLE `tblinterceptions`
  ADD CONSTRAINT `tblinterceptions_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `tblusers` (`userId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tblinterceptions_ibfk_2` FOREIGN KEY (`targetId`) REFERENCES `tbltargets` (`targetId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblrenewals`
--
ALTER TABLE `tblrenewals`
  ADD CONSTRAINT `tblrenewals_ibfk_1` FOREIGN KEY (`interceptId`) REFERENCES `tblinterceptions` (`interceptId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblrenewals_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `tblusers` (`userId`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbltargets`
--
ALTER TABLE `tbltargets`
  ADD CONSTRAINT `tbltargets_ibfk_1` FOREIGN KEY (`caseId`) REFERENCES `tblcases` (`caseId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbltargets_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `tblusers` (`userId`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
