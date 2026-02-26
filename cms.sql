-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Feb 26, 2026 at 01:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'PHP'),
(2, 'JAVA'),
(8, 'BOOTSTRAP');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(2, 1, 'Cinderella', 'cindrellaM@gmail.com', 'Comment from CIndy', 'approve', '2024-07-12'),
(4, 1, 'Edwin Diaz', 'edwin@gmail.com', 'some comment', 'unaproved', '2024-07-12'),
(5, 4, 'Sledge', 'Sledge@R6.com', 'Great course', 'approve', '2024-07-12'),
(6, 1, 'Edwin Diaz', 'grubliauskasg@gmail.com', 'afaf', 'approve', '2024-07-12'),
(7, 1, 'Edwin Diaz', 'grubliauskasg@gmail.com', 'afaf', 'unaproved', '2024-07-12'),
(8, 1, 'Edwin Diaz', 'grubliauskasg@gmail.com', 'afaf', 'unaproved', '2024-07-12'),
(9, 1, 'Sledge', 'sledge@r6.com', 'wassup', 'unaproved', '2024-07-23'),
(10, 1, 'Sledge', 'sledge@r6.com', 'wassup', 'unapprove', '2024-07-23');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(1, 1, 'CMS Masters Course', 'Jamal Blebins', '2024-08-09', 'image_1.jpg', 'Great Content!         \r\n        \r\n         ', 'CMS', 1, 'published', 2),
(2, 2, 'JAVASCRIPT Masters course', 'Speedy Gonzales', '2024-07-02', 'image_5.jpg', 'Amazing content', 'JAVASCRIPT', 0, 'published', 0),
(4, 1, 'G', 'me', '2024-07-23', 'capsule_616x353 (1).jpg', 'Heres some content\r\n                  \r\n        \r\n         ', 'adad', 0, 'published', 0),
(5, 1, 'C languages', 'James Golding', '2024-07-11', 'cprogrammingbundle_resize_md.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor nibh nec purus dignissim euismod. Duis interdum, neque molestie gravida imperdiet, lectus neque imperdiet nisi, at rhoncus augue diam et tellus. Integer vitae cursus mi. Praesent vita', 'PHP, not java', 0, 'published', 2),
(7, 1, 'Great', 'Jamal Blebins', '2024-08-15', 'capsule_616x353.jpg', '<p>Sekiro </p>', 'java', 0, 'published', 1),
(8, 1, 'Great', 'me', '2024-08-14', 'days.png', '<p>ad</p>', 'java', 0, 'published', 0);

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
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'SledgeR6', '$2y$10$YN5Nmz0XTWB8LzgJPR8yeO/SMmabutQIiTBBNNQDkqOnzp36wHD2.', 'Sledge', 'Fanom', 'sledger6@r6.com', '', 'subscriber', ''),
(4, 'gusgru', 'Deilas', 'Gustas', 'Grubliauskas', 'grubliauskasg@gmail.com', '', 'subscriber', ''),
(5, 'gusgru', 'Deilas', 'Gustas', 'Grubliauskas', 'grubliauskasg@gmail.com', '', 'subscriber', ''),
(6, 'rjey', 'therj', 'Riley', 'James', 'rileyjames@gmail.com', '', 'subscriber', ''),
(7, 'Jametyhenrilen', 'thejames', 'James', 'Riley', 'jatemthyrilen@gmail.com', '', 'subscriber', ''),
(9, 'Jametyhenrilen', 'thejames', 'Jamesss', 'Riley', 'jatemthyrilen@gmail.com', '', 'subscriber', ''),
(10, 'Register', 'Register', '', '', 'Register', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(11, 'Register', 'Register', '', '', 'Register', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(12, 'yo', 'yo', '', '', 'yo@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(13, 'yo', 'yo', '', '', 'yo@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(14, 'ad', 'ad', '', '', 'da@A.COM', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(15, 'suave', '*0', '', '', 'suave@gmai.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(16, 'dwa', '$2y$10$ASJXEznlyNptX5FVYCD.8O/LlKv2EMg5IihRNoUWzFIgZYrX3NFz6', '', '', 'awdd@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(17, 'yo', '$2y$10$imcePXOQnYPDI8ZaUhMnQejgDSpiXdbDakHgKeSBEMo5hJXshukye', '', '', 'yo@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
