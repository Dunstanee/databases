-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2019 at 10:09 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mictecdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `acti_name` varchar(400) DEFAULT NULL,
  `description` varchar(6000) DEFAULT NULL,
  `Amount_to_pay` int(11) DEFAULT NULL,
  `date_end` text DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `acti_name`, `description`, `Amount_to_pay`, `date_end`, `date`) VALUES
(5, 'REGISTRATION FEE', 'This is a requirement to all members of the club.', 100, '2019-07-25', '2019-06-13'),
(6, 'TRAVELLING TO NAIROBI', 'This is for the Youth mentorship about Technology', 200, '2019-06-28', '2019-06-25'),
(7, 'END OF THE ATTACHMENT', 'The end of the attachment is coming soon.', 500, '2024-03-05', '2019-06-26');

-- --------------------------------------------------------

--
-- Table structure for table `approval_table`
--

CREATE TABLE `approval_table` (
  `id` int(11) NOT NULL,
  `name` varchar(3000) DEFAULT NULL,
  `registration_no` varchar(3000) DEFAULT NULL,
  `course` varchar(3000) DEFAULT NULL,
  `mobile_no` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approval_table`
--

INSERT INTO `approval_table` (`id`, `name`, `registration_no`, `course`, `mobile_no`, `address`, `email`, `photo`, `date`, `Status`) VALUES
(5, 'Phoebe Wangui', 'TU01-IC211-0320/2017', 'Bachelor of Science in Electrical and Electronic Engineering', 74535675, 'Kogalo', 'wangui@gmail.com', 'profile_pic/IMG_20190625_101725.jpg', '25-06-19', 'Approved'),
(6, 'Brian Omwenga Ogero', 'TU01-IC211-0334', 'Bachelor of Science in Electrical and Electronic Engineering', 758680157, '49 Nyams', 'ogero2026@gmail.com', 'profile_pic/pic.jpg', '26-06-19', 'Approved'),
(7, 'Collins kipchumba', 'TU01-IC211-0311/2017', 'Bachelor of Science Mathematics and Computer Science', 725441506, '333', 'Collinskipchumba51@gmail.com', 'profile_pic/otqpgjgf5bcv9xk25d12073b6c0b0.jpg', '26-06-19', 'Approved'),
(8, 'juanjohnny', '0303', 'Bachelor of Science Mathematics and Computer Science', 74645363, '33', 'johnchege868@gmail.com', 'profile_pic/1561571742870-1292952231.jpg', '26-06-19', 'Approved'),
(9, 'Wesley ongalo okwomi', 'TU01-IC211-0281/2017', 'Bachelor of Science Mathematics and Computer Science', 705657167, '65071-00100', 'wwes1631@gmail.com', 'profile_pic/Mama Africa 20190102_133114.jpg', '26-06-19', 'Approved'),
(10, 'Moses Kipruto Ceruiyot', 'TU-01-IC211-0342/2017', 'Bachelor of Science Mathematics and Computer Science', 987890987, '', 'Moskiprutto@gmail.com', 'profile_pic/', '26-06-19', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `course_name` text DEFAULT NULL,
  `duration` text DEFAULT NULL,
  `date_registered` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `duration`, `date_registered`) VALUES
(3, 'Bachelor of Science Mathematics and Computer Science', '4 Years', '2019-06-10'),
(6, 'Bachelor of Science in Electrical and Electronic Engineering', '5 Years', '2019-06-13'),
(7, 'Bachelor of Science Mining and Mineral Processing Engineering', '6 Years', '2019-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `path` varchar(500) NOT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `name`, `path`, `date`) VALUES
(5, 'dunstan', 'documents/STUDENT PORTAL.pptx', NULL),
(6, 'jv', 'documents/Finance_user.php', NULL),
(7, 'date', 'documents/Finance_log.php', NULL),
(8, 'registration fee record', 'documents/Finance_user.php', '14-06-2019'),
(9, 'REPORT FOR THE MEMBERS REGISTERED', 'documents/leaders.pdf', '14-06-2019');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `registration_no` varchar(300) DEFAULT NULL,
  `course` varchar(300) DEFAULT NULL,
  `year_start` text DEFAULT NULL,
  `year_end` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `dob` text DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `date_registered` text DEFAULT NULL,
  `password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `username`, `registration_no`, `course`, `year_start`, `year_end`, `photo`, `address`, `gender`, `email`, `dob`, `mobile_no`, `date_registered`, `password`) VALUES
(5, 'DUNSTAN SAFU', 'dunstan', 'IIC211-0330/2017', 'BACHELOR OF COMPUTER SCIENCE', '2017', '2019-09-19', 'profile_pic/lap.PNG', 'kakamega', 'Male', 'dunstan@gmail.com', '2019-06-19', '0798399469', '10-06-19', '81dc9bdb52d04dc20036dbd8313ed055'),
(14, 'Vincent kyalo', 'vincent', 'TU01-IC211-0330/2019', 'Bachelor of Science in Electrical and Electronic Engineering', '2019-06-17', '2019-06-18', 'profile_pic/uniform-photo-lenana-mar2014.jpg', 'NAIROBI', 'male', 'vincent@gmail.com', '2019-06-06', '07373627283', '24-06-19', 'e10adc3949ba59abbe56e057f20f883e'),
(20, 'Phoebe Wangui', 'Wangui', 'TU01-IC211-0320/2017', 'Bachelor of Science in Electrical and Electronic Engineering', '2019-06-25', '2019-06-25', 'profile_pic/pricess.PNG', 'Kogalo', 'male', 'wangui@gmail.com', '2019-06-28', '074535675', '25-06-19', '827ccb0eea8a706c4c34a16891f84e7b'),
(21, 'Brian Omwenga Ogero', 'Kabugi', 'TU01-IC211-0334', 'Bachelor of Science in Electrical and Electronic Engineering', '2019-06-06', '2022-10-04', 'profile_pic/pic.jpg', '49 Nyams', 'male', 'ogero2026@gmail.com', '2000-05-15', '0758680157', '26-06-19', '3a4d92a1200aad406ac50377c7d863aa'),
(22, 'Collins kipchumba', 'Ceekay', 'TU01-IC211-0311/2017', 'Bachelor of Science Mathematics and Computer Science', '2019-06-26', '2019-06-26', 'profile_pic/otqpgjgf5bcv9xk25d12073b6c0b0.jpg', '333', 'male', 'Collinskipchumba51@gmail.com', '2019-06-26', '0725441506', '26-06-19', '41fcba09f2bdcdf315ba4119dc7978dd'),
(23, 'juanjohnny', 'Juanjohnny', '0303', 'Bachelor of Science Mathematics and Computer Science', '2019-06-26', '2019-06-26', 'profile_pic/1561571742870-1292952231.jpg', '33', 'male', 'johnchege868@gmail.com', '2019-06-26', '0-5326', '26-06-19', 'cf79ae6addba60ad018347359bd144d2'),
(24, 'Wesley ongalo okwomi', 'Wesley', 'TU01-IC211-0281/2017', 'Bachelor of Science Mathematics and Computer Science', '2017-09-04', '2021-09-04', 'profile_pic/Mama Africa 20190102_133114.jpg', '65071-00100', 'male', 'wwes1631@gmail.com', '1998-06-06', '0705657167', '26-06-19', '34c36cbbbf5bc969a3191dab8f74c88a'),
(25, 'Moses Kipruto Ceruiyot', 'Mosee', 'TU-01-IC211-0342/2017', 'Bachelor of Science Mathematics and Computer Science', '2017', '2000', 'profile_pic/', '', 'male', 'Moskiprutto@gmail.com', '30/5/2090', '0987890987', '26-06-19', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `message` varchar(6000) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `message`, `email`, `date`) VALUES
(1, 'FAITH VAATI', NULL, 'The system has been having complication when registering a name the has kingongo', 'faith@gmail.com', '2019-06-11'),
(2, 'Emmanuel Makhanu', 'Project', 'Dunstan hebu kuja ututengenezee pricing ya system yetu.', 'emanuelmakhanu@gmail.com', '2019-06-13'),
(3, 'Kababa Ogero', 'Thanks', 'Aaaaaaahahahahaaa****\r\nThanks for the service\r\n\r\nWow', 'kababa@gmail.com', '2019-06-13'),
(4, 'katoto', 'thank you', 'hgsdajyrgeywgu', 'katoc@gmail.com', '2019-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `registration_no` varchar(3000) DEFAULT NULL,
  `mode_payment` text DEFAULT NULL,
  `transaction_id` varchar(3000) DEFAULT NULL,
  `amount_paid` int(11) DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `activity` varchar(4000) DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `registration_no`, `mode_payment`, `transaction_id`, `amount_paid`, `total_amount`, `balance`, `activity`, `date`) VALUES
(2, 'DUNSTAN SAFU', 'IIC211-0330/2017', 'CASH', 'IUYWEURYIUWEWR', 500, 567, -467, 'MEMBER REGISTRATION FEE', '2019-06-12'),
(4, 'DUNSTAN SAFU', 'IIC211-0330/2017', '', 'null', 30, 230, 170, 'TOUR', '2019-06-11'),
(6, 'FAITH VAATI', 'IC211-450/2017', 'CASH', 'null', 50, 50, 350, 'TOUR', '2019-06-11'),
(7, 'FAITH VAATI', 'IC211-450/2017', 'CASH', 'NULL', 100, 100, 0, 'MEMBER REGISTRATION FEE', '2019-06-11'),
(9, 'BENARD KIKO', 'IC211-344/2019', 'MPESA', 'EWW442RWR', 300, 300, 100, 'TOUR', '2019-06-11'),
(10, 'Emmanuel Makhanu', '444', 'CASH', 'DJWEGRGU', 500, 500, -400, 'MEMBER REGISTRATION FEE', '2019-06-13'),
(11, 'Kababa Ogero', 'TU01-IC211-0334', 'MPESA', 'YTEWYRU', -20, 100, 0, 'MEMBER REGISTRATION FEE', '2019-06-13'),
(12, 'Kababa Ogero', 'TU01-IC211-0334', 'MPESA', 'UYYETWUUY', 300, 300, 0, 'PROJECT CONTRIBUTION', '2019-06-13'),
(13, 'Kababa Ogero', 'TU01-IC211-0334', 'MPESA', 'IWEYRIUWYEI', 4559, 4559, -4159, 'BUYING FRUITS', '2019-06-13'),
(14, 'Kababa Ogero', 'TU01-IC211-0334', '', 'TRRETRE6545', 500, 900, 0, 'VOI MISSION', '2019-06-13'),
(16, 'juanjohnny', '0303', 'BANK', 'HS2304', 400, 400, 100, 'END OF THE ATTACHMENT', '2019-06-26');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `name` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `name`) VALUES
(1, 'Patron'),
(2, 'Chairperson'),
(3, 'Secretary'),
(4, 'Assistant Secretary'),
(5, 'SpokesPerson'),
(6, 'Organizing Secretary'),
(7, 'Deputy Chairperson'),
(8, 'Treasurer'),
(9, 'Member'),
(10, 'Null'),
(11, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `topic` varchar(1000) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `message` varchar(10000) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `topic`, `photo`, `message`, `link`, `date`) VALUES
(3, 'Upwork', 'post_pic/maxresdefault.jpg', 'Through Upwork businesses get more done, connecting with freelancers to work on projects from web and mobile app development to SEO, social media marketing, content writing, graphic design, admin help and thousands of other projects. Upwork makes it fast, simple, and cost-effective to find, hire, work with, and pay the best professionals anywhere, any time.', 'https://www.upwork.com/', '11-06-2019'),
(8, 'Take a skills inventory in 2019 census', 'post_pic/census09logo (1).png', 'The next census is scheduled for August 2019. Censuses traditionally focus on population and housing, which helps in planning for a nationâ€™s needs. However, it is prudent that we introduce some add-ons to help in collecting data that will not only lay the foundation for the countryâ€™s labour polices but also foster economic growth.\r\n\r\nLabour is a key factor for economic growth and the contribution to the gross domestic product (GDP)', 'https://www.nation.co.ke/oped/opinion/Take-a-skills-inventory-in-2019-census-/440808-4537948-y14da/index.html', '12-06-2019'),
(9, 'Microsoft snaps up GitHub for $7.5 billion', 'post_pic/microsoft-github.png', 'On top of its core Git foundation, GitHub has built its own workflows (\"pull requests\") to ease the merging of changes from one repository to another. It also has integrated issue tracking, a Web front-end for browsing repositories, and a marketplace for a wide range of commercial add-ons and extensions.', 'https://arstechnica.com/gadgets/2018/06/microsoft-snaps-up-github-for-7-5-billion/', '12-06-2019'),
(10, 'Linux Deepin 15.8 is Released, Whats New Features ?', 'post_pic/ll.png', 'Deepin is an open source GNU/Linux operating system, based on Linux kernel and desktop applications, supporting laptops, desktops and all-in-ones. deepin preinstalls Deepin Desktop Environment (DDE) and nearly 30 deepin native applications, as well as several applications from the open source community to meet usersâ€™ daily learning and work needs. In addition, about a thousand of applications are offered in Deepin Store to meet your more needs. deepin, developed by a professional operating system R&D team and deepin technical community (www.deepin.org), is from the name of deepin technical community - â€œdeepinâ€, which means deep pursuit and exploration of the life and the future.', 'http://www.theubuntumaniac.com/2018/11/linux-deepin-158-is-released-whats-new.html', '12-06-2019'),
(11, 'Google honours Kenyan writer Margaret Atieno Ogola', 'post_pic/ogola.png', 'On Wednesday, US tech giant Google honoured the late novelist, paediatrician, and human rights advocate with a doodle on what would have been her 60th birthday.Born in June 12, 1958 in Asembo, Siaya County, Ogola attended Thompsonâ€™s Falls High School for her O-levels where she emerged the best student overall before proceeding to Alliance Girls High School for A-levels.Eight years after he passing, Dr Ogolaâ€™s contributions to the literary world and medical practice remains unrivalled.', 'https://www.nation.co.ke/news/Google-honours-Kenyan-writer-Margaret-Atieno-Ogola/1056-5154102-ioc147z/index.html', '12-06-2019'),
(13, 'You Need To Master Python Coding Language', 'post_pic/code.PNG', 'The language is open-source too, meaning anyone can technically pick it up and try it out. Github is full of various Python-powered projects of both large and small scale. Python is also one of the more popular programming languages these days too, finding uses in everything from development to cybersecurity to machine learning', 'https://www.indiatimes.com/technology/news/if-you-want-a-tech-job-in-video-streaming-you-need-to-master-python-coding-language-366578.html', '25-06-2019');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `course` varchar(5000) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `registration_no` varchar(100) DEFAULT NULL,
  `mobile_no` int(11) DEFAULT NULL,
  `position` text DEFAULT NULL,
  `level` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `gender`, `course`, `email`, `registration_no`, `mobile_no`, `position`, `level`, `date`, `password`, `status`) VALUES
(2, 'DUNSTAN SAFU', 'dunstan', 'male', 'Bachelor of Science Mathematics and Computer Science', 'dunstan@gmail.com', 'IIC211-0330/2017', 798399469, 'Admin', 'Admin', '10-06-19', '81dc9bdb52d04dc20036dbd8313ed055', NULL),
(12, 'Administrator', 'Admin', 'male', 'Bachelor of Science in Electrical and Electronic Engineering', 'vincent@gmail.com', 'TU01-IC211-0330/2019', 2147483647, 'Admin', 'Admin', '24-06-19', 'e10adc3949ba59abbe56e057f20f883e', 'Approved'),
(13, 'Paul Kimani', 'paul', 'Male', '', 'paul@gmail.com', 'TU01-IC211-0123/2018', 757566676, 'SpokesPerson', 'Official', '24-06-19', '25d55ad283aa400af464c76d713c07ad', NULL),
(19, 'Phoebe Wangui', 'Wangui', 'male', 'Bachelor of Science in Electrical and Electronic Engineering', 'wangui@gmail.com', 'TU01-IC211-0320/2017', 74535675, 'Member', 'Member', '25-06-19', '81dc9bdb52d04dc20036dbd8313ed055', 'Approved'),
(20, 'Brian Omwenga Ogero', 'Kabugi', 'male', 'Bachelor of Science Mining and Mineral Processing Engineering', 'ogero2026@gmail.com', 'TU01-IC211-0334', 758680157, 'Secretary', 'Official', '26-06-19', '3a4d92a1200aad406ac50377c7d863aa', 'Approved'),
(21, 'Collins kipchumba', 'Ceekay', 'male', 'Bachelor of Science Mathematics and Computer Science', 'Collinskipchumba51@gmail.com', 'TU01-IC211-0311/2017', 725441506, 'Member', 'Member', '26-06-19', '41fcba09f2bdcdf315ba4119dc7978dd', 'Approved'),
(22, 'juanjohnny', 'Juanjohnny', 'male', 'Bachelor of Science Mathematics and Computer Science', 'johnchege868@gmail.com', '0303', 0, 'Member', 'Member', '26-06-19', 'cf79ae6addba60ad018347359bd144d2', 'Approved'),
(23, 'Wesley ongalo okwomi', 'Wesley', 'male', 'Bachelor of Science Mathematics and Computer Science', 'wwes1631@gmail.com', 'TU01-IC211-0281/2017', 705657167, 'Member', 'Member', '26-06-19', '34c36cbbbf5bc969a3191dab8f74c88a', 'Approved'),
(24, 'Moses Kipruto Ceruiyot', 'Mosee', 'male', 'Bachelor of Science Mathematics and Computer Science', 'Moskiprutto@gmail.com', 'TU-01-IC211-0342/2017', 987890987, 'Member', 'Member', '26-06-19', '81dc9bdb52d04dc20036dbd8313ed055', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `level` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `name`, `level`) VALUES
(1, 'Admin', '1'),
(2, 'Official', '2'),
(3, 'Member', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approval_table`
--
ALTER TABLE `approval_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `approval_table`
--
ALTER TABLE `approval_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
