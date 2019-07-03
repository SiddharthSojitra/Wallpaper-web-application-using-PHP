-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 02, 2019 at 08:10 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pixels`
--

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
CREATE TABLE IF NOT EXISTS `animals` (
  `id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`id`, `image`, `status`) VALUES
(1, 'priscilla-du-preez-325455-unsplash.jpg ', 1),
(2, 'annie-spratt-120117-unsplash.jpg', 1),
(3, 'kyaw-tun-317752-unsplash.jpg', 1),
(4, 'brandon-day-71108-unsplash.jpg', 1),
(5, 'radoslaw-prekurat-148700-unsplash.jpg', 1),
(6, 'roi-dimor-310628-unsplash.jpg', 1),
(7, 'wexor-tmg-26886-unsplash.jpg', 1),
(8, 'smit-patel-344842-unsplash.jpg', 1),
(9, 'boris-smokrovic-146294-unsplash.jpg', 1),
(10, 'alessandro-desantis-564-unsplash.jpg', 1),
(11, 'simon-moore-697520-unsplash.jpg', 1),
(12, 'gwen-weustink-70293-unsplash.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

DROP TABLE IF EXISTS `home_categories`;
CREATE TABLE IF NOT EXISTS `home_categories` (
  `image` varchar(50) NOT NULL,
  `cat_name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`image`, `cat_name`) VALUES
('', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `pagename` varchar(50) NOT NULL,
  `pagetitle` varchar(50) NOT NULL,
  `pagetext` text NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '0->inactive, 1->active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `pagename`, `pagetitle`, `pagetext`, `status`) VALUES
(1, 'Home', 'Who we are?', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy.</p>\r\n', 1),
(2, 'About', 'Information Technology Class: Semester 6', '<p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>\r\n', 1),
(3, 'Gallery', 'Gallery', 'Gallery text', 1),
(4, 'Contact', 'Contact Details', 'IT Class,\r\nSemester 6,\r\nMEFGI, Rajkot.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `upld_imgs`
--

DROP TABLE IF EXISTS `upld_imgs`;
CREATE TABLE IF NOT EXISTS `upld_imgs` (
  `pageid` int(10) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` int(10) NOT NULL,
  `id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upld_imgs`
--

INSERT INTO `upld_imgs` (`pageid`, `image`, `status`, `id`) VALUES
(1, 'boris-smokrovic-146294-unsplash.jpg', 0, NULL),
(1, 'brandon-day-71108-unsplash.jpg', 0, 2),
(1, 'gwen-weustink-70293-unsplash.jpg', 0, 3),
(1, 'kyaw-tun-317752-unsplash.jpg', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(300) NOT NULL,
  `image` varchar(50) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `userrole` varchar(20) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '0->inactive,1->active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `image`, `firstname`, `lastname`, `userrole`, `status`) VALUES
(1, 'Sid@Patel.com', 'root', 'Sid.jpg', 'Siddharth', 'Patel', 'Administrator', 1),
(2, 'Jay@Gmail.com', 'jay', 'Jay.jpg', 'Jay', 'Kava', 'Designer', 1),
(20, 'project@manager.com', 'abcd@1234', 'Not Found', 'Project', 'Manager', 'User', 1),
(21, 'hvjhv', 'hjvjhv', 'Not Found', 'advjhv', 'heahjv', 'User', 1),
(22, 'Sid@Patel.com', 'root', 'Not Found', '', '', 'User', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
