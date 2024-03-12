-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2024 at 07:05 PM
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
-- Database: `traffic_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `acidents`
--

CREATE TABLE `acidents` (
  `acidents_id` int(11) NOT NULL,
  `acident_type` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `acident_cause` varchar(100) DEFAULT NULL,
  `victims_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acidents`
--

INSERT INTO `acidents` (`acidents_id`, `acident_type`, `location`, `acident_cause`, `victims_number`) VALUES
(1, 'car accident', 'buremba road', 'overspeeding', 12);

-- --------------------------------------------------------

--
-- Table structure for table `incident_types`
--

CREATE TABLE `incident_types` (
  `incident_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `rolename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `rolename`) VALUES
(0, 'officer');

-- --------------------------------------------------------

--
-- Table structure for table `trafficcameras`
--

CREATE TABLE `trafficcameras` (
  `camera_id` int(11) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `camera_type_id` int(11) DEFAULT NULL,
  `operational_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trafficcameras`
--

INSERT INTO `trafficcameras` (`camera_id`, `location`, `camera_type_id`, `operational_status`) VALUES
(0, 'highstreet', 0, 127);

-- --------------------------------------------------------

--
-- Table structure for table `trafficviolations`
--

CREATE TABLE `trafficviolations` (
  `violation_id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `violation_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `traffic_incidents`
--

CREATE TABLE `traffic_incidents` (
  `incident_id` int(11) NOT NULL,
  `incident_type_id` int(11) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `incident_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(14, 'muhinda', '123456789', 'ab@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `vehicle_id` int(11) NOT NULL,
  `platenumber` varchar(15) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vehicle_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`vehicle_id`, `platenumber`, `owner_id`, `vehicle_type_id`) VALUES
(0, 'uba 861a', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicletypes`
--

CREATE TABLE `vehicletypes` (
  `vehichle_type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicletypes`
--

INSERT INTO `vehicletypes` (`vehichle_type_id`, `type_name`) VALUES
(0, 'subaru');

-- --------------------------------------------------------

--
-- Table structure for table `violationtypes`
--

CREATE TABLE `violationtypes` (
  `violation_type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `violationtypes`
--

INSERT INTO `violationtypes` (`violation_type_id`, `type_name`) VALUES
(0, 'overloading');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acidents`
--
ALTER TABLE `acidents`
  ADD PRIMARY KEY (`acidents_id`);

--
-- Indexes for table `incident_types`
--
ALTER TABLE `incident_types`
  ADD PRIMARY KEY (`incident_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `trafficcameras`
--
ALTER TABLE `trafficcameras`
  ADD PRIMARY KEY (`camera_id`);

--
-- Indexes for table `trafficviolations`
--
ALTER TABLE `trafficviolations`
  ADD PRIMARY KEY (`violation_id`);

--
-- Indexes for table `traffic_incidents`
--
ALTER TABLE `traffic_incidents`
  ADD PRIMARY KEY (`incident_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `vehicletypes`
--
ALTER TABLE `vehicletypes`
  ADD PRIMARY KEY (`vehichle_type_id`);

--
-- Indexes for table `violationtypes`
--
ALTER TABLE `violationtypes`
  ADD PRIMARY KEY (`violation_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acidents`
--
ALTER TABLE `acidents`
  MODIFY `acidents_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
