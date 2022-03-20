-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2021 at 07:19 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `username`, `password`) VALUES
(90, 'Pheonix', 'Admin', '202cb962ac59075b964b07152d234b70'),
(91, 'Jessica', 'Applepox', '202cb962ac59075b964b07152d234b70'),
(92, 'Vanessa', 'CaptissMarvik', '202cb962ac59075b964b07152d234b70'),
(93, 'Arun ', 'Jay', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(13, 'Pizza', 'Food_Category_803.gif', 'Yes', 'Yes'),
(14, 'Burger', 'Food_Category_580.gif', 'Yes', 'Yes'),
(18, 'Rice', 'Food_Category_858.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(8, 'dwa', 'dwaf', 'Waf@fesg', 'wef'),
(10, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(12, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(14, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(16, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(22, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(23, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(24, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(25, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(26, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(27, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(28, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(29, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(30, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(31, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(32, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(33, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(34, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(35, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(36, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(37, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(38, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(39, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(40, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(41, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(42, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(43, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(44, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(45, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(46, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(47, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(48, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(49, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(50, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(51, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(52, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(53, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(54, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(55, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(56, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(57, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(58, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(59, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(60, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(61, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(62, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(63, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(64, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(65, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(66, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(67, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(68, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(69, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(70, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(71, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(72, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(73, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(74, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(75, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(76, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(77, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(78, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(79, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(80, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(81, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(82, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(83, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(84, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(85, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(86, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(87, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(88, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(89, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(90, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(91, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(92, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(93, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(94, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(95, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(96, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(97, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(98, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(99, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(100, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(101, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(102, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(103, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(104, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(105, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(106, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(107, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(108, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(109, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(110, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(111, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(112, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(113, 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(114, 'fedf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dffaaf'),
(115, 'fedf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dffaaf'),
(116, 'fedf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dffaaf'),
(117, 'fedf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dffaaf'),
(118, 'fedf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dffaaf'),
(119, 'fedf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dffaaf'),
(120, 'sa', '4234', 'saud-ahmed-abbasi@hotmail.com', 'dawfwaf'),
(121, 'sa', '23434', 'saud-ahmed-abbasi@hotmail.com', 'faff'),
(122, 'sa', '23434', 'saud-ahmed-abbasi@hotmail.com', 'faff'),
(123, 'dwad', '232', 'saud-ahmed-abbasi@hotmail.com', 'dwadfw'),
(124, 'dwad', '232', 'saud-ahmed-abbasi@hotmail.com', 'dwadfw'),
(125, 'sa', '2321', 'saud-ahmed-abbasi@hotmail.com', 'dwafd'),
(126, 'sa', '2321', 'saud-ahmed-abbasi@hotmail.com', 'dwafd'),
(127, 'dsf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dad'),
(128, 'dsf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dad'),
(129, 'dsf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dad'),
(130, 'dsf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dad'),
(131, 'adwad', 'dwaf', 'mvburk1@gmail.com', 'fwa'),
(132, 'adwad', 'dwaf', 'mvburk1@gmail.com', 'fwa'),
(133, 'sads', '234234', 'saud-ahmed-abbasi@hotmail.com', 'dafaw'),
(134, 'sads', '234234', 'saud-ahmed-abbasi@hotmail.com', 'dafaw'),
(135, 'sads', '234234', 'saud-ahmed-abbasi@hotmail.com', 'dafaw'),
(136, 'sads', '234234', 'saud-ahmed-abbasi@hotmail.com', 'dafaw'),
(137, 'sads', '234234', 'saud-ahmed-abbasi@hotmail.com', 'dafaw'),
(138, 'sads', '234234', 'saud-ahmed-abbasi@hotmail.com', 'dafaw'),
(139, 'sads', '234234', 'saud-ahmed-abbasi@hotmail.com', 'dafaw'),
(140, 'adwa', 'fafw', 'saud-ahmed-abbasi@hotmail.com', 'saf'),
(141, 'adwa', 'fafw', 'saud-ahmed-abbasi@hotmail.com', 'saf'),
(142, 'adwa', 'fafw', 'saud-ahmed-abbasi@hotmail.com', 'saf'),
(143, 'adwa', 'fafw', 'saud-ahmed-abbasi@hotmail.com', 'saf'),
(144, 'adwa', 'fafw', 'saud-ahmed-abbasi@hotmail.com', 'saf'),
(145, 'adwa', 'fafw', 'saud-ahmed-abbasi@hotmail.com', 'saf'),
(146, 'adwa', 'fafw', 'saud-ahmed-abbasi@hotmail.com', 'saf'),
(147, 'dsad', 'dfawfw', 'saud-ahmed-abbasi@hotmail.comwafwa', 'fwaf'),
(148, 'dsad', 'dfawfw', 'saud-ahmed-abbasi@hotmail.comwafwa', 'fwaf'),
(149, 'dsad', 'dfawfw', 'saud-ahmed-abbasi@hotmail.comwafwa', 'fwaf'),
(150, 'dsad', 'dfawfw', 'saud-ahmed-abbasi@hotmail.comwafwa', 'fwaf'),
(151, 'dsad', 'dfawfw', 'saud-ahmed-abbasi@hotmail.comwafwa', 'fwaf'),
(152, 'dsad', 'dfawfw', 'saud-ahmed-abbasi@hotmail.comwafwa', 'fwaf'),
(153, 'dsad', 'dfawfw', 'saud-ahmed-abbasi@hotmail.comwafwa', 'fwaf'),
(154, 'sad', '23124', 'saud-ahmed-abbasi@hotmail.com', 'fwaf'),
(155, 'sad', '23124', 'saud-ahmed-abbasi@hotmail.com', 'fwaf'),
(156, 'sad', '23124', 'saud-ahmed-abbasi@hotmail.com', 'fwaf'),
(157, 'sad', '23124', 'saud-ahmed-abbasi@hotmail.com', 'fwaf'),
(158, 'sad', '23124', 'saud-ahmed-abbasi@hotmail.com', 'fwaf'),
(159, 'sad', '23124', 'saud-ahmed-abbasi@hotmail.com', 'fwaf'),
(160, 'sad', '23124', 'saud-ahmed-abbasi@hotmail.com', 'fwaf'),
(161, 'sa', '234124', 'saud-ahmed-abbasi@hotmail.comdwafwa', 'fwa'),
(162, 'sa', '234124', 'saud-ahmed-abbasi@hotmail.comdwafwa', 'fwa'),
(163, 'sa', '234124', 'saud-ahmed-abbasi@hotmail.comdwafwa', 'fwa'),
(164, 'sa', '234124', 'saud-ahmed-abbasi@hotmail.comdwafwa', 'fwa'),
(165, 'sa', '234124', 'saud-ahmed-abbasi@hotmail.comdwafwa', 'fwa'),
(166, 'sa', '234124', 'saud-ahmed-abbasi@hotmail.comdwafwa', 'fwa'),
(167, 'sa', '234124', 'saud-ahmed-abbasi@hotmail.comdwafwa', 'fwa'),
(168, 'Arun', '424', 'saud-ahmed-abbasi@hotmail.com', 'afawf'),
(169, 'Arun', '424', 'saud-ahmed-abbasi@hotmail.com', 'afawf'),
(170, 'Arun', '424', 'saud-ahmed-abbasi@hotmail.com', 'afawf'),
(171, 'Arun', '424', 'saud-ahmed-abbasi@hotmail.com', 'afawf'),
(172, 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(173, 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(174, 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(175, 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(176, 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(177, 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(178, 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(179, 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(180, 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(181, 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(182, 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(183, 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(184, 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(185, 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(186, 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(187, 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(188, 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(189, 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(190, 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(191, 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(192, 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(193, 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(194, 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(195, 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(196, 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(197, 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(198, 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(199, 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(200, 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(201, 'sa', 'sa', 'saud-ahmed-abbasi@hotmail.com', 'sa'),
(202, 'sa', 'sa', 'saud-ahmed-abbasi@hotmail.com', 'sa'),
(203, 'sa', 'sa', 'saud-ahmed-abbasi@hotmail.com', 'sa'),
(204, 'ds', '342', 'saud-ahmed-abbasi@hotmail.comsdad', 'sdasd'),
(205, 'ds', '342', 'saud-ahmed-abbasi@hotmail.comsdad', 'sdasd'),
(206, 'ds', '342', 'saud-ahmed-abbasi@hotmail.comsdad', 'sdasd'),
(207, 'ds', '342', 'saud-ahmed-abbasi@hotmail.comsdad', 'sdasd'),
(208, 'ds', '342', 'saud-ahmed-abbasi@hotmail.comsdad', 'sdasd'),
(209, 'ds', '342', 'saud-ahmed-abbasi@hotmail.comsdad', 'sdasd'),
(210, 'sa', '342', 'saud-ahmed-abbasi@hotmail.com', 'dfa'),
(211, 'sa', '342', 'saud-ahmed-abbasi@hotmail.com', 'dfa'),
(212, 'sa', '342', 'saud-ahmed-abbasi@hotmail.com', 'dfa'),
(213, 'sa', 'dwa', 'saud-ahmed-abbasi@hotmail.com', 'waf'),
(214, 'sa', 'dwa', 'saud-ahmed-abbasi@hotmail.com', 'waf'),
(215, 'sa', 'dwa', 'saud-ahmed-abbasi@hotmail.com', 'waf'),
(216, 'sa', 'dwa', 'saud-ahmed-abbasi@hotmail.com', 'waf'),
(217, 'sa', '3424', 'hertoxher@gmail.comsa', 'sa'),
(218, 'sa', '3424', 'hertoxher@gmail.comsa', 'sa'),
(219, 'sa', 'fwa', 'hertoxher@gmail.com', 'sadd'),
(220, 'sa', 'fwa', 'hertoxher@gmail.com', 'sadd'),
(221, 'sa', 'dsa', 'sa@hotmai.com', 'safwafw'),
(222, 'sas', 'dawfwaf', 'hertoxher@gmail.com', 'sadd'),
(223, 'Saud Ahmed Abbasi', '03322054200', 'saud-ahmed-abbasi@hotmail.com', 'Gulshan'),
(224, 'Saud Ahmed Abbasi', '03322054200', 'saud-ahmed-abbasi@hotmail.com', 'Gulshan'),
(225, 'Pa', '342', 'saud-ahmed-abbasi@hotmail.com', 'sa'),
(226, 'Pa', '342', 'saud-ahmed-abbasi@hotmail.com', 'sa'),
(227, 'Nathaniel', '0332002942', 'saud-ahmed-abbasi@hotmail.com', 'ssafa'),
(228, 'Nathaniel', '0332002942', 'saud-ahmed-abbasi@hotmail.com', 'ssafa'),
(229, 'saud', '03322', 'saud-ahmed-abbasi@hotmail.com', 'sda'),
(230, 'saud', '03322', 'saud-ahmed-abbasi@hotmail.com', 'sda');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(4, 'Beefy Burger', 'Burger with Ham, Pineapple and lots of Cheese.', '7.00', 'Food-Name-8495.jpg', 14, 'Yes', 'Yes'),
(5, 'Bak Kut Teh', 'Best Malaysian Specialty in Town.', '6.00', 'Food-Name-8963.jpg', 18, 'No', 'Yes'),
(9, 'West Side Garlic', 'Steamy hot west side prepared dish ', '23.00', 'Food-Name-1630.jpg', 4, 'Yes', 'Yes'),
(10, 'Burger Fresh', 'No', '10.00', 'Food-Name-9517.gif', 14, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Sadeko Momo', '6.00', 3, '18.00', '2020-11-30 03:49:48', 'Cancelled', 'Bradley Farrell', '+1 (576) 504-4657', 'zuhafiq@mailinator.com', 'Duis aliqua Qui lor'),
(2, 'Best Burger', '4.00', 4, '16.00', '2020-11-30 03:52:43', 'Delivered', 'Kelly Dillard', '+1 (908) 914-3106', 'fexekihor@mailinator.com', 'Incidunt ipsum ad d'),
(3, 'Mixed Pizza', '10.00', 2, '20.00', '2020-11-30 04:07:17', 'Delivered', 'Jana Bush', '+1 (562) 101-2028', 'tydujy@mailinator.com', 'Minima iure ducimus'),
(4, 'Mixed Pizza', '10.00', 1, '10.00', '2021-12-17 07:35:38', 'Ordered', 'Saud', '23434', 'saud-ahmed-abbasi@hotmail.com', 'fdawfaw'),
(5, 'Mixed Pizza', '10.00', 1, '10.00', '2021-12-17 07:42:05', 'Ordered', 'Saud', '23434', 'saud-ahmed-abbasi@hotmail.com', 'fdawfaw'),
(6, 'Mixed Pizza', '10.00', 1, '10.00', '2021-12-17 07:49:43', 'Ordered', 'Saud', '23434', 'saud-ahmed-abbasi@hotmail.com', 'fdawfaw'),
(7, 'Mixed Pizza', '10.00', 1, '10.00', '2021-12-17 07:49:50', 'Ordered', 'Saud', '23434', 'saud-ahmed-abbasi@hotmail.com', 'fdawfaw'),
(8, 'Best Burger', '4.00', 2, '8.00', '2021-12-18 10:47:58', 'Ordered', 'dwa', 'dwaf', 'Waf@fesg', 'wef'),
(10, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 10:49:51', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(12, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 10:51:30', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(14, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 10:51:30', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(16, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 10:51:40', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(22, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 10:54:26', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(23, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 10:54:26', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(24, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 10:58:09', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(25, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 10:58:09', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(26, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 10:58:09', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(27, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:00:31', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(28, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:00:31', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(29, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:00:31', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(30, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:00:41', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(31, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:00:41', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(32, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:00:41', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(33, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:02:43', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(34, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:02:43', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(35, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:02:43', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(36, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:03:24', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(37, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:03:24', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(38, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:03:24', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(39, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:04:19', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(40, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:04:19', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(41, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:04:19', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(42, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:04:38', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(43, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:04:38', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(44, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:04:38', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(45, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:07:12', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(46, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:07:12', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(47, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:07:12', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(48, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:07:25', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(49, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:07:25', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(50, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:07:25', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(51, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:08:03', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(52, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:08:03', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(53, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:08:04', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(54, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:10:12', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(55, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:10:12', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(56, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:10:12', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(57, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:10:22', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(58, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:10:22', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(59, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:10:22', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(60, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:11:50', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(61, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:11:50', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(62, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:11:50', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(63, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:11:55', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(64, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:11:55', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(65, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:11:55', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(66, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:12:13', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(67, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:12:13', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(68, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:12:13', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(69, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:12:33', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(70, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:12:33', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(71, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:12:33', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(72, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:13:50', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(73, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:13:50', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(74, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:13:50', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(75, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:14:08', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(76, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:14:08', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(77, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:14:08', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(78, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:14:23', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(79, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:14:23', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(80, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:14:23', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(81, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:14:25', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(82, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:14:25', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(83, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:14:25', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(84, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:14:34', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(85, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:14:34', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(86, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:14:34', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(87, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:15:01', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(88, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:15:01', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(89, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:15:01', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(90, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:15:17', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(91, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:15:17', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(92, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:15:17', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(93, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:15:29', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(94, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:15:29', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(95, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:15:29', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(96, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:15:51', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(97, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:15:51', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(98, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:15:51', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(99, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:16:05', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(100, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:16:05', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(101, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:16:05', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(102, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:16:13', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(103, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:16:13', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(104, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:16:13', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(105, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:16:57', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(106, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:16:57', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(107, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:16:57', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(108, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:17:15', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(109, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:17:15', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(110, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:17:15', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(111, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:17:23', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(112, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:17:23', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(113, 'Sadeko Momo', '6.00', 2, '12.00', '2021-12-18 11:17:24', 'Ordered', 'dsad', 'dwaf', 'wdawdw@fe', 'wfaw'),
(114, 'Best Burger', '4.00', 2, '8.00', '2021-12-18 11:17:49', 'Ordered', 'fedf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dffaaf'),
(115, 'Dumplings Specials', '5.00', 2, '10.00', '2021-12-18 11:17:49', 'Ordered', 'fedf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dffaaf'),
(116, 'Sadeko Momo', '6.00', 3, '18.00', '2021-12-18 11:17:49', 'Ordered', 'fedf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dffaaf'),
(117, 'Best Burger', '4.00', 2, '8.00', '2021-12-18 11:19:28', 'Ordered', 'fedf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dffaaf'),
(118, 'Dumplings Specials', '5.00', 2, '10.00', '2021-12-18 11:19:28', 'Ordered', 'fedf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dffaaf'),
(119, 'Sadeko Momo', '6.00', 3, '18.00', '2021-12-18 11:19:28', 'Ordered', 'fedf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dffaaf'),
(120, 'Mixed Pizza', '10.00', 1, '10.00', '2021-12-18 11:21:46', 'Ordered', 'sa', '4234', 'saud-ahmed-abbasi@hotmail.com', 'dawfwaf'),
(121, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:25:10', 'Ordered', 'sa', '23434', 'saud-ahmed-abbasi@hotmail.com', 'faff'),
(122, 'Sadeko Momo', '6.00', 3, '18.00', '2021-12-18 11:25:10', 'Ordered', 'sa', '23434', 'saud-ahmed-abbasi@hotmail.com', 'faff'),
(123, 'Dumplings Specials', '5.00', 1, '5.00', '2021-12-18 11:28:57', 'Ordered', 'dwad', '232', 'saud-ahmed-abbasi@hotmail.com', 'dwadfw'),
(124, 'Sadeko Momo', '6.00', 3, '18.00', '2021-12-18 11:28:57', 'Ordered', 'dwad', '232', 'saud-ahmed-abbasi@hotmail.com', 'dwadfw'),
(125, 'Dumplings Specials', '5.00', 2, '10.00', '2021-12-18 11:29:58', 'Ordered', 'sa', '2321', 'saud-ahmed-abbasi@hotmail.com', 'dwafd'),
(126, 'Best Burger', '4.00', 3, '12.00', '2021-12-18 11:29:58', 'Ordered', 'sa', '2321', 'saud-ahmed-abbasi@hotmail.com', 'dwafd'),
(127, 'Best Burger', '4.00', 2, '8.00', '2021-12-18 11:30:53', 'Ordered', 'dsf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dad'),
(128, 'Mixed Pizza', '10.00', 3, '30.00', '2021-12-18 11:30:53', 'Ordered', 'dsf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dad'),
(129, 'Mixed Pizza', '10.00', 3, '30.00', '2021-12-18 11:30:53', 'Ordered', 'dsf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dad'),
(130, 'Dumplings Specials', '5.00', 3, '15.00', '2021-12-18 11:30:53', 'Ordered', 'dsf', '342', 'saud-ahmed-abbasi@hotmail.com', 'dad'),
(131, 'Dumplings Specials', '5.00', 2, '10.00', '2021-12-18 11:35:04', 'Ordered', 'adwad', 'dwaf', 'mvburk1@gmail.com', 'fwa'),
(132, 'Sadeko Momo', '6.00', 3, '18.00', '2021-12-18 11:35:04', 'Ordered', 'adwad', 'dwaf', 'mvburk1@gmail.com', 'fwa'),
(133, 'Best Burger', '4.00', 1, '4.00', '2021-12-18 01:03:08', 'Ordered', 'sads', '234234', 'saud-ahmed-abbasi@hotmail.com', 'dafaw'),
(134, 'Dumplings Specials', '5.00', 1, '5.00', '2021-12-18 01:03:08', 'Ordered', 'sads', '234234', 'saud-ahmed-abbasi@hotmail.com', 'dafaw'),
(135, 'Sadeko Momo', '6.00', 1, '6.00', '2021-12-18 01:03:08', 'Ordered', 'sads', '234234', 'saud-ahmed-abbasi@hotmail.com', 'dafaw'),
(136, 'Sadeko Momo', '6.00', 1, '6.00', '2021-12-18 01:03:08', 'Ordered', 'sads', '234234', 'saud-ahmed-abbasi@hotmail.com', 'dafaw'),
(137, 'Best Burger', '4.00', 1, '4.00', '2021-12-18 01:03:08', 'Ordered', 'sads', '234234', 'saud-ahmed-abbasi@hotmail.com', 'dafaw'),
(138, 'Sadeko Momo', '6.00', 1, '6.00', '2021-12-18 01:03:08', 'Ordered', 'sads', '234234', 'saud-ahmed-abbasi@hotmail.com', 'dafaw'),
(139, 'Sadeko Momo', '6.00', 1, '6.00', '2021-12-18 01:03:09', 'Ordered', 'sads', '234234', 'saud-ahmed-abbasi@hotmail.com', 'dafaw'),
(140, 'Best Burger', '4.00', 1, '4.00', '2021-12-18 01:11:40', 'Ordered', 'adwa', 'fafw', 'saud-ahmed-abbasi@hotmail.com', 'saf'),
(141, 'Sadeko Momo', '6.00', 1, '6.00', '2021-12-18 01:11:40', 'Ordered', 'adwa', 'fafw', 'saud-ahmed-abbasi@hotmail.com', 'saf'),
(142, 'Smoky BBQ Pizza', '6.00', 1, '6.00', '2021-12-18 01:11:40', 'Ordered', 'adwa', 'fafw', 'saud-ahmed-abbasi@hotmail.com', 'saf'),
(143, 'Dumplings Specials', '5.00', 1, '5.00', '2021-12-18 01:11:41', 'Ordered', 'adwa', 'fafw', 'saud-ahmed-abbasi@hotmail.com', 'saf'),
(144, 'Best Burger', '4.00', 1, '4.00', '2021-12-18 01:11:41', 'Ordered', 'adwa', 'fafw', 'saud-ahmed-abbasi@hotmail.com', 'saf'),
(145, 'Smoky BBQ Pizza', '6.00', 1, '6.00', '2021-12-18 01:11:41', 'Ordered', 'adwa', 'fafw', 'saud-ahmed-abbasi@hotmail.com', 'saf'),
(146, 'Sadeko Momo', '6.00', 1, '6.00', '2021-12-18 01:11:41', 'Ordered', 'adwa', 'fafw', 'saud-ahmed-abbasi@hotmail.com', 'saf'),
(147, 'Dumplings Specials', '5.00', 1, '5.00', '2021-12-18 01:27:02', 'Ordered', 'dsad', 'dfawfw', 'saud-ahmed-abbasi@hotmail.comwafwa', 'fwaf'),
(148, 'Best Burger', '4.00', 1, '4.00', '2021-12-18 01:27:02', 'Ordered', 'dsad', 'dfawfw', 'saud-ahmed-abbasi@hotmail.comwafwa', 'fwaf'),
(149, 'Best Burger', '4.00', 1, '4.00', '2021-12-18 01:27:02', 'Ordered', 'dsad', 'dfawfw', 'saud-ahmed-abbasi@hotmail.comwafwa', 'fwaf'),
(150, 'Best Burger', '4.00', 1, '4.00', '2021-12-18 01:27:02', 'Ordered', 'dsad', 'dfawfw', 'saud-ahmed-abbasi@hotmail.comwafwa', 'fwaf'),
(151, 'Best Burger', '4.00', 1, '4.00', '2021-12-18 01:27:02', 'Ordered', 'dsad', 'dfawfw', 'saud-ahmed-abbasi@hotmail.comwafwa', 'fwaf'),
(152, 'Sadeko Momo', '6.00', 1, '6.00', '2021-12-18 01:27:02', 'Ordered', 'dsad', 'dfawfw', 'saud-ahmed-abbasi@hotmail.comwafwa', 'fwaf'),
(153, 'Sadeko Momo', '6.00', 1, '6.00', '2021-12-18 01:27:02', 'Ordered', 'dsad', 'dfawfw', 'saud-ahmed-abbasi@hotmail.comwafwa', 'fwaf'),
(154, 'Dumplings Specials', '5.00', 1, '5.00', '2021-12-18 01:33:34', 'Ordered', 'sad', '23124', 'saud-ahmed-abbasi@hotmail.com', 'fwaf'),
(155, 'Best Burger', '4.00', 1, '4.00', '2021-12-18 01:33:34', 'Ordered', 'sad', '23124', 'saud-ahmed-abbasi@hotmail.com', 'fwaf'),
(156, 'Best Burger', '4.00', 1, '4.00', '2021-12-18 01:33:34', 'Ordered', 'sad', '23124', 'saud-ahmed-abbasi@hotmail.com', 'fwaf'),
(157, 'Best Burger', '4.00', 1, '4.00', '2021-12-18 01:33:34', 'Ordered', 'sad', '23124', 'saud-ahmed-abbasi@hotmail.com', 'fwaf'),
(158, 'Best Burger', '4.00', 1, '4.00', '2021-12-18 01:33:34', 'Ordered', 'sad', '23124', 'saud-ahmed-abbasi@hotmail.com', 'fwaf'),
(159, 'Sadeko Momo', '6.00', 1, '6.00', '2021-12-18 01:33:34', 'Ordered', 'sad', '23124', 'saud-ahmed-abbasi@hotmail.com', 'fwaf'),
(160, 'Sadeko Momo', '6.00', 1, '6.00', '2021-12-18 01:33:34', 'Ordered', 'sad', '23124', 'saud-ahmed-abbasi@hotmail.com', 'fwaf'),
(161, 'Best Burger', '4.00', 1, '4.00', '2021-12-18 01:34:42', 'Ordered', 'sa', '234124', 'saud-ahmed-abbasi@hotmail.comdwafwa', 'fwa'),
(162, 'Dumplings Specials', '5.00', 1, '5.00', '2021-12-18 01:34:42', 'Ordered', 'sa', '234124', 'saud-ahmed-abbasi@hotmail.comdwafwa', 'fwa'),
(163, 'Dumplings Specials', '5.00', 1, '5.00', '2021-12-18 01:34:42', 'Ordered', 'sa', '234124', 'saud-ahmed-abbasi@hotmail.comdwafwa', 'fwa'),
(164, 'Dumplings Specials', '5.00', 1, '5.00', '2021-12-18 01:34:42', 'Ordered', 'sa', '234124', 'saud-ahmed-abbasi@hotmail.comdwafwa', 'fwa'),
(165, 'Sadeko Momo', '6.00', 1, '6.00', '2021-12-18 01:34:42', 'Ordered', 'sa', '234124', 'saud-ahmed-abbasi@hotmail.comdwafwa', 'fwa'),
(166, 'Sadeko Momo', '6.00', 1, '6.00', '2021-12-18 01:34:42', 'Ordered', 'sa', '234124', 'saud-ahmed-abbasi@hotmail.comdwafwa', 'fwa'),
(167, 'Sadeko Momo', '6.00', 1, '6.00', '2021-12-18 01:34:42', 'Ordered', 'sa', '234124', 'saud-ahmed-abbasi@hotmail.comdwafwa', 'fwa'),
(168, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 07:45:10', 'Ordered', 'Arun', '424', 'saud-ahmed-abbasi@hotmail.com', 'afawf'),
(169, 'Burger Fresh', '10.00', 1, '10.00', '2021-12-19 07:45:10', 'Ordered', 'Arun', '424', 'saud-ahmed-abbasi@hotmail.com', 'afawf'),
(170, 'Burger Fresh', '10.00', 1, '10.00', '2021-12-19 07:45:10', 'Ordered', 'Arun', '424', 'saud-ahmed-abbasi@hotmail.com', 'afawf'),
(171, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 07:45:10', 'Ordered', 'Arun', '424', 'saud-ahmed-abbasi@hotmail.com', 'afawf'),
(172, 'Slipper', '7.00', 1, '7.00', '2021-12-19 12:13:02', 'Ordered', 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(173, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:13:02', 'Ordered', 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(174, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:13:02', 'Ordered', 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(175, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:13:02', 'Ordered', 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(176, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:13:02', 'Ordered', 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(177, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:13:02', 'Ordered', 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(178, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:13:02', 'Ordered', 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(179, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:13:02', 'Ordered', 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(180, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:13:02', 'Ordered', 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(181, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:13:02', 'Ordered', 'sa', '342', 'saud-ahmed-abbasi@hotmail.comsda', 'sad'),
(182, 'Slipper', '7.00', 1, '7.00', '2021-12-19 12:18:01', 'Ordered', 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(183, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:18:01', 'Ordered', 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(184, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:18:01', 'Ordered', 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(185, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:18:01', 'Ordered', 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(186, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:18:01', 'Ordered', 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(187, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:18:01', 'Ordered', 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(188, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:18:01', 'Ordered', 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(189, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:18:02', 'Ordered', 'sa', '23', 'saud-ahmed-abbasi@hotmail.com', 'dwa'),
(190, 'Slipper', '7.00', 1, '7.00', '2021-12-19 12:40:07', 'Ordered', 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(191, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:40:07', 'Ordered', 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(192, 'Slipper', '7.00', 1, '7.00', '2021-12-19 12:40:07', 'Ordered', 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(193, 'Slipper', '7.00', 1, '7.00', '2021-12-19 12:40:07', 'Ordered', 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(194, 'Slipper', '7.00', 1, '7.00', '2021-12-19 12:40:07', 'Ordered', 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(195, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:40:07', 'Ordered', 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(196, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:40:07', 'Ordered', 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(197, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:40:07', 'Ordered', 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(198, 'Burger Fresh', '10.00', 1, '10.00', '2021-12-19 12:40:07', 'Ordered', 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(199, 'Burger Fresh', '10.00', 1, '10.00', '2021-12-19 12:40:08', 'Ordered', 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(200, 'Burger Fresh', '10.00', 1, '10.00', '2021-12-19 12:40:08', 'Ordered', 'sa', '2132', 'satokoentertainment@gmail.com', 'sadad'),
(201, 'Slipper', '7.00', 1, '7.00', '2021-12-19 12:42:50', 'Ordered', 'sa', 'sa', 'saud-ahmed-abbasi@hotmail.com', 'sa'),
(202, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:42:50', 'Ordered', 'sa', 'sa', 'saud-ahmed-abbasi@hotmail.com', 'sa'),
(203, 'Burger Fresh', '10.00', 1, '10.00', '2021-12-19 12:42:50', 'Ordered', 'sa', 'sa', 'saud-ahmed-abbasi@hotmail.com', 'sa'),
(204, 'Slipper', '7.00', 1, '7.00', '2021-12-19 12:57:30', 'Ordered', 'ds', '342', 'saud-ahmed-abbasi@hotmail.comsdad', 'sdasd'),
(205, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 12:57:30', 'Ordered', 'ds', '342', 'saud-ahmed-abbasi@hotmail.comsdad', 'sdasd'),
(206, 'Slipper', '7.00', 1, '7.00', '2021-12-19 12:57:30', 'Ordered', 'ds', '342', 'saud-ahmed-abbasi@hotmail.comsdad', 'sdasd'),
(207, 'Slipper', '7.00', 1, '7.00', '2021-12-19 12:57:30', 'Ordered', 'ds', '342', 'saud-ahmed-abbasi@hotmail.comsdad', 'sdasd'),
(208, 'Slipper', '7.00', 1, '7.00', '2021-12-19 12:57:30', 'Ordered', 'ds', '342', 'saud-ahmed-abbasi@hotmail.comsdad', 'sdasd'),
(209, 'Burger Fresh', '10.00', 1, '10.00', '2021-12-19 12:57:30', 'Ordered', 'ds', '342', 'saud-ahmed-abbasi@hotmail.comsdad', 'sdasd'),
(210, 'Slipper', '7.00', 1, '7.00', '2021-12-19 01:45:41', 'Ordered', 'sa', '342', 'saud-ahmed-abbasi@hotmail.com', 'dfa'),
(211, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 01:45:41', 'Ordered', 'sa', '342', 'saud-ahmed-abbasi@hotmail.com', 'dfa'),
(212, 'Burger Fresh', '10.00', 1, '10.00', '2021-12-19 01:45:41', 'Ordered', 'sa', '342', 'saud-ahmed-abbasi@hotmail.com', 'dfa'),
(213, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 01:59:42', 'Ordered', 'sa', 'dwa', 'saud-ahmed-abbasi@hotmail.com', 'waf'),
(214, 'Burger Fresh', '10.00', 1, '10.00', '2021-12-19 01:59:42', 'Ordered', 'sa', 'dwa', 'saud-ahmed-abbasi@hotmail.com', 'waf'),
(215, 'Smoky BBQ Pizza', '6.00', 1, '6.00', '2021-12-19 01:59:42', 'Ordered', 'sa', 'dwa', 'saud-ahmed-abbasi@hotmail.com', 'waf'),
(216, 'Slipper', '7.00', 1, '7.00', '2021-12-19 01:59:42', 'Ordered', 'sa', 'dwa', 'saud-ahmed-abbasi@hotmail.com', 'waf'),
(217, 'Slipper', '7.00', 1, '7.00', '2021-12-19 02:09:09', 'Ordered', 'sa', '3424', 'hertoxher@gmail.comsa', 'sa'),
(218, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 02:09:09', 'Ordered', 'sa', '3424', 'hertoxher@gmail.comsa', 'sa'),
(219, 'Smoky BBQ Pizza', '6.00', 1, '6.00', '2021-12-19 02:09:43', 'Ordered', 'sa', 'fwa', 'hertoxher@gmail.com', 'sadd'),
(220, 'Slipper', '7.00', 1, '7.00', '2021-12-19 02:09:43', 'Ordered', 'sa', 'fwa', 'hertoxher@gmail.com', 'sadd'),
(221, 'Burger Fresh', '10.00', 1, '10.00', '2021-12-19 02:15:05', 'Ordered', 'sa', 'dsa', 'sa@hotmai.com', 'safwafw'),
(222, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 02:25:14', 'Ordered', 'sas', 'dawfwaf', 'hertoxher@gmail.com', 'sadd'),
(223, 'Slipper', '7.00', 3, '21.00', '2021-12-19 05:58:13', 'Ordered', 'Saud Ahmed Abbasi', '03322054200', 'saud-ahmed-abbasi@hotmail.com', 'Gulshan'),
(224, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 05:58:13', 'Ordered', 'Saud Ahmed Abbasi', '03322054200', 'saud-ahmed-abbasi@hotmail.com', 'Gulshan'),
(225, 'Burger Fresh', '10.00', 1, '10.00', '2021-12-19 06:00:39', 'Ordered', 'Pa', '342', 'saud-ahmed-abbasi@hotmail.com', 'sa'),
(226, 'West Side Garlic', '23.00', 3, '69.00', '2021-12-19 06:00:39', 'Ordered', 'Pa', '342', 'saud-ahmed-abbasi@hotmail.com', 'sa'),
(227, 'West Side Garlic', '23.00', 4, '92.00', '2021-12-19 06:02:17', 'Ordered', 'Nathaniel', '0332002942', 'saud-ahmed-abbasi@hotmail.com', 'ssafa'),
(228, 'Burger Fresh', '10.00', 1, '10.00', '2021-12-19 06:02:17', 'Ordered', 'Nathaniel', '0332002942', 'saud-ahmed-abbasi@hotmail.com', 'ssafa'),
(229, 'West Side Garlic', '23.00', 1, '23.00', '2021-12-19 06:49:13', 'Ordered', 'saud', '03322', 'saud-ahmed-abbasi@hotmail.com', 'sda'),
(230, 'Bak Kut Teh', '6.00', 3, '18.00', '2021-12-19 06:49:13', 'Ordered', 'saud', '03322', 'saud-ahmed-abbasi@hotmail.com', 'sda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
