-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2023 at 11:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `conform`
--

CREATE TABLE `conform` (
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `subject` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conform`
--

INSERT INTO `conform` (`firstname`, `lastname`, `city`, `subject`) VALUES
('', '', '', ''),
('Tharusha', 'Navod', 'Kuliyapitiya', 'Hellow Guys'),
('Tharusha', 'Navod', 'Kuliyapitiya', 'Hello world');

-- --------------------------------------------------------

--
-- Table structure for table `odrform`
--

CREATE TABLE `odrform` (
  `f_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` int(12) NOT NULL,
  `food` varchar(50) NOT NULL,
  `promo` varchar(10) NOT NULL,
  `port` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `odrform`
--

INSERT INTO `odrform` (`f_name`, `address`, `mobile`, `food`, `promo`, `port`) VALUES
('Tharusha', 'Kuliyapitiya,Dummalasuriya.', 774546421, 'Chicken Fried Rice', '0', 3),
('', '', 0, '', '', 0),
('', '', 0, '', '', 0),
('', '', 0, '', '', 0),
('Tharusha', 'Kuliyapitiya,Dummalasuriya.', 774546421, 'Chicken Fried Rice', '0', 4);

-- --------------------------------------------------------

--
-- Table structure for table `regform`
--

CREATE TABLE `regform` (
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regform`
--

INSERT INTO `regform` (`f_name`, `l_name`, `email`, `user_name`, `pass`) VALUES
('Tharusha', 'Navod', 'Tharu@gmail.com', 'Tharu123', 'Tharusha'),
('Tharusha', 'Navod', 'Tharu@gmail.com', 'Tharu', 'Tharusha'),
('Tharusha', 'Navod', 'Tharu@gmail.com', 'Tharu', 'navod'),
('Hello', 'Machan', 'Macho@gmail.com', 'HelloM', 'Hello'),
('TharushaN', 'NavodT', 'Tharu@gmail.com', 'TharuT', 'Tharusha'),
('', '', '', '', ''),
('', '', '', '', ''),
('h4', 'h5', 'Tharu@gmail.com', 'h45', 'Tharusha'),
('Tharu', 'Navo', 'Tharu@gmail.com', 'Tnavod', 'Tharusha');

-- --------------------------------------------------------

--
-- Table structure for table `resform`
--

CREATE TABLE `resform` (
  `name_r` varchar(50) NOT NULL,
  `email_r` varchar(100) NOT NULL,
  `phone_r` int(50) NOT NULL,
  `date_r` date NOT NULL,
  `seats_r` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resform`
--

INSERT INTO `resform` (`name_r`, `email_r`, `phone_r`, `date_r`, `seats_r`) VALUES
('Tharusha', 'Tharu@gmail.com', 774649785, '0000-00-00', 3),
('Navod', 'Tharu@gmail.com', 774879548, '0000-00-00', 1),
('Hello', 'Tharu@gmail.com', 774846498, '0000-00-00', 4),
('Tharusha', 'Tharu@gmail.com', 774649785, '0000-00-00', 2),
('Navod', 'Macho@gmail.com', 774649785, '0000-00-00', 2),
('', '', 0, '0000-00-00', 0),
('', '', 0, '0000-00-00', 0),
('', '', 0, '0000-00-00', 0),
('', '', 0, '0000-00-00', 0),
('Tharusha', 'Tharu@gmail.com', 774879548, '0000-00-00', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
