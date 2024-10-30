-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 05:26 PM
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
-- Database: `lab_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `Blood_id` int(11) NOT NULL,
  `Dn_id` int(11) DEFAULT NULL,
  `Event_id` int(11) DEFAULT NULL,
  `Blood_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`Blood_id`, `Dn_id`, `Event_id`, `Blood_quantity`) VALUES
(2001, 4001, 5001, 5),
(2002, 4002, 5002, 7),
(2003, 4003, 5003, 8),
(2004, 4004, 5004, 2),
(2005, 4005, 5005, 1),
(2006, 4006, 5006, 3),
(2007, 4007, 5007, 4),
(2008, 4008, 5008, 7),
(2009, 4009, 5009, 4),
(2010, 4010, 5010, 4);

-- --------------------------------------------------------

--
-- Table structure for table `blooddnevent`
--

CREATE TABLE `blooddnevent` (
  `Event_id` int(11) NOT NULL,
  `Branch_no` int(11) DEFAULT NULL,
  `Event_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blooddnevent`
--

INSERT INTO `blooddnevent` (`Event_id`, `Branch_no`, `Event_date`) VALUES
(5001, 2001, '2021-08-06'),
(5002, 2003, '2021-09-03'),
(5003, 2005, '2021-10-01'),
(5004, 2007, '2021-11-05'),
(5005, 2009, '2021-12-03'),
(5006, 2010, '2022-01-07'),
(5007, 2008, '2022-02-04'),
(5008, 2006, '2022-03-04'),
(5009, 2004, '2022-04-01'),
(5010, 2002, '2022-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `bloodpatient`
--

CREATE TABLE `bloodpatient` (
  `Patient_id` int(11) NOT NULL,
  `Blood_id` int(11) NOT NULL,
  `Blood_date` date DEFAULT NULL,
  `Quantity` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodpatient`
--

INSERT INTO `bloodpatient` (`Patient_id`, `Blood_id`, `Blood_date`, `Quantity`) VALUES
(16001, 2001, '2022-05-03', '2'),
(16002, 2002, '2022-04-02', '4'),
(16003, 2003, '2022-04-05', '1'),
(16004, 2004, '2022-04-05', '1'),
(16005, 2005, '2022-04-14', '5'),
(16006, 2006, '2022-04-21', '7'),
(16007, 2007, '2022-05-02', '3'),
(16008, 2008, '2022-05-02', '1'),
(16009, 2009, '2022-05-01', '2'),
(16010, 2010, '2022-05-08', '4');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `Branch_no` int(11) NOT NULL,
  `Street` char(1) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Postcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`Branch_no`, `Street`, `City`, `Postcode`) VALUES
(2001, '1', 'Dhaka', '1208'),
(2002, '1', 'Dhaka', '1105'),
(2003, '1', 'Dhaka', '1009'),
(2004, '2', 'Dhaka', '1158'),
(2005, '1', 'Dhaka', '1206'),
(2006, '3', 'Dhaka', '1150'),
(2007, '3', 'Dhaka', '1078'),
(2008, '4', 'Dhaka', '1000'),
(2009, '6', 'Dhaka', '1095'),
(2010, '6', 'Dhaka', '1258');

-- --------------------------------------------------------

--
-- Table structure for table `donner`
--

CREATE TABLE `donner` (
  `Dn_id` int(11) NOT NULL,
  `Blood_type` varchar(5) DEFAULT NULL,
  `Dn_address` varchar(15) DEFAULT NULL,
  `Dn_mail` varchar(50) DEFAULT NULL,
  `Dn_phoneNo` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donner`
--

INSERT INTO `donner` (`Dn_id`, `Blood_type`, `Dn_address`, `Dn_mail`, `Dn_phoneNo`) VALUES
(4001, 'A+', 'Dhaka', 'Shamiul@gmail.com', 1787784554),
(4002, 'A+', 'Dhaka', 'asikuli@gmail.com', 1787455478),
(4003, 'O+', 'Mirpur', 'abcd@gmail.com', 1354785445),
(4004, 'AB+', 'Mohakhali', 'abcde@gmail.com', 1354785412),
(4005, 'B-', 'Dhanmondi', 'bacde@gmail.com', 1354785422),
(4006, 'A-', 'Uttara', 'cabde@gmail.com', 1354785432),
(4007, 'AB-', 'Mohammadpur', 'dabce@gmail.com', 1354785442),
(4008, 'B+', 'Mirpur', 'eabcd@gmail.com', 1354785452),
(4009, 'O-', 'Mirpur', 'cbade@gmail.com', 1354785462),
(4010, 'O+', 'Uttara', 'dcbae@gmail.com', 1354785472);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `Hospital_id` int(11) NOT NULL,
  `Hospital_name` varchar(30) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Hospital_need_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`Hospital_id`, `Hospital_name`, `City`, `Hospital_need_quantity`) VALUES
(8001, 'Lab Aid', 'Dhaka', 10),
(8002, 'Islamic Hospital', 'Dhaka', 8),
(8003, 'Al Biruni Hospital', 'Dhaka', 10),
(8004, 'Central Hospital', 'Dhaka', 10),
(8005, 'Dhaka Medical Collage', 'Dhaka', 10),
(8006, 'Dhaka Shisu Hospital', 'Dhaka', 9),
(8007, 'Greenland Hospital', 'Dhaka', 9),
(8008, 'Ayesha Memorial Medical Collag', 'Dhaka', 10),
(8009, 'Ibn Sina Hospital', 'Dhaka', 10),
(8010, 'Birdem Medical Collage', 'Dhaka', 10);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient_id` int(11) NOT NULL,
  `Patient_name` varchar(20) DEFAULT NULL,
  `Blood_type` varchar(10) DEFAULT NULL,
  `Patient_address` varchar(30) DEFAULT NULL,
  `Patient_email` varchar(40) DEFAULT NULL,
  `Patient_phoneNo` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_id`, `Patient_name`, `Blood_type`, `Patient_address`, `Patient_email`, `Patient_phoneNo`) VALUES
(16001, 'Selim', 'O+', 'Mirpur', 'selim@gmail.com', 1745877445),
(16002, 'Jony', 'A+', 'Savar', 'sajony@gmail.com', 1745877412),
(16003, 'Tarikul', 'B-', 'Mirpur', 'tarikul@gmail.com', 1745877405),
(16004, 'Asraf', 'A-', 'Mirpur', 'asraf@gmail.com', 1745877409),
(16005, 'Shakil', 'AB-', 'Dhanmondi', 'shakil@gmail.com', 1745877425),
(16006, 'Mun', 'B+', 'Mohakhali', 'mun@gmail.com', 1745877419),
(16007, 'Abir', 'O-', 'mirpur', 'abir@gmail.com', 1745877438),
(16008, 'Abdullah', 'O+', 'Mohammadpur', 'abdullah@gmail.com', 1745877457),
(16009, 'Sujon', 'A-', 'Uttara', 'sujon@gmail.com', 1745877450),
(16010, 'Najmul', 'AB-', 'Uttara', 'najmul@gmail.com', 1745877469);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`Blood_id`),
  ADD KEY `Dn_id` (`Dn_id`),
  ADD KEY `Event_id` (`Event_id`);

--
-- Indexes for table `blooddnevent`
--
ALTER TABLE `blooddnevent`
  ADD PRIMARY KEY (`Event_id`),
  ADD KEY `Branch_no` (`Branch_no`);

--
-- Indexes for table `bloodpatient`
--
ALTER TABLE `bloodpatient`
  ADD PRIMARY KEY (`Patient_id`,`Blood_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`Branch_no`);

--
-- Indexes for table `donner`
--
ALTER TABLE `donner`
  ADD PRIMARY KEY (`Dn_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`Hospital_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood`
--
ALTER TABLE `blood`
  ADD CONSTRAINT `blood_ibfk_1` FOREIGN KEY (`Dn_id`) REFERENCES `donner` (`Dn_id`),
  ADD CONSTRAINT `blood_ibfk_2` FOREIGN KEY (`Event_id`) REFERENCES `blooddnevent` (`Event_id`);

--
-- Constraints for table `blooddnevent`
--
ALTER TABLE `blooddnevent`
  ADD CONSTRAINT `blooddnevent_ibfk_1` FOREIGN KEY (`Branch_no`) REFERENCES `branch` (`Branch_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
SELECT * FROM `donner`
SELECT Dn_id, Dn_mail, Dn_phoneNo FROM donner WHERE Dn_mail LIKE 'd%'
SELECT * FROM `patient`
SELECT * FROM patient WHERE Blood_type = 'O-'
SELECT * FROM patient WHERE Blood_type = 'A-'
SELECT * FROM `blood`
SELECT Dn_id FROM blood WHERE Event_id = '5007'
SELECT * FROM `blooddnevent`
SELECT Event_id FROM blooddnevent WHERE Event_date = '2021-11-05'
SELECT * FROM `branch`
SELECT Street,City,Postcode FROM branch WHERE Branch_no = '2007'
SELECT * FROM `bloodpatient`
SELECT COUNT(Blood_id) FROM bloodpatient WHERE Quantity > 1
SELECT COUNT(Patient_id), SUM(Quantity) FROM bloodpatient WHERE Blood_date LIKE '%4%'
SELECT * FROM `patient`
SELECT Blood_type, COUNT(Patient_id) FROM patient GROUP BY Blood_type
SELECT * FROM `donner`
SELECT Blood_type, Dn_address, Dn_phoneNo FROM donner WHERE Blood_type = 'A-' ORDER BY Dn_address
SELECT Blood_type, Dn_address, Dn_phoneNo FROM donner WHERE Blood_type = 'A+' ORDER BY Dn_address
SELECT Blood_type, Dn_address, Dn_phoneNo FROM donner WHERE Blood_type = 'o+' ORDER BY Dn_address
SELECT * FROM `blooddnevent`
SELECT Branch_no, Event_id, Event_date FROM blooddnevent ORDER BY Event_date
SELECT * FROM `donner`
SELECT b.Dn_id, d.Blood_type, b.blood_quantity FROM blood b, donner d WHERE b.Dn_id = d.Dn_id
SELECT * FROM `patient`
SELECT * FROM patient WHERE Patient_id = (SELECT Patient_id FROM bloodpatient WHERE blood_date = '2022-04-14')
SELECT * FROM `patient`
SELECT p.Patient_id, p.Blood_type, b.quantity FROM patient p, bloodpatient b WHERE b.Patient_id = p.Patient_id
SELECT * FROM `patient`
SELECT * FROM `patient`
SELECT * FROM patient WHERE Patient_id = (SELECT Patient_id FROM bloodpatient WHERE blood_date = '2022-04-14')
SELECT * FROM `donner`
SELECT Dn_id, Blood_type, Dn_mail, Dn_phoneNo FROM donner WHERE Dn_id IN (SELECT Dn_id FROM blood WHERE event_id = '5007')
SELECT * FROM `blooddnevent`
SELECT * FROM blooddnevent WHERE Branch_no IN (SELECT Branch_no FROM branch WHERE Branch_no = '2003')
SELECT * FROM `donner`
SELECT Dn_id, Dn_phoneNo, Dn_mail, Blood_type FROM donner WHERE Dn_id IN (SELECT Dn_id FROM blood WHERE Blood_type LIKE 'O%')
SELECT * FROM `patient`
SELECT Patient_id, Patient_name, Patient_phoneNo FROM patient WHERE Patient_id IN (SELECT Patient_id FROM bloodpatient WHERE quantity > 2)
SELECT * FROM `blood`
SELECT * FROM `blooddnevent`
CREATE TABLE donnate ( Dn_id INT, Donnate_per_year int, Dn_type varchar(30) )
CREATE TABLE Blood_quantityNeed ( Hospital_id INT PRIMARY KEY, Hospital_name varchar(40), Perday_totalQuantity int )
CREATE TABLE blood_quantityneedArchives ( serial int PRIMARY key AUTO_INCREMENT, Hospital_id INT, Hospital_name varchar(40), Perday_totalQuantity int, updatedate datetime DEFAULT CURRENT_TIMESTAMP )
SELECT * FROM `blood_quantityneedarchives`
CREATE TRIGGER before_delete_salaries BEFORE DELETE ON Blood_quantityNeed FOR EACH ROW BEGIN INSERT INTO blood_quantityneedarchives (Hospital_id, Hospital_name, Perday_totalQuantity) VALUES(OLD.Hospital_id, OLD.Hospital_name, OLD.Perday_totalQuantity); END
SELECT * FROM `blood_quantityneed`
INSERT INTO `blood_quantityneed` (`Hospital_id`, `Hospital_name`, `Perday_totalQuantity`) VALUES ('8001', 'Lab Aid', '8'), ('8002', 'Islamic Hospital', '10'), ('8003', 'Al Biruni Hospital', '10'), ('8004', 'Central Hospital', '9');
Expand Requery Edit Explain Profiling Bookmark Database : lab_project Queried time : 23:2:46
SELECT * FROM `blood_quantityneed`
DELETE FROM blood_quantityneed WHERE Hospital_id = '8002'
SELECT * FROM `blood_quantityneedarchives`
SELECT * FROM `blood_quantityneed`
SELECT * FROM `blood_quantityneedarchives`

