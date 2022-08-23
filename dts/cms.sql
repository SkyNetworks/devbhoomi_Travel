-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2022 at 10:47 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `cat_creator` varchar(20) NOT NULL,
  `cat_user` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_creator`, `cat_user`) VALUES
(58, '4 wheeler', 'skynetwork', 'shubham,'),
(59, '6 wheeler', 'skynetwork', 'gaganbhatt2,'),
(63, '2 wheeler', 'shubham', '');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `user_id` int(11) NOT NULL,
  `start_loc` varchar(55) NOT NULL,
  `end_loc` varchar(55) NOT NULL,
  `dates` datetime NOT NULL,
  `vehicle_type` varchar(22) NOT NULL,
  `seats` varchar(22) NOT NULL,
  `model` varchar(33) NOT NULL,
  `vc_number` varchar(55) NOT NULL,
  `phone` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`user_id`, `start_loc`, `end_loc`, `dates`, `vehicle_type`, `seats`, `model`, `vc_number`, `phone`) VALUES
(1, 'dddd', 'ssss', '2022-08-13 00:00:00', '', '', 'ffff', '', '07060603619'),
(4, 'dddd', 'wew', '2022-08-20 00:00:00', '', '', 'ffff', '', '7060603619'),
(6, '', '', '1970-01-01 00:00:00', '', '', '', '', ''),
(8, 'dddd', 'wew', '2022-08-20 00:00:00', '', '', 'kkk', '', '7060603619'),
(9, 'dddd', 'rpg', '2022-09-03 00:00:00', '', '', 'honda', '', '7060603619'),
(11, 'srinagar', 'usa', '1970-01-01 00:00:00', '', '', 'ninja', '', '8606036199');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(23, 63, '', 'shubham', '2022-08-24', 'pexels-giorgio-de-angelis-1413412.jpg', '<p>Srinagar to Delhi</p>', 'srinagar  delhi', 0, 'published', 0),
(24, 58, 'devbhoomi', 'shubham', '2022-08-24', 'pexels-lilartsy-1805138.jpg', '<p>Srinagar to Punjab</p>', 'srinagar  delhi', 0, 'published', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22',
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `phone`, `user_image`, `user_role`, `randSalt`, `token`) VALUES
(117, 'shubham', '$2y$12$MgmBpSSp9nb.YTOUUOY85OVhVqxrEzgV/GoV0xrLGiezw1QlIUaqm', 'shubhamrawat', 'rawat', '07060603619', '', 'admin', '$2y$10$iusesomecrazystrings22', ''),
(120, 'skynetwork', '$2y$12$oTYgu449R0lIbluxapKEEuCmX6LG6H4ODYadZZ/36jwqkcJrI4qYy', 'Gagan', 'Bhatt', '7060603619', '', 'subscriber', '$2y$10$iusesomecrazystrings22', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(28, 'acqtk6uivrc3mancr6jubo36g8', 1541324861),
(40, 'ipke8cras4eauiu50upkm1mocd', 1548511410),
(41, 'l4qj6m6jv3ges0us7cqvrqovhq', 1548401977),
(42, 'fd7b414bec20e569f9bd17c4e7ef4c13', 1562584762),
(43, 'bq6nbv3svs1ue3a0urr4p73shp', 1661004665),
(44, 'a6gadf5dp6krror0uj2drg42hq', 1661095483),
(45, 't63imj8f656rgeedd3k20jk8og', 1661104981),
(46, 'vat9pnbv47vuoqc362cd0gfhok', 1661155064),
(47, 'q6565eg6u1rl58pbjd23vmfvm9', 1661194285),
(48, 'p45shjstq2sn2j0nc9paia98f2', 1661193311),
(49, 'j7bhr3ll7v1hb12llihuna96if', 1661285346),
(50, 'hbfcq7vq5hfn1dfdle7f7af7i3', 1661287511);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`,`post_category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
