-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 26, 2020 at 03:16 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_courses`
--
CREATE DATABASE IF NOT EXISTS `db_courses` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_courses`;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `text` varchar(200) NOT NULL,
  `score` tinyint(4) NOT NULL,
  `id_course` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `text`, `score`, `id_course`, `id_user`) VALUES
(1, 'console 101', 2, 2, 2),
(2, 'console 102', 5, 2, 3),
(3, 'console 103', 5, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `duration` int(11) NOT NULL,
  `time_commitent` int(11) NOT NULL,
  `id_subject` int(11) NOT NULL,
  `difficulty` varchar(100) NOT NULL,
  `topics` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `duration`, `time_commitent`, `id_subject`, `difficulty`, `topics`) VALUES
(2, 'Building your first website', 12, 8, 1, 'Introductory', 'CSS - HTML - C++ - Javascript - SQL'),
(3, 'Interpersonal Skills at Work', 6, 11, 2, 'Intermediate', 'Communication - Problem Solving'),
(4, 'Front-End Frameworks', 10, 13, 1, 'Intermediate', 'Angular - React Native - Vue JS'),
(5, 'Quality Assurance Fundamentals', 8, 10, 1, 'Intermediate', 'Testing - Debugging - Mistakes solution'),
(6, 'First steps on Big Data', 7, 12, 3, 'Intermediate', 'Data Mining - Models - Analytics - Algorithms'),
(7, 'Introduction to Cloud Computing', 12, 12, 4, 'Introductory', 'Virtualization - Data segregation - Data recovery'),
(8, 'CyberSecurity for Begginers', 10, 7, 4, 'Introductory', 'Security technologies - Risk management - Attacks'),
(9, 'Thinking', 1, 1, 2, 'High', 'Contemplate'),
(73, 'Javascript', 8, 4, 1, 'Medium', 'Web Development'),
(74, 'Artificial Intelligence', 30, 6, 3, 'High', 'Deep learning'),
(75, 'Python Advanced AI: Deep Reinforcement Learning in Python', 10, 8, 26, 'High', 'The Complete Guide to Mastering Artificial Intelligence using Deep Learning and Neural Networks'),
(76, 'Artificial Intelligence for Business', 10, 9, 26, 'Medium', 'Solve Real World Business Problems with AI Solutions'),
(77, 'ChatBots: Messenger ChatBot - DialogFlow and nodejs', 14, 9, 27, 'High', 'Use DialogFlow to train chatbot to have dialogs. Develop backend app to connect chatbot to web servi'),
(78, 'Machine Learning with Javascript', 10, 8, 19, 'Medium', 'Master Machine Learning from scratch using Javascript and TensorflowJS with hands-on projects.'),
(79, 'React - The Complete Guide (incl Hooks, React Router, Redux)', 40, 30, 29, 'Medium', 'Dive in and learn React.js from scratch! Learn Reactjs, Hooks, Redux, React Routing, Animations, Nex'),
(80, 'Node with React: Fullstack Web Development', 25, 10, 29, 'Medium', 'Build and deploy fullstack web apps with NodeJS, React, Redux, Express, and MongoDB.'),
(81, 'React Testing with Jest and Enzyme', 12, 10, 29, 'Medium', 'Improve your React, Redux, Hooks and Context Code with Test Driven Development'),
(82, 'React Native - The Practical Guide [2020 Edition]', 32, 40, 29, 'Medium', 'Use React Native and your React knowledge to build native iOS and Android Apps - incl. Push Notifica'),
(83, 'Angular - The Complete Guide (2020 Edition)', 33, 41, 28, 'Medium', 'Master Angular 10 (formerly \"Angular 2\") and build awesome, reactive web apps with the successor of ');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `title`) VALUES
(1, 'Programming'),
(2, 'Communication'),
(3, 'Data Science'),
(4, 'Computing'),
(19, 'Machine Learning'),
(26, 'Deep Learning'),
(27, ' Web Development'),
(28, 'Angular'),
(29, 'React'),
(30, 'Vue');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `is_admin`) VALUES
(2, 'Fre', 'fre@learnit.com', '$2y$10$WE3ODugSNC14pzcYONZi9eXRa/i9vOn3iheAAvzeNP/enub/V98Iy', 1),
(3, 'Vog', 'vog@learnit.com', '$2y$10$WivDmFj.x5TwZWPSZsSO9.yQFlg.PrhVRIy3pCuVTa070PHpnBzt2', 1),
(4, 'Braian', 'braian@learnit.com', '$2y$10$WivDmFj.x5TwZWPSZsSO9.yQFlg.PrhVRIy3pCuVTa070PHpnBzt2', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_course` (`id_course`) USING BTREE,
  ADD KEY `FK_id_user` (`id_user`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_subject` (`id_subject`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_course`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`id_subject`) REFERENCES `subject` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
