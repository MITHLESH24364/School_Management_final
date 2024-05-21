-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 04:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_management_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_detail`
--

CREATE TABLE `admin_detail` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_detail`
--

INSERT INTO `admin_detail` (`id`, `Name`, `email`, `username`, `password`, `position`, `image`) VALUES
(1, 'Mithlesh Kumar Singh', 'singhmithlesh095@gmail.com', 'mks24364', 'root', 'Admin', ''),
(2, 'MITHLESH KUMAR SINGH', 'singhmithlesh0955@gmail.com', 'mks', '173e46b1192ee4a8072c150139b997ac', 'Manager', ''),
(3, 'MITHLESH KUMAR SINGH', 'singhmithlesh09555@gmail.com', 'root', '63a9f0ea7bb98050796b649e85481845', 'Manager', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students_detail`
--

CREATE TABLE `students_detail` (
  `account_id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `roll_no` varchar(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `blood_group` varchar(5) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `student_class` varchar(50) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_no` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_detail`
--

INSERT INTO `students_detail` (`account_id`, `fullname`, `gender`, `date_of_birth`, `roll_no`, `location`, `blood_group`, `religion`, `email`, `student_class`, `section`, `number`, `parent_name`, `parent_no`, `image`, `username`, `password`) VALUES
(1, 'RUBIN SHRESTHA', 'Male', '01-01-2000', '1001', 'Kathmandu, Nepal', 'A+', 'Hindu', 'rubin@example.com', '10', 'A', '9800000001', 'Parent Rubin', '9800000002', 'image1.jpg', 'rubin_user', 'password1'),
(2, 'SARANSHU AMATYA', 'Male', '02-02-2000', '1002', 'Kathmandu, Nepal', 'B+', 'Hindu', 'saranshu@example.com', '10', 'A', '9800000003', 'Parent Saranshu', '9800000004', 'image2.jpg', 'saranshu_user', 'password2'),
(3, 'ANJINA MAHARJAN', 'Female', '03-03-2000', '1003', 'Kathmandu, Nepal', 'O+', 'Buddhist', 'anjina@example.com', '10', 'A', '9800000005', 'Parent Anjina', '9800000006', 'image3.jpg', 'anjina_user', 'password3'),
(4, 'REGISHA MAHARJAN', 'Female', '04-04-2000', '1004', 'Kathmandu, Nepal', 'AB+', 'Buddhist', 'regisha@example.com', '10', 'A', '9800000007', 'Parent Regisha', '9800000008', 'image4.jpg', 'regisha_user', 'password4'),
(5, 'SHAMIKCHHA THAPA', 'Female', '05-05-2000', '1005', 'Kathmandu, Nepal', 'A-', 'Hindu', 'shamikchha@example.com', '10', 'A', '9800000009', 'Parent Shamikchha', '9800000010', 'image5.jpg', 'shamikchha_user', 'password5'),
(6, 'NEYSA SHRESTHA', 'Female', '06-06-2000', '1006', 'Kathmandu, Nepal', 'B-', 'Hindu', 'neysa@example.com', '10', 'A', '9800000011', 'Parent Neysa', '9800000012', 'image6.jpg', 'neysa_user', 'password6'),
(7, 'EVA SHAKYA', 'Female', '07-07-2000', '1007', 'Kathmandu, Nepal', 'O-', 'Buddhist', 'eva@example.com', '10', 'A', '9800000013', 'Parent Eva', '9800000014', 'image7.jpg', 'eva_user', 'password7'),
(8, 'RIYON DANGOL', 'Male', '08-08-2000', '1008', 'Kathmandu, Nepal', 'AB-', 'Buddhist', 'riyon@example.com', '10', 'A', '9800000015', 'Parent Riyon', '9800000016', 'image8.jpg', 'riyon_user', 'password8'),
(9, 'SADISH DANGOL', 'Male', '09-09-2000', '1009', 'Kathmandu, Nepal', 'A+', 'Buddhist', 'sadish@example.com', '10', 'A', '9800000017', 'Parent Sadish', '9800000018', 'image9.jpg', 'sadish_user', 'password9'),
(10, 'AARZOO MAHARJAN', 'Female', '10-10-2000', '1010', 'Kathmandu, Nepal', 'B+', 'Buddhist', 'aarzoo@example.com', '10', 'A', '9800000019', 'Parent Aarzoo', '9800000020', 'image10.jpg', 'aarzoo_user', 'password10'),
(11, 'HIMAKSHI MAHARJAN', 'Female', '11-11-2000', '1011', 'Kathmandu, Nepal', 'O+', 'Buddhist', 'himakshi@example.com', '10', 'A', '9800000021', 'Parent Himakshi', '9800000022', 'image11.jpg', 'himakshi_user', 'password11'),
(12, 'SUMEDH RATNA SHAKYA', 'Male', '12-12-2000', '1012', 'Kathmandu, Nepal', 'AB+', 'Buddhist', 'sumedh@example.com', '10', 'A', '9800000023', 'Parent Sumedh', '9800000024', 'image12.jpg', 'sumedh_user', 'password12'),
(13, 'NIMANTRANA AWALE', 'Female', '13-01-2001', '1013', 'Kathmandu, Nepal', 'A-', 'Hindu', 'nimantrana@example.com', '10', 'A', '9800000025', 'Parent Nimantrana', '9800000026', 'image13.jpg', 'nimantrana_user', 'password13'),
(14, 'SWORNIM MAHARJAN', 'Female', '14-02-2001', '1014', 'Kathmandu, Nepal', 'B-', 'Buddhist', 'swornim@example.com', '10', 'A', '9800000027', 'Parent Swornim', '9800000028', 'image14.jpg', 'swornim_user', 'password14'),
(15, 'EVASH SHRESTHA', 'Male', '15-03-2001', '1015', 'Kathmandu, Nepal', 'O-', 'Hindu', 'evash@example.com', '10', 'A', '9800000029', 'Parent Evash', '9800000030', 'image15.jpg', 'evash_user', 'password15'),
(16, 'QUYEN RAI', 'Female', '16-04-2001', '1016', 'Kathmandu, Nepal', 'AB-', 'Hindu', 'quyen@example.com', '10', 'A', '9800000031', 'Parent Quyen', '9800000032', 'image16.jpg', 'quyen_user', 'password16'),
(17, 'SHAHISHA TAMRAKAR', 'Female', '17-05-2001', '1017', 'Kathmandu, Nepal', 'A+', 'Hindu', 'shahisha@example.com', '10', 'A', '9800000033', 'Parent Shahisha', '9800000034', 'image17.jpg', 'shahisha_user', 'password17'),
(18, 'CYRUS RAJ BAJRACHARYA', 'Male', '18-06-2001', '1018', 'Kathmandu, Nepal', 'B+', 'Buddhist', 'cyrus@example.com', '10', 'A', '9800000035', 'Parent Cyrus', '9800000036', 'image18.jpg', 'cyrus_user', 'password18'),
(19, 'DEETYA KHAND', 'Female', '19-07-2001', '1019', 'Kathmandu, Nepal', 'O+', 'Hindu', 'deetya@example.com', '10', 'A', '9800000037', 'Parent Deetya', '9800000038', 'image19.jpg', 'deetya_user', 'password19'),
(20, 'DIBIN MAHARJAN', 'Male', '20-08-2001', '1020', 'Kathmandu, Nepal', 'AB+', 'Buddhist', 'dibin@example.com', '10', 'A', '9800000039', 'Parent Dibin', '9800000040', 'image20.jpg', 'dibin_user', 'password20'),
(21, 'SHREYA SHRESTHA', 'Female', '21-09-2001', '1021', 'Kathmandu, Nepal', 'A-', 'Hindu', 'shreya@example.com', '10', 'A', '9800000041', 'Parent Shreya', '9800000042', 'image21.jpg', 'shreya_user', 'password21'),
(22, 'JAISHNA KARKI', 'Female', '22-10-2001', '1022', 'Kathmandu, Nepal', 'B-', 'Hindu', 'jaishna@example.com', '10', 'A', '9800000043', 'Parent Jaishna', '9800000044', 'image22.jpg', 'jaishna_user', 'password22'),
(23, 'SHALIN BANU', 'Female', '23-11-2001', '1023', 'Kathmandu, Nepal', 'O-', 'Hindu', 'shalin@example.com', '10', 'A', '9800000045', 'Parent Shalin', '9800000046', 'image23.jpg', 'shalin_user', 'password23'),
(24, 'SAUGAT GHARTI MAGAR', 'Male', '24-12-2001', '1024', 'Kathmandu, Nepal', 'AB-', 'Hindu', 'saugat@example.com', '10', 'A', '9800000047', 'Parent Saugat', '9800000048', 'image24.jpg', 'saugat_user', 'password24'),
(25, 'KENISHA TANDUKAR', 'Female', '25-01-2002', '1025', 'Kathmandu, Nepal', 'A+', 'Buddhist', 'kenisha@example.com', '10', 'A', '9800000049', 'Parent Kenisha', '9800000050', 'image25.jpg', 'kenisha_user', 'password25'),
(26, 'MUSKAN MAHARJAN', 'Female', '26-02-2002', '1026', 'Kathmandu, Nepal', 'B+', 'Buddhist', 'muskan@example.com', '10', 'A', '9800000051', 'Parent Muskan', '9800000052', 'image26.jpg', 'muskan_user', 'password26'),
(27, 'SAMIKSHYA SINGH BISHOWKARMA', 'Female', '27-03-2002', '1027', 'Kathmandu, Nepal', 'O+', 'Hindu', 'samikshya@example.com', '10', 'A', '9800000053', 'Parent Samikshya', '9800000054', 'image27.jpg', 'samikshya_user', 'password27'),
(28, 'KARAN MAGAR', 'Male', '28-04-2002', '1028', 'Kathmandu, Nepal', 'AB+', 'Hindu', 'karan@example.com', '10', 'A', '9800000055', 'Parent Karan', '9800000056', 'image28.jpg', 'karan_user', 'password28'),
(29, 'SHANKERSHANA SINGH', 'Female', '29-05-2002', '1029', 'Kathmandu, Nepal', 'A-', 'Hindu', 'shankershana@example.com', '10', 'A', '9800000057', 'Parent Shankershana', '9800000058', 'image29.jpg', 'shankershana_user', 'password29'),
(30, 'ROSE DANGOL', 'Female', '30-06-2002', '1030', 'Kathmandu, Nepal', 'B-', 'Buddhist', 'rose@example.com', '10', 'A', '9800000059', 'Parent Rose', '9800000060', 'image30.jpg', 'rose_user', 'password30'),
(31, 'SUBASANI SHILPAKAR', 'Female', '31-07-2002', '1031', 'Kathmandu, Nepal', 'O-', 'Buddhist', 'subasani@example.com', '10', 'A', '9800000061', 'Parent Subasani', '9800000062', 'image31.jpg', 'subasani_user', 'password31'),
(32, 'KRITAGYA DONGOL', 'Male', '01-08-2002', '1032', 'Kathmandu, Nepal', 'AB-', 'Buddhist', 'kritagya@example.com', '10', 'A', '9800000063', 'Parent Kritagya', '9800000064', 'image32.jpg', 'kritagya_user', 'password32'),
(33, 'PRASIDHA THAPA', 'Male', '02-09-2002', '1033', 'Kathmandu, Nepal', 'A+', 'Hindu', 'prasidha@example.com', '10', 'A', '9800000065', 'Parent Prasidha', '9800000066', 'image33.jpg', 'prasidha_user', 'password33'),
(34, 'RIDDHIMA RAWAL', 'Female', '03-10-2002', '1034', 'Kathmandu, Nepal', 'B+', 'Hindu', 'riddhima@example.com', '10', 'A', '9800000067', 'Parent Riddhima', '9800000068', 'image34.jpg', 'riddhima_user', 'password34'),
(35, 'MANISHA SINGH', 'Female', '04-11-2002', '1035', 'Kathmandu, Nepal', 'O+', 'Hindu', 'manisha@example.com', '10', 'A', '9800000069', 'Parent Manisha', '9800000070', 'image35.jpg', 'manisha_user', 'password35'),
(36, 'NELSON SHRESTHA', 'Male', '05-12-2002', '1036', 'Kathmandu, Nepal', 'AB+', 'Hindu', 'nelson@example.com', '10', 'A', '9800000071', 'Parent Nelson', '9800000072', 'image36.jpg', 'nelson_user', 'password36'),
(37, 'NAYAN RAJ SHRESTHA', 'Male', '06-01-2003', '1037', 'Kathmandu, Nepal', 'A-', 'Hindu', 'nayan@example.com', '10', 'A', '9800000073', 'Parent Nayan', '9800000074', 'image37.jpg', 'nayan_user', 'password37'),
(38, 'SMARIKA ACHARYA', 'Female', '07-02-2003', '1038', 'Kathmandu, Nepal', 'B-', 'Hindu', 'smarika@example.com', '10', 'A', '9800000075', 'Parent Smarika', '9800000076', 'image38.jpg', 'smarika_user', 'password38'),
(39, 'AAHANA SHRESTHA', 'Female', '08-03-2003', '1039', 'Kathmandu, Nepal', 'O-', 'Hindu', 'aahana@example.com', '10', 'A', '9800000077', 'Parent Aahana', '9800000078', 'image39.jpg', 'aahana_user', 'password39'),
(40, 'SHUVAM GAUTAM', 'Male', '09-04-2003', '1040', 'Kathmandu, Nepal', 'AB-', 'Hindu', 'shuvam@example.com', '10', 'A', '9800000079', 'Parent Shuvam', '9800000080', 'image40.jpg', 'shuvam_user', 'password40'),
(41, 'PALISTHA TALCHABHADEL', 'Female', '10-05-2003', '1041', 'Kathmandu, Nepal', 'A+', 'Hindu', 'palisttha@example.com', '10', 'A', '9800000081', 'Parent Palisttha', '9800000082', 'image41.jpg', 'palisttha_user', 'password41'),
(42, 'ANEE AWALE', 'Female', '11-06-2003', '1042', 'Kathmandu, Nepal', 'B+', 'Buddhist', 'anee@example.com', '10', 'A', '9800000083', 'Parent Anee', '9800000084', 'image42.jpg', 'anee_user', 'password42'),
(43, 'SAUHARD SHAKYA', 'Male', '12-07-2003', '1043', 'Kathmandu, Nepal', 'O+', 'Buddhist', 'sauhard@example.com', '10', 'A', '9800000085', 'Parent Sauhard', '9800000086', 'image43.jpg', 'sauhard_user', 'password43'),
(44, 'ROJAL MAHARJAN', 'Male', '13-08-2003', '1044', 'Kathmandu, Nepal', 'AB+', 'Buddhist', 'rojal@example.com', '10', 'A', '9800000087', 'Parent Rojal', '9800000088', 'image44.jpg', 'rojal_user', 'password44'),
(45, 'ABHYUDAYA K.C', 'Male', '14-09-2003', '1045', 'Kathmandu, Nepal', 'A-', 'Hindu', 'abhyudaya@example.com', '10', 'A', '9800000089', 'Parent Abhyudaya', '9800000090', 'image45.jpg', 'abhyudaya_user', 'password45'),
(46, 'RAHUL SHAKYA', 'Male', '15-10-2003', '1046', 'Kathmandu, Nepal', 'B-', 'Buddhist', 'rahul@example.com', '10', 'A', '9800000091', 'Parent Rahul', '9800000092', 'image46.jpg', 'rahul_user', 'password46'),
(47, 'SAHAJ PATHAK', 'Male', '16-11-2003', '1047', 'Kathmandu, Nepal', 'O-', 'Hindu', 'sahaj@example.com', '10', 'A', '9800000093', 'Parent Sahaj', '9800000094', 'image47.jpg', 'sahaj_user', 'password47'),
(48, 'ABHIYANTA BARTAULA', 'Male', '17-12-2003', '1048', 'Kathmandu, Nepal', 'AB-', 'Hindu', 'abhiyanta@example.com', '10', 'A', '9800000095', 'Parent Abhiyanta', '9800000096', 'image48.jpg', 'abhiyanta_user', 'password48'),
(49, 'PRASOON BHATTA', 'Male', '18-01-2004', '1049', 'Kathmandu, Nepal', 'A+', 'Hindu', 'prasoon@example.com', '10', 'A', '9800000097', 'Parent Prasoon', '9800000098', 'image49.jpg', 'prasoon_user', 'password49'),
(50, 'MILSON MAHARJAN', 'Male', '19-02-2004', '1050', 'Kathmandu, Nepal', 'B+', 'Buddhist', 'milson@example.com', '10', 'A', '9800000099', 'Parent Milson', '9800000100', 'image50.jpg', 'milson_user', 'password50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_detail`
--
ALTER TABLE `admin_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_detail`
--
ALTER TABLE `students_detail`
  ADD PRIMARY KEY (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_detail`
--
ALTER TABLE `admin_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students_detail`
--
ALTER TABLE `students_detail`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
