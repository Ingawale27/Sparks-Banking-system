-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2021 at 08:45 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybank`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '100101', 'Baramati'),
(2, '100102', 'Jalochi');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'ashwini@gmail.com', 'ashwini12', 'user', '2021-09-15 04:36:27'),
(2, 'manager@manager.com', 'manager', 'manager', '2021-09-17 04:36:27'),
(6, 'cashier2@cashier.com', 'cashier2', 'cashier', '2021-09-17 07:14:47'),
(7, 'cashier3@cashier.com', 'cashier', 'cashier', '2021-09-18 18:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(7, '8', 'Your Account Balance is very less', '2021-09-18 08:08:32'),
(8, '13', 'You have to take your passbook', '2021-09-19 07:37:55'),
(9, '16', 'your account balance is less', '2021-09-19 07:52:40'),
(10, '16', 'your account balance is very less', '2021-09-20 03:17:47'),
(11, '18', 'your account balance is very less', '2021-09-20 03:26:51'),
(12, '18', 'your current balance is very less', '2021-09-20 03:31:06'),
(13, '18', 'your current balance is less', '2021-09-20 03:44:55'),
(14, '19', 'your account balance is less', '2021-09-20 03:49:23'),
(15, '17', 'your account balance is less', '2021-09-20 04:15:31'),
(16, '17', 'your account balance  is less', '2021-09-20 04:39:26'),
(17, '17', 'your current balance is less', '2021-09-20 04:47:12'),
(18, '17', 'your current balance is less', '2021-09-20 04:50:51'),
(19, '25', 'your current balance is less', '2021-09-20 04:58:14'),
(20, '17', 'your account balance is less', '2021-09-20 06:28:35'),
(21, '17', 'Your current balance is less', '2021-09-20 06:42:22'),
(22, '17', 'Your account balance is less', '2021-09-20 06:46:57'),
(23, '17', 'Your current balance is less', '2021-09-20 10:32:28'),
(24, '17', 'Your account balance is less', '2021-09-20 11:01:37'),
(25, '17', 'Your current balance is less', '2021-09-20 15:56:53'),
(26, '17', 'Your current balance is less', '2021-09-20 17:49:31'),
(27, '17', 'Your account balance is less', '2021-09-20 18:26:13'),
(28, '17', 'Your account balance is less', '2021-09-21 06:24:07'),
(29, '17', 'Your account balance is less', '2021-09-21 10:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `otheraccounts`
--

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otheraccounts`
--

INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '12001122', 'UBL', 'shreya Deshmukh', '40800', '2021-09-14 11:55:07'),
(2, '12001123', 'HBL', 'Isha Jadhav', '71000', '2021-09-14 11:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `other`, `userId`, `date`) VALUES
(31, 'transfer', '', '200', '1632036435', 1, '2021-09-19 07:42:00'),
(32, 'transfer', '', '500', '1632036552', 1, '2021-09-19 07:54:12'),
(33, 'transfer', '', '100', '1632036665', 1, '2021-09-19 12:42:12'),
(34, 'transfer', '', '200', '1632036552', 1, '2021-09-20 03:16:21'),
(35, 'transfer', '', '100', '1632036435', 1, '2021-09-20 03:32:07'),
(36, 'transfer', '', '100', '1632108558', 1, '2021-09-20 03:50:49'),
(37, 'transfer', '', '500', '1632108558', 1, '2021-09-20 03:57:56'),
(38, 'transfer', '', '400', '1632110126', 1, '2021-09-20 04:16:22'),
(39, 'transfer', '', '200', '1632111223', 1, '2021-09-20 04:40:17'),
(51, 'transfer', '', '200', '1632110126', 1, '2021-09-21 10:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `AdhaarNo` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `AdhaarNo`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'ashwini@gmail.com', 'ashwini12', 'Ashwini Ingawale', '3500', '987897686789', '7656785678', 'Baramati', 'Baramati', 'Programmer', '1005070', '1', 'Current', '2021-09-15 05:50:06'),
(13, 'arohi23@gmail.com', 'arohi', 'Arohi Shinde', '1100', '843212345655', '8934560000', 'Pune', 'Pune', 'work', '1632036435', '1', 'saving', '2021-09-19 07:29:06'),
(14, 'sai78@gmail.com', 'sai', 'Sai Patil', '1700', '891288756777', '9778987654', 'Sangali', 'Sangali', 'job', '1632036552', '1', 'saving', '2021-09-19 07:31:05'),
(15, 'swaraj@gmail.com', 'swaraj', 'Swaraj Gawade', '2100', '887866554433', '9212112343', 'Satara', 'Satara', 'work', '1632036665', '2', 'saving', '2021-09-19 07:33:06'),
(17, 'suarabh@gmail.com', 'manager', 'Suarabh Gawade', '500', '908976785904', '8974657356', 'Kolhapur', 'Kolhapur', 'Job', '1632055145', '1', 'current', '2021-09-19 12:40:25'),
(19, 'shreya@gmail.com', 'shreya', 'Shreya Ghadage', '1100', '875689467536', '9867587465', 'Solapur', 'Solapur', 'Programmer', '1632108558', '1', 'current', '2021-09-20 03:30:25'),
(21, 'swara@gmail.com', 'swara', 'Swara Shinde', '2600', '890765678908', '8785647653', 'Nagpur', 'Nagpur', 'Programmer', '1632110126', '1', 'saving', '2021-09-20 03:56:37'),
(22, 'riya@gmail.com', 'riya', 'Riya Gawade', '3100', '987567487653', '9876758768', 'Solapur', 'Solapur', 'Job', '1632111223', '1', 'current', '2021-09-20 04:14:52'),
(39, 'shruti18@gmail.com', 'shruti19', 'Shruti Gaikwad', '500', '934325678654', '7109238456', 'Pune', 'Pune', 'Programmer', '1632221696', '1', 'saving', '2021-09-21 10:55:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
