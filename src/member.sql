-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2015 at 02:49 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `member`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `listid` int(10) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `total` int(255) DEFAULT NULL,
  PRIMARY KEY (`listid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`listid`, `item_name`, `price`, `total`) VALUES
(24, 'dsgv', 10, NULL),
(25, 'fdz', 10, NULL),
(26, 'dfxv', 22, NULL),
(27, 'gf', 15, NULL),
(28, 'milk', 8, NULL),
(29, 'rice', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `date`) VALUES
(1, 'pad', '1234', 'jit', '1234', 'pad', '2015-04-15'),
(2, 'padadsfaf', '1234', 'sdf', 'asdf', 'fadsfa', '2015-04-15'),
(3, 'paddhg', 'hdhdhdfhshshsh', 'bndfg', 'dfhgdfh', 'dfhgdfhg', '2015-04-15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
