-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Feb 11, 2018 at 02:27 AM
-- Server version: 10.2.12-MariaDB-10.2.12+maria~jessie
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pydio`
--

use pydio;

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_users`
--

CREATE TABLE `ajxp_users` (
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `groupPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajxp_users`
--

INSERT INTO `ajxp_users` (`login`, `password`, `groupPath`) VALUES
('admin', 'sha256:1000:SH2I3qCiMqtpKQiiGf16I9GJrZM22q8I:Tib5ZnN0lZDV/DwCC7s0LfZhBxH/myhz', '/') ON DUPLICATE KEY UPDATE password='sha256:1000:SH2I3qCiMqtpKQiiGf16I9GJrZM22q8I:Tib5ZnN0lZDV/DwCC7s0LfZhBxH/myhz';

-- --------------------------------------------------------

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
