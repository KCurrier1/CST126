-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2020 at 07:55 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cst126`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `BLOG_ID` int(11) NOT NULL,
  `BLOG_TITLE` varchar(40) NOT NULL,
  `BLOG_CONTENT` text NOT NULL,
  `BLOG_DATE` date NOT NULL,
  `USER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`BLOG_ID`, `BLOG_TITLE`, `BLOG_CONTENT`, `BLOG_DATE`, `USER_ID`) VALUES
(1, 'Hello World!!', 'How are you today? Happy Valentines!', '0000-00-00', 0),
(2, 'Hello World!!', 'How are you today? Happy Valentines!', '0000-00-00', 0),
(3, 'Ello', 'AHHHHH HOMEWORK IS DUE', '0000-00-00', 0),
(4, 'Kill batman', 'He will die soon. Get in your batmobile and go shopping. What has no nails or bones but has 4 fingers and a Thumb?', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USER_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(15) NOT NULL,
  `LAST_NAME` varchar(15) NOT NULL,
  `USERNAME` varchar(15) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USER_ID`, `FIRST_NAME`, `LAST_NAME`, `USERNAME`, `PASSWORD`) VALUES
(1, 'Kayla', 'Currier', 'Kittyyy', 'Cattt'),
(2, 'Kayla', 'Currier', 'Rawr', 'UWU'),
(3, 'Scarlet', 'Johannson', 'Black', 'Widow'),
(4, 'The', 'Hulk', 'SMASH', 'PunyGod123'),
(5, 'Lilo', '& Stitch', 'Ohana', 'MeansFamily'),
(6, 'Kayla', 'Currier', 'Wednesday', '02122020'),
(7, 'Wednesday', 'Addams', 'AddamsRCool', 'SnapSnap'),
(8, 'Cat', 'Valentine', 'Hiii', 'hehe'),
(9, 'Anisah', 'Gallardo', 'Nene4474', 'Jackson'),
(10, 'Joker', 'Rulez', 'Batman', 'Diestoday'),
(11, 'Kayla', 'Currier', 'Kitty', 'Cat'),
(12, 'Kayla', 'Currier', 'Kitty', 'Cat'),
(13, 'Kayla', 'Currier', 'Kitty', 'Cat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`BLOG_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `BLOG_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
