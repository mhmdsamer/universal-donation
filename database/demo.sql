-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 11:15 PM
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
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` text NOT NULL,
  `location` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `name`, `email`, `password`, `location`, `address`) VALUES
(3, 'moh', 'admin@example.com', '$2y$10$/rjPX2ltJM4Tq5a.g3gMXuFjEIkG00YSmJflgfiNa0j/7nzAd2MmS', '	Şişli', 'kustepe'),
(4, 'bc organization', 'charity@gmail.com', '$2y$10$W6DpOxNsNVaLYcbiCk6UPeyYhmKdLRz5wuXjqF3fzjoxys7YW1cgm', '	Şişli', 'yenidogan'),
(5, 'bs organization', 'charity1@gmail.com', '$2y$10$kZDrCsUgksndYQ6m446dnehzvUbMy3QavLXtrnWPiFk5FoNEDUP.C', '	Şişli', 'yeniyeni'),
(6, 'moh', 'admin2@gmail.com', '$2y$10$7RK79FOEdEZLCc3A84zd0uLNeKjARlEmAoGBbERjgZc53fbJAIWcC', 'istanbul', 'belekdouzu');

-- --------------------------------------------------------

--
-- Table structure for table `charity`
--

CREATE TABLE `charity` (
  `Aid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` text NOT NULL,
  `location` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `charity`
--

INSERT INTO `charity` (`Aid`, `name`, `email`, `password`, `location`, `address`) VALUES
(3, 'bc organization', 'bc@gmail.com', '$2y$10$mOv6.oDOLIZ1otEbs8jr8eynMyte/oJqaRxYdCFldN4FyIOjU31hq', '	Şişli', 'ffff'),
(4, 'bcc organization', 'bc1@gmail.com', '$2y$10$i7y5YR9JkTOEP7HvLk0O2.w0L8QbM9/bVNHQYtJREPu6mWw3ZoiM2', '	Şişli', 'd'),
(5, 'www', 'w@gmail.com', '$2y$10$YzKgEzgUC6wZKkpuTJr63euL7EM8x7YOYfrOHTKoefgkubWHFToX.', '	Şişli', 'yenidogan'),
(6, 'd', 'd@gmail.com', '$2y$10$qlr.BAQni25NTm0itNszrOI912M1cRxLuPe.XHR6g9uiXMfvafjh6', 'Küçükçekmece', 'yenido'),
(7, 'turkey charity', 'charity2@gmail.com', '$2y$10$qv.WIw7U4WWdQ99q96OfIeP6hcJtvulseoZbDZ2KzFaNJ2iVx/p/y', 'istanbul', 'bayrampasa');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_persons`
--

CREATE TABLE `delivery_persons` (
  `Did` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_persons`
--

INSERT INTO `delivery_persons` (`Did`, `name`, `email`, `password`, `city`) VALUES
(5, 'mohammed', 'delivery@gmail.com', '$2y$10$BM.6Ku2z9899M5SeZnThCO9xednDkHzmRhWUbGpWuJhAtjzFHzJ5y', '	Şişli'),
(6, 'othman', 'delivery2@gmail.com', '$2y$10$MUFJzc.En0O0wlVue6/W2e9bdV9FBtPAkWLSVqYy9ioQIg0oo7w0W', 'istanbul');

-- --------------------------------------------------------

--
-- Table structure for table `food_donations`
--

CREATE TABLE `food_donations` (
  `Fid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `food` varchar(50) NOT NULL,
  `type` text NOT NULL,
  `category` text NOT NULL,
  `quantity` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `address` text NOT NULL,
  `location` varchar(50) NOT NULL,
  `phoneno` varchar(25) NOT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `delivery_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_donations`
--

INSERT INTO `food_donations` (`Fid`, `name`, `email`, `food`, `type`, `category`, `quantity`, `date`, `address`, `location`, `phoneno`, `assigned_to`, `delivery_by`) VALUES
(26, 'ms', 'm@example.com', '', '', 'raw-food', '20', '2024-02-26 13:33:08', 'ss', '	Şişli', '4634346636', 3, 5),
(27, 'ms', 'm@example.com', '', '', 'raw-food', '30', '2024-02-26 13:42:23', 'ddd', '	Şişli', '4534543555', 3, 5),
(28, 'ms', 'm@example.com', '', '', 'raw-food', '10kg', '2024-02-26 13:50:04', 'fkjaekjfaejfhk', '	Şişli', '4646343634', 3, 5),
(29, 'ms', 'm@example.com', '', '', 'cooked-food', '50', '2024-02-26 13:55:53', 'dddddd', '	Şişli', '4646343634', 3, 5),
(30, 'ms', 'm@example.com', '', '', 'raw-food', '100', '2024-02-26 13:58:28', 'ddde', '	Şişli', '4634346636', 3, 5),
(31, 'ms', 'm@example.com', '', '', 'raw-food', '40', '2024-02-26 14:00:44', 'cwww', '	Şişli', '4534543555', 3, 5),
(32, 'ms', 'm@example.com', 'food', 'veg', 'packed-food', '20', '2024-02-26 14:04:43', 'fhfdhdfhffhddf', '	Şişli', '1627163713', 3, 5),
(33, 'ms', 'm@example.com', '', 'veg', 'raw-food', '20', '2024-02-26 14:07:45', 'aa', '	Şişli', '4534543555', 3, 5),
(34, 'ms', 'm@example.com', 'food', '', 'raw-food', '10 person', '2024-02-26 14:40:31', 'ccccccccccccccccc', '	Şişli', '1627163713', NULL, NULL),
(35, 'ms', 'm@example.com', 'clothes', '', 'cooked-food', '10 person', '2024-02-26 14:43:33', 'ss', '	Şişli', '4634346636', NULL, NULL),
(37, 'moh', 'admin@example.com', 'household item', '', 'appliance', '3', '2024-02-26 15:31:20', 'fkjaekjfaejfhk', '	Şişli', '4646343634', 3, 5),
(38, 'ms', 'm@example.com', 'clothes', '', 'winter', '5', '2024-02-26 19:50:52', 'kustepe', '	Şişli', '4534543555', 3, 5),
(39, 'mohammed', 'delivery@gmail.com', 'household item', '', 'furniture', '30', '2024-02-26 20:12:56', 'fkjaekjfaejfhk', '	Şişli', '4646343634', 3, 5),
(40, 'bs organization', 'charity1@gmail.com', 'household item', '', 'appliance', '2', '2024-02-27 12:23:13', 'fkjaekjfaejfhk', '	Şişli', '4646343634', 3, NULL),
(41, 'ms', 'm@example.com', '', '', 'educational', '5', '2024-02-28 14:21:51', 'ss', '	Şişli', '4634346636', NULL, NULL),
(42, 'ms', 'm@example.com', '', '', 'educational', '5', '2024-02-28 14:24:19', 'ss', '	Şişli', '4634346636', NULL, NULL),
(43, 'ms', 'm@example.com', 'clothes', '', 'winter', '20', '2024-02-28 14:25:21', 'fkjaekjfaejfhk', '	Şişli', '4646343634', 3, NULL),
(44, 'ms', 'm@example.com', '', '', 'educational', '4', '2024-02-28 14:27:40', 'ss', '	Şişli', '4634346636', 3, NULL),
(45, 'mohammed', 'm@example.com', 'books', '', 'educational', '10', '2024-02-28 14:29:14', 'fkjaekjfaejfhk', '	Şişli', '5318206053', 3, NULL),
(46, 'ms', 'm@example.com', 'clothes', '', 'winter', '40', '2024-02-28 22:23:07', 'kustepe', '	Şişli', '1627163713', 3, NULL),
(47, 'ms', 'm@example.com', 'clothes', '', 'winter', '40', '2024-04-25 15:05:30', 'kustepe', '	Şişli', '1627163713', 3, NULL),
(48, 'ms', 'm@example.com', 'clothes', '', 'winter', '20', '2024-04-25 15:24:50', 'kustepe', '	Şişli', '1627163713', 3, NULL),
(49, 'mohammed', 'm@example.com', 'household item', '', 'appliance', '3', '2024-04-25 16:05:57', 'fkjaekjfaejfhk', '	Şişli', '5318206053', 3, NULL),
(51, 'mohammed', 'm@example.com', 'books', '', 'educational', '10', '2024-04-29 18:08:57', 'k', '	Şişli', '5318206053', 5, 5),
(52, 'oussama', 'oussama@gmail.com', 'household item', '', '', '3', '2024-04-29 18:12:19', 'fff', 'Küçükçekmece', '9485794385', NULL, NULL),
(53, 'oussama', 'oussama@gmail.com', 'household item', '', 'kitchentool', '3', '2024-04-29 18:12:44', 'fff', '	Şişli', '9485794385', 3, NULL),
(54, 'oussama', 'oussama@gmail.com', 'clothes', '', 'summer', '18', '2024-04-29 18:24:48', 'ffff', 'Küçükçekmece', '9857982755', NULL, NULL),
(55, 'mss', 'mss@gmail.com', 'clothes', '', 'summer', '5', '2024-05-01 12:57:52', 'ffff', '	Şişli', '9857982755', NULL, NULL),
(56, 'mss', 'mss@gmail.com', 'household item', '', 'other', '6', '2024-05-01 13:07:29', 'j', '	Şişli', '7447747474', NULL, NULL),
(57, 'mohammed', 'm@example.com', 'household item', '', '', '3', '2024-05-01 13:12:47', 'fkjaekjfaejfhk', '	Şişli', '5318206053', NULL, NULL),
(58, 'mohammed', 'm@example.com', 'books', '', 'educational', '3', '2024-05-01 13:31:22', 'knnnnnnnnnnnn', '	Şişli', '5318206055', 3, NULL),
(59, 'ms', 'm@example.com', 'food', '', 'raw-food', '30', '2024-05-01 17:51:28', '00000', '	Şişli', '7447747474', NULL, NULL),
(60, 'mohammed', 'm@example.com', 'books', '', 'educational', '30', '2024-05-01 18:18:30', 'knnnnnnnnnnnn', '	Şişli', '5318206055', NULL, NULL),
(61, 'ms', 'm@example.com', 'clothes', '', 'summer', '49', '2024-05-01 20:44:50', 'osmanbey', 'istanbul', '5435435545', 7, NULL),
(62, 'salim', 'salim@gmail.com', 'household item', '', 'furniture', '1', '2024-05-01 20:51:24', 'balarpasa', 'istanbul', '9857982755', 6, NULL),
(63, 'salim', 'salim@gmail.com', 'books', '', 'educational', '3', '2024-05-01 20:56:32', 'bllll', 'istanbul', '5318206055', 7, NULL),
(64, 'ms', 'm@example.com', 'clothes', '', 'winter', '2', '2024-05-01 21:01:22', 'taksim', 'istanbul', '9857982755', 6, NULL),
(65, 'ms', 'm@example.com', 'food', '', 'packed-food', '4', '2024-05-01 21:09:38', '00000', 'istanbul', '7447747474', 6, NULL),
(66, 'ms', 'm@example.com', 'household item', '', 'kitchentool', '3', '2024-05-01 21:12:03', 'y', 'istanbul', '9857982755', 7, NULL),
(67, 'salim', 'salim@gmail.com', 'books', '', 'educational', '3', '2024-05-01 21:23:01', 'uskudar', 'istanbul', '5318206055', 6, NULL),
(68, 'salim', 'salim@gmail.com', 'food', '', 'cooked-food', '8', '2024-05-01 21:30:39', 'yenikapi', 'istanbul', '7447747474', 7, 6),
(69, 'salim', 'salim@gmail.com', 'books', '', 'otherbooks', '6', '2024-05-01 21:48:57', 'besiktas', 'istanbul', '5318206055', 6, NULL),
(70, 'salim', 'salim@gmail.com', 'household item', '', 'kitchentool', '4', '2024-05-01 22:00:42', 'sirineveler', 'istanbul', '9857982755', 7, NULL),
(71, 'salim', 'salim@gmail.com', 'clothes', '', 'summer', '3', '2024-05-01 22:07:13', 'veznicilar', 'istanbul', '5318206056', 6, NULL),
(72, 'salim', 'salim@gmail.com', 'clothes', '', 'summer', '4', '2024-05-01 22:12:06', 'veznicilar 11', 'istanbul', '5318206056', 6, 6),
(73, 'salim', 'salim@gmail.com', 'clothes', '', 'summer', '3', '2024-05-01 22:12:20', 'veznicilar 22', 'istanbul', '5318206056', 7, NULL),
(74, 'salim', 'salim@gmail.com', 'clothes', '', 'winter', '4', '2024-05-01 22:28:43', 'veznicilar 33', 'istanbul', '5318206056', 7, NULL),
(75, 'salim', 'salim@gmail.com', 'books', '', 'otherbooks', '5', '2024-05-02 15:47:43', 'besiktassss', 'istanbul', '5318206055', 6, NULL),
(76, 'salim', 'salim@gmail.com', 'food', '', 'packed-food', '8', '2024-05-02 16:02:25', 'fatih', 'istanbul', '7447747474', 7, 6),
(85, 'salwa', 'salwa@gmail.com', 'food', '', 'raw-food', '10 person', '2024-05-04 16:42:46', 'bakirkoy', 'istanbul', '4363466544', NULL, NULL),
(87, 'salwa', 'salwa@gmail.com', 'household item', '', 'furniture', '2', '2024-05-04 16:43:14', 'bakirkoy', 'istanbul', '4363466544', 7, 6),
(88, 'yousra', 'yousra@gmail.cpm', 'clothes', '', 'summer', '4', '2024-05-05 13:29:00', 'efe', 'bursa', '3453454643', NULL, NULL),
(89, 'ammar', 'ammar@gmail.com', 'clothes', '', 'winter', '10', '2024-05-05 14:30:13', 'efe', 'istanbul', '3453454643', 7, NULL),
(92, 'salwa', 'salwa@gmail.com', 'food', '', 'packed-food', '2', '2024-05-06 14:53:25', 'bakirkoy', 'istanbul', '4363466544', NULL, NULL),
(93, 'salwa', 'salwa@gmail.com', 'clothes', '', 'winter', '3', '2024-05-06 19:23:44', 'kustepe', 'istanbul', '1627163713', 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `gender`) VALUES
(25, 'ammar', 'ammar@gmail.com', '$2y$10$xdSzsp/02xwQzYVzEp.HM.tj4YNuAX5LeKw8pYylJ5h/WxCcvjhb6', 'male'),
(21, 'ibrahim', 'ibrahim@gmail.com', '$2y$10$wURjqA9zsVdWaX5udyLk4.bJASWBZgt6sQB/QMYP8OzvgmOiQ69oS', 'male'),
(22, 'salim', 'salim@gmail.com', '$2y$10$jP6rA0R3m.uV3mIdn3tG5.8pnuycLjWL0ulVENydoMJ3xVWqcTxVW', 'male'),
(23, 'salwa', 'salwa@gmail.com', '$2y$10$ENZMifE6xy.Px2bmyrFWk.tf21zlF4mGPkbprmoptSh5207mzpeGS', 'female'),
(24, 'yousra', 'yousra@gmail.cpm', '$2y$10$3wFdGsig.dHluHkB5IWOhejTAfTOQNeO5Y4Iaj67CxlVQbtBfT8Nq', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `feedback_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`feedback_id`, `name`, `email`, `message`) VALUES
(1, 'John Smith', 'john@example.com', 'I really enjoyed using your product!'),
(2, 'prasanna', 'bprasanna0502@gmail.com', 'good'),
(3, 'prasanna', 'bprasanna0502@gmail.com', 'liked it'),
(4, 'prasanna', 'bprasanna0502@gmail.com', 'great'),
(5, 'abi', 'bsabineshakash@gmail.com', 'great'),
(6, 'arun', 'arun26ifs@gmail.com', 'not good');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `charity`
--
ALTER TABLE `charity`
  ADD PRIMARY KEY (`Aid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `delivery_persons`
--
ALTER TABLE `delivery_persons`
  ADD PRIMARY KEY (`Did`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `food_donations`
--
ALTER TABLE `food_donations`
  ADD PRIMARY KEY (`Fid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `charity`
--
ALTER TABLE `charity`
  MODIFY `Aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `delivery_persons`
--
ALTER TABLE `delivery_persons`
  MODIFY `Did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `food_donations`
--
ALTER TABLE `food_donations`
  MODIFY `Fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
