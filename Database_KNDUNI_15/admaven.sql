-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 02:39 AM
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
-- Database: `admaven`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `fname` varchar(10) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `Appointment_ID` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(6) NOT NULL,
  `pemail` varchar(20) NOT NULL,
  `cnumber` varchar(10) NOT NULL,
  `cinterest` varchar(300) NOT NULL,
  `Cons_ID` int(10) NOT NULL,
  `User_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`fname`, `lname`, `Appointment_ID`, `Date`, `Time`, `pemail`, `cnumber`, `cinterest`, `Cons_ID`, `User_ID`) VALUES
('Jane', 'austin', 38, '1999-03-12', '17:09', 'jane@gmail.com', '0987765456', 'want to know about web designing', 123, 123),
('Prasad', 'Bandara', 39, '2002-02-12', '19:42', 'www.sithummax2002@gm', '0716501446', 'whiuc och euchk cskiecseec ', 123, 123);

-- --------------------------------------------------------

--
-- Table structure for table `consultant`
--

CREATE TABLE `consultant` (
  `cons_ID` int(5) NOT NULL,
  `C_fname` varchar(30) NOT NULL,
  `C_lname` varchar(30) NOT NULL,
  `C_email` varchar(100) NOT NULL,
  `C_password` varchar(15) NOT NULL,
  `C_contactNO` varchar(10) NOT NULL,
  `C_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consultant`
--

INSERT INTO `consultant` (`cons_ID`, `C_fname`, `C_lname`, `C_email`, `C_password`, `C_contactNO`, `C_image`) VALUES
(8, 'Chathurya', 'Darmapala', 'chathu123@gmail.com', '1234567', '1234567', ''),
(9, 'Matheesha', 'Bandara', 'mathee@gmail.com', '1234567', '0772737506', '');

-- --------------------------------------------------------

--
-- Table structure for table `content_creator`
--

CREATE TABLE `content_creator` (
  `Cont_ID` int(5) NOT NULL,
  `Cont_Fname` varchar(50) NOT NULL,
  `Cont_Lname` varchar(50) NOT NULL,
  `Cont_email` varchar(200) NOT NULL,
  `Cont_password` varchar(255) NOT NULL,
  `Cont_contactNO` varchar(15) NOT NULL,
  `Cont_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content_creator`
--

INSERT INTO `content_creator` (`Cont_ID`, `Cont_Fname`, `Cont_Lname`, `Cont_email`, `Cont_password`, `Cont_contactNO`, `Cont_image`) VALUES
(1, 'Kamal', 'waththegama', 'she123@gmail.com', '123456', '123456', 'Matheesha.jpeg'),
(4, 'Shehani', 'Wimalarathna', 'sheha123@gmail.com', '12345567', '0772737506', '');

-- --------------------------------------------------------

--
-- Table structure for table `manage_admin`
--

CREATE TABLE `manage_admin` (
  `Mnadmin_ID` int(5) NOT NULL,
  `Mnad_Fname` varchar(100) NOT NULL,
  `Mand_Lname` varchar(100) NOT NULL,
  `Mand_email` varchar(100) NOT NULL,
  `Mand_contactNO` varchar(15) NOT NULL,
  `Mand_password` varchar(30) NOT NULL,
  `Mand_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manage_admin`
--

INSERT INTO `manage_admin` (`Mnadmin_ID`, `Mnad_Fname`, `Mand_Lname`, `Mand_email`, `Mand_contactNO`, `Mand_password`, `Mand_image`) VALUES
(2, 'Dewmi', 'Siriwardana', 'manager@gmail.com', '0772737506', 'manager123', 'Matheesha.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `newapp`
--

CREATE TABLE `newapp` (
  `app_ID` int(5) NOT NULL,
  `u_email` varchar(100) NOT NULL,
  `app_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newapp`
--

INSERT INTO `newapp` (`app_ID`, `u_email`, `app_name`) VALUES
(1, 'chathu123@gmail.com', 'Sunday appointment');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `package_name` varchar(20) NOT NULL,
  `order_detials` varchar(50) NOT NULL,
  `amount` varchar(40) NOT NULL,
  `time_duration` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_name`, `email`, `contact_number`, `package_name`, `order_detials`, `amount`, `time_duration`) VALUES
(4, 'Janee', 'jane@gmail.com', '098333e', 'Suhada package', 'fesfefesf', 'rs.12,0000', '1week'),
(6, 'sahan aiya', 'she123@gmail.com', '0716501446', 'feafa', 'grsgrsgs', '2000', 'wdaaawdw'),
(7, 'sahan aiya', 'she123@gmail.com', '0716501446', 'feafa', 'grsgrsgs', '2000', 'wdaaawdw'),
(8, 'Matheesha Bandara', 'mathee@gmail.com', '0772737506', 'vss', '', '2444', ''),
(9, 'Chathurya Darmapala', 'chathu123@gmail.com', '0772737506', '', '', '', ''),
(13, 'Jane', 'jane@gmail.com', '0772334507', '', 'fsefsefse', '20 000', '12days'),
(14, 'Chathurya', 'chathu123@gmail.com', '0772737506', '', 'Meka wada karnawa hodata', '12500', '1day'),
(15, 'Chathurya', 'chathu123@gmail.com', '0772737506', '', '', '12500', ''),
(16, 'Jane', 'jane@gmail.com', '0772334507', '', 'fwefsefef ', '17000', '1day');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(20) NOT NULL,
  `card_holder` varchar(30) NOT NULL,
  `card_number` int(20) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `card_holder`, `card_number`, `amount`) VALUES
(1, 'aaa', 123, '345'),
(2, 'aaa', 123, '123'),
(3, 'Prasad', 44332, '12500'),
(4, 'kamal', 2147483647, '12500'),
(5, 'prasad', 2147483647, '17000');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `S_ID` int(11) NOT NULL,
  `Admin_ID` varchar(10) NOT NULL,
  `S_title` varchar(100) NOT NULL,
  `S_details` varchar(500) NOT NULL,
  `S_image` varchar(50) NOT NULL,
  `S_amt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`S_ID`, `Admin_ID`, `S_title`, `S_details`, `S_image`, `S_amt`) VALUES
(4, '', 'Test title 04', 'Ane mata nm dan athiwela thiyenne!', 'image2.jpg', '20 000'),
(5, '', 'Service 03', 'fnkawfn laklcla clijcalkmc awlca lackmawlkm ', 'image2.jpg', '12500'),
(6, '', 'Test 04', 'cec eoivjse ls kvs lsejlk ;eh leaijlcwjc wakchwa lakcwk wi wcwa mcl wacw ', 'image4.jpg', '17000');

-- --------------------------------------------------------

--
-- Table structure for table `user_admin`
--

CREATE TABLE `user_admin` (
  `User_admin_id` varchar(10) NOT NULL,
  `ua_Fname` varchar(50) NOT NULL,
  `ua_Lname` varchar(50) NOT NULL,
  `ua_email` varchar(200) NOT NULL,
  `ua_password` varchar(30) NOT NULL,
  `ua_contactNO` varchar(15) NOT NULL,
  `ua_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_admin`
--

INSERT INTO `user_admin` (`User_admin_id`, `ua_Fname`, `ua_Lname`, `ua_email`, `ua_password`, `ua_contactNO`, `ua_image`) VALUES
('ua01', 'Prasad', 'Bandara', 'prasaa@gmail.com', 'prasaa123', '0772737506', 'image4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `user_ID` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `L_name` varchar(40) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(30) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `profile_photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`user_ID`, `name`, `L_name`, `email`, `password`, `contact_no`, `profile_photo`) VALUES
(2, 'Chathurya', 'Disanayake', 'chathu123@gmail.com', 'chathu123', '0772737506', 'image4.jpg'),
(3, 'Jane', 'Bandara', 'jane@gmail.com', '123jane', '0772334507', 'image4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Appointment_ID`);

--
-- Indexes for table `consultant`
--
ALTER TABLE `consultant`
  ADD PRIMARY KEY (`cons_ID`);

--
-- Indexes for table `content_creator`
--
ALTER TABLE `content_creator`
  ADD PRIMARY KEY (`Cont_ID`);

--
-- Indexes for table `manage_admin`
--
ALTER TABLE `manage_admin`
  ADD PRIMARY KEY (`Mnadmin_ID`);

--
-- Indexes for table `newapp`
--
ALTER TABLE `newapp`
  ADD PRIMARY KEY (`app_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`S_ID`);

--
-- Indexes for table `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`User_admin_id`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `Appointment_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `consultant`
--
ALTER TABLE `consultant`
  MODIFY `cons_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `content_creator`
--
ALTER TABLE `content_creator`
  MODIFY `Cont_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manage_admin`
--
ALTER TABLE `manage_admin`
  MODIFY `Mnadmin_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newapp`
--
ALTER TABLE `newapp`
  MODIFY `app_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `S_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `user_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
