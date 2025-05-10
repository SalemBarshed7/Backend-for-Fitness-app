-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2025 at 04:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `adive`
--

CREATE TABLE `adive` (
  `id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catogry`
--

CREATE TABLE `catogry` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catogry`
--

INSERT INTO `catogry` (`id`, `name`, `image`) VALUES
(52, 'ARM', '66919IMG-20250407-WA0039.jpg'),
(62, 'Legs', '24738man-focused-on-training-legs-on-the-machine-royalty-free-image-1608566917.jpg'),
(71, 'Alsder', '374455-minute-ab-workout-main_0.jpg'),
(72, 'alther', '72533IMG-20250425-WA0021.jpg'),
(73, 'omg', '998342e4bc887d90abf64cf8657923d59c15f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `name`) VALUES
(1, 'hypertension'),
(2, 'Diabetic patient'),
(3, 'Heart patient');

-- --------------------------------------------------------

--
-- Table structure for table `disease_restrictions`
--

CREATE TABLE `disease_restrictions` (
  `disease_id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disease_restrictions`
--

INSERT INTO `disease_restrictions` (`disease_id`, `exercise_id`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` longblob NOT NULL,
  `duration` int(11) NOT NULL,
  `Calorus` varchar(150) NOT NULL,
  `Catogry_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`id`, `name`, `description`, `image`, `duration`, `Calorus`, `Catogry_id`) VALUES
(1, 'running', 'run for fast 10km ', '', 15, '20', 4);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'Patient');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` varchar(30) NOT NULL,
  `higth` varchar(30) NOT NULL,
  `width` varchar(30) NOT NULL,
  `Role_id` int(11) DEFAULT 2,
  `diseases_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `age`, `higth`, `width`, `Role_id`, `diseases_id`) VALUES
(1, 'admin@admin.com', 'admin123', 'admin', '', '', '', 1, 0),
(3, 'mohmed@gmail.com', 'mohmed123', 'mohmed', '20', '150', '77', 2, 0),
(4, 'salem@gmail.com', 'salem', 'salem', '35', '170', '65', 2, 0),
(6, 'help@gmai.com', 'help', 'help', '10', '100', '50', 3, 0),
(8, 'saeed@gmai.com', 'saeed', 'help', '10', '100', '50', 3, 0),
(9, 'abdullah@abdullah.com', 'abdullah', 'abdullah', '', '', '', NULL, 0),
(10, 'fitness@abdullah.com', 'fitness', 'fitness', '', '', '', 2, 0),
(11, 'saleh@gmail.com', 'saleh', 'saleh', '', '', '', 2, 0),
(12, 'moatez@gmail.com', 'moatez', 'moatez', '', '', '', 2, 0),
(13, 'ssssssssss', 'ssssss', 'ssssss', '', '', '', 2, 0),
(14, 'hhhhhhhhhh', 'hhhhhh', 'hhh', '', '', '', 2, 0),
(15, 'salem@salem.com', 'salem1', 'salem', '', '', '', 2, NULL),
(16, 'aloshy@gmail.com', 'alosh123', 'alosh', '', '', '', 2, NULL),
(17, 'saeed@saeed.com', 'saeed123', 'saeed', '', '', '', 2, NULL),
(18, 'salem@ali.com', 'salem123', 'salem@ali.com', '', '', '', 2, NULL),
(19, 'ali@ali.com', 'ali123', 'aliiii', '', '', '', 2, NULL),
(20, 'ali@ali.com', 'ali123', 'aliosh', '', '', '', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_actvity`
--

CREATE TABLE `user_actvity` (
  `id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Exercise_id` int(11) NOT NULL,
  `total_durtion` int(11) NOT NULL,
  `total_exercise` int(11) NOT NULL,
  `total_calory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adive`
--
ALTER TABLE `adive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catogry`
--
ALTER TABLE `catogry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease_restrictions`
--
ALTER TABLE `disease_restrictions`
  ADD PRIMARY KEY (`disease_id`),
  ADD KEY `disease_restrictions_ibfk_3` (`exercise_id`);

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Catogry_id` (`Catogry_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Role_id` (`Role_id`);

--
-- Indexes for table `user_actvity`
--
ALTER TABLE `user_actvity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User_id` (`User_id`),
  ADD KEY `Exercise_id` (`Exercise_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adive`
--
ALTER TABLE `adive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catogry`
--
ALTER TABLE `catogry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `disease_restrictions`
--
ALTER TABLE `disease_restrictions`
  MODIFY `disease_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exercise`
--
ALTER TABLE `exercise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_actvity`
--
ALTER TABLE `user_actvity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `disease_restrictions`
--
ALTER TABLE `disease_restrictions`
  ADD CONSTRAINT `disease_restrictions_ibfk_1` FOREIGN KEY (`disease_id`) REFERENCES `diseases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `disease_restrictions_ibfk_3` FOREIGN KEY (`exercise_id`) REFERENCES `exercise` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exercise`
--
ALTER TABLE `exercise`
  ADD CONSTRAINT `exercise_ibfk_1` FOREIGN KEY (`Catogry_id`) REFERENCES `catogry` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`Role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_actvity`
--
ALTER TABLE `user_actvity`
  ADD CONSTRAINT `user_actvity_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_actvity_ibfk_2` FOREIGN KEY (`Exercise_id`) REFERENCES `exercise` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
