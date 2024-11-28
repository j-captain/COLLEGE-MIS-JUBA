-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 7,2024,1900Hrs
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'user', '2024-11-18 15:25:33', 'Add Subject RIZAL'),
(2, 'admin', '2024-12-21 08:37:51', 'Add Subject 1234');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(81, 32, 'john', 'A'),
(82, 32, 'smith', 'B'),
(83, 32, 'kevin', 'C'),
(84, 32, 'lorayna', 'D'),
(85, 34, 'Peso', 'A'),
(86, 34, 'PHP Hypertext', 'B'),
(87, 34, 'PHP Hypertext Preprosesor', 'C'),
(88, 34, 'Philippines', 'D'),
(89, 36, 'Right', 'A'),
(90, 36, 'Wrong', 'B'),
(91, 36, 'Wrong', 'C'),
(92, 36, 'Wrong', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(1, 'uploads/6843_File_Doc3.docx', '2024-10-11 01:24:32', 'fasfasf', 13, 36, 'Assignment number 1'),
(2, 'uploads/3617_File_login.mdb', '2024-10-28 19:35:28', 'q', 9, 80, 'q'),
(3, 'admin/uploads/8289_File_sample.pdf', '2024-12-21 09:56:48', 'asdasd', 9, 186, 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(7, 'BSIS-4A'),
(8, 'BSIS-4B'),
(12, 'BSIS-3A'),
(13, 'BSIS-3B'),
(24, 'BSIT-1A');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0),
(17, 186, 1800, 6);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 167, '<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style=\"font-size:16px\"><strong>Mission</strong></span></pre>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:medium\"><span style=\"font-size:large\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style=\"font-size:18px\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; A leading institution in higher and continuing education commited to engage in quality instruction, development-oriented research sustinable lucrative economic enterprise, and responsive extension and training services through relevant academic programs to empower a human resource that responds effectively to challenges in life and acts as catalyst in the holistoic development of a humane society.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:left\">&nbsp;</p>\r\n'),
(2, 'Vision', '<pre><span style=\"font-size: large;\"><strong>Vision</strong></span></pre>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: large;\">&nbsp; Driven by its passion for continous improvement, the State College has to vigorously pursue distinction and proficieny in delivering its statutory functions to the Filipino people in the fields of education, business, agro-fishery, industrial, science and technology, through committed and competent human resource, guided by the beacon of innovation and productivity towards the heights of elevated status. </span><br /><br /></p>'),
(3, 'motto', '<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Juba EXCELS:</span></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Excellence, Competence and Educational</span></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Leadership in Science and Technology</span></span></strong></p>\r\n'),
(14, 'Campuses', '<pre>\r\n<span style=\"font-size:16px\"><strong>Campuses</strong></span></pre>\r\n\r\n<ul>\r\n	<li>Alijis Campus</li>\r\n	<li>Binalbagan Campus</li>\r\n	<li>Fortunetown Campus</li>\r\n	<li>Talisay Campus<br />\r\n	&nbsp;</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(4, 'College of Industrial Technology', 'Dr. Antonio Deraja'),
(5, 'School of Arts and Science', 'DR.'),
(9, 'College of Education', 'null'),
(10, 'Sample Department', 'DR. John Smith');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(12, ' 	  Orientation with the Parents of the College Freshmen', 0, '06/04/2024', '06/04/2026'),
(13, 'Start of Classes', 0, '11/04/2023', '11/04/2025'),
(14, 'Intercampus Sports and Cultural Fest/College Week', 0, '11/19/2022', '11/22/2026'),
(15, 'Long Test', 113, '12/05/2024', '12/06/2027'),
(16, 'Long Test', 0, '12/05/2024', '12/06/2027'),
(17, 'sdasf', 147, '11/16/2022', '11/16/2026'),
(18, 'Sample', 186, '12/22/2020', '12/24/2020');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(133, 'admin/uploads/7939_File_449E26DB.jpg', '2024-02-20 10:31:38', 'sas', 14, 177, 'sss', ''),
(132, 'admin/uploads/7939_File_449E26DB.jpg', '2024-02-20 10:29:53', 'sas', 14, 178, 'sss', ''),
(139, 'admin/uploads/3579_File_sample.pdf', '2024-12-21 09:38:22', 'adasd', 9, 186, '234234', 'JomarPabuaya'),
(140, 'admin/uploads/6898_File_sample.pdf', '2024-12-21 09:39:32', 'adasd', 9, 186, '234234', 'JomarPabuaya'),
(141, 'admin/uploads/9782_File_sample.pdf', '2024-12-21 09:40:28', 'adasd', 9, 186, '234234', 'JomarPabuaya');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(2, 11, 'fasf', '2024-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna', ''),
(28, 136, 'Submit your classcard', '2024-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante', ''),
(29, 18, 'Test message', '2024-12-21 08:51:10', 9, 'Allan Dela Torre', 'Jomar Pabuaya', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(1, 42, 'sad', '2014-11-12 22:50:05', 42, 'john kevin lorayna', 'john kevin lorayna'),
(2, 11, 'fasf', '2023-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna'),
(13, 136, 'Submit your classcard', '2023-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante'),
(14, 18, 'Test message', '2023-12-21 08:51:10', 9, 'Allan Dela Torre', 'Jomar Pabuaya');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(2, 0, 'Add Downloadable Materials file name <b>sss</b>', '2014-01-17 14:35:32', 'downloadable_student.php'),
(3, 167, 'Add Annoucements', '2014-01-17 14:36:32', 'announcements_student.php'),
(4, 0, 'Add Downloadable Materials file name <b>test</b>', '2014-02-13 11:10:56', 'downloadable_student.php'),
(5, 167, 'Add Assignment file name <b>q</b>', '2014-02-13 11:27:59', 'assignment_student.php'),
(6, 0, 'Add Downloadable Materials file name <b>chapter 1</b>', '2014-02-13 12:35:42', 'downloadable_student.php'),
(7, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-13 12:53:09', 'downloadable_student.php'),
(8, 0, 'Add Downloadable Materials file name <b>kevi</b>', '2014-02-13 13:31:18', 'downloadable_student.php'),
(9, 185, 'Add Practice Quiz file', '2014-02-13 13:33:27', 'student_quiz_list.php'),
(10, 167, 'Add Annoucements', '2014-02-13 13:45:59', 'announcements_student.php'),
(11, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:43:38', 'downloadable_student.php'),
(12, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:18', 'downloadable_student.php'),
(13, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:49', 'downloadable_student.php'),
(14, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:52:30', 'downloadable_student.php'),
(15, 186, 'Add Downloadable Materials file name <b>Sample</b>', '2020-12-21 09:24:50', 'downloadable_student.php'),
(16, 0, 'Add Downloadable Materials file name <b>123</b>', '2020-12-21 09:31:40', 'downloadable_student.php'),
(17, 0, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:36:27', 'downloadable_student.php'),
(18, 0, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:38:22', 'downloadable_student.php'),
(19, 186, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:39:32', 'downloadable_student.php'),
(20, 186, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:40:28', 'downloadable_student.php'),
(21, 186, 'Add Assignment file name <b>asdasd</b>', '2020-12-21 09:56:48', 'assignment_student.php'),
(22, 186, 'Add Annoucements', '2020-12-21 09:59:00', 'announcements_student.php'),
(23, 186, 'Add Practice Quiz file', '2020-12-21 10:10:11', 'student_quiz_list.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 219, 'yes', 22),
(2, 219, 'yes', 21),
(3, 219, 'yes', 20),
(4, 219, 'yes', 19),
(5, 219, 'yes', 15);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7);

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(3, 'Sample Test', 'Test', '2013-12-03 23:01:56', 12),
(4, 'Chapter 1', 'topics', '2013-12-13 01:51:02', 14),
(5, 'test3', '123', '2014-01-16 04:12:07', 12),
(6, 'Sample Quiz', 'Sample 101', '2020-12-21 10:04:11', 9);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(33, 5, '<p>q</p>\r\n', 2, 0, '2023-01-17 04:15:03', 'False'),
(34, 3, '<p>Php Stands for ?</p>\r\n', 1, 0, '2023-01-17 12:25:17', 'C'),
(35, 3, '<p>Echo is a Php code that display the output.</p>\r\n', 2, 0, '2023-01-17 12:26:18', 'True'),
(36, 6, '<p>sample</p>\r\n', 1, 0, '2020-12-21 10:05:09', 'A'),
(37, 6, '<p>asdasd</p>\r\n', 2, 0, '2020-12-21 10:05:25', 'True'),
(38, 6, '<p>sdsd</p>\r\n', 2, 0, '2020-12-21 10:05:35', 'False');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(2, '2012-2013'),
(3, '2013-2014');

-- --------------------------------------------------------
   CREATE TABLE `student_fees` (
  `fee_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `total_fee` decimal(10,2) NOT NULL,  -- Total fee for the student
  `outstanding_fee` decimal(10,2) NOT NULL,  -- Remaining fee to be paid
  `total_paid` decimal(10,2) NOT NULL,  -- Total amount paid by the student
  PRIMARY KEY (`fee_id`),
  FOREIGN KEY (`student_id`) REFERENCES `student`(`student_id`) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

  INSERT INTO `student_fees` (`student_id`, `total_fee`, `outstanding_fee`, `total_paid`)
VALUES (1, 1000.00, 1000.00, 0.00);





   CREATE TABLE `fees_transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,  -- Amount paid
  `payment_date` datetime NOT NULL,  -- Date and time of the payment
  `payment_method` varchar(50) NOT NULL,  -- Payment method (e.g., cash, card, online)
  `status` varchar(50) NOT NULL,  -- Transaction status (e.g., successful, pending)
  PRIMARY KEY (`transaction_id`),
  FOREIGN KEY (`student_id`) REFERENCES `student`(`student_id`) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

  INSERT INTO `fees_transaction` (`student_id`, `amount`, `payment_date`, `payment_method`, `status`)
VALUES (1, 500.00, NOW(), 'Card', 'Successful');

  UPDATE `student_fees`
SET `total_paid` = `total_paid` + 500.00,
    `outstanding_fee` = `outstanding_fee` - 500.00
WHERE `student_id` = 1;


--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(1, 'Alyssa', 'David', 17, '21200507', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(2, 'josie', 'Mwangi', 7, '20100452', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(3, 'Claire ', 'Blake', 18, '2011120', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(4, 'John', 'Doe', 5, '20230001', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(5, 'Mary', 'Smith', 3, '20230002', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(6, 'James', 'Johnson', 6, '20230003', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(7, 'Patricia', 'Williams', 10, '20230004', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(8, 'Robert', 'Brown', 2, '20230005', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(9, 'Jennifer', 'Jones', 8, '20230006', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(10, 'Michael', 'Miller', 9, '20230007', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(11, 'Linda', 'Davis', 11, '20230008', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(12, 'William', 'Garcia', 4, '20230009', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(13, 'Elizabeth', 'Rodriguez', 13, '20230010', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(14, 'David', 'Martinez', 14, '20230011', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(15, 'Susan', 'Hernandez', 15, '20230012', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(16, 'Joseph', 'Lopez', 16, '20230013', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(17, 'Sarah', 'Gonzalez', 12, '20230014', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(18, 'Daniel', 'Perez', 17, '20230015', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(19, 'Karen', 'Wilson', 19, '20230016', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(20, 'Andrew', 'Anderson', 1, '20230017', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(21, 'Rebecca', 'Thomas', 4, '20230018', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(22, 'Joshua', 'Taylor', 9, '20230019', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(23, 'Olivia', 'Moore', 10, '20230020', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(24, 'Ethan', 'Jackson', 11, '20230021', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(25, 'Megan', 'White', 2, '20230022', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(26, 'Chris', 'Harris', 12, '20230023', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(27, 'Samantha', 'Clark', 3, '20230024', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(28, 'Matthew', 'Lewis', 13, '20230025', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(29, 'Natalie', 'Young', 7, '20230026', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(30, 'Alexander', 'King', 16, '20230027', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(31, 'Sophia', 'Scott', 14, '20230028', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(32, 'Gabriel', 'Green', 8, '20230029', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(33, 'Charlotte', 'Adams', 6, '20230030', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(34, 'Jack', 'Nelson', 5, '20230031', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(35, 'Avery', 'Carter', 2, '20230032', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(36, 'Lucas', 'Mitchell', 9, '20230033', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(37, 'Zoe', 'Perez', 7, '20230034', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(38, 'Sebastian', 'Roberts', 18, '20230035', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(39, 'Victoria', 'Walker', 5, '20230036', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(40, 'Henry', 'Hall', 3, '20230037', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(41, 'Emily', 'Allen', 13, '20230038', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(42, 'Benjamin', 'Sanchez', 16, '20230039', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(43, 'Amelia', 'Wright', 15, '20230040', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(44, 'Mason', 'King', 14, '20230041', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(45, 'Ella', 'Lopez', 4, '20230042', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(46, 'Elijah', 'Gonzalez', 12, '20230043', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(47, 'Lily', 'Martinez', 17, '20230044', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(48, 'Jameson', 'Robinson', 8, '20230045', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(49, 'Chloe', 'Williams', 9, '20230046', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(50, 'Ryan', 'Taylor', 11, '20230047', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(51, 'Madison', 'Hernandez', 6, '20230048', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(52, 'Aiden', 'Thompson', 10, '20230049', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(53, 'Isabella', 'White', 12, '20230050', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(54, 'Liam', 'Martinez', 2, '20230051', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(55, 'Ella', 'Brown', 4, '20230052', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(56, 'Daniel', 'Lee', 16, '20230053', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(57, 'Ava', 'Perez', 14, '20230054', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(58, 'Carter', 'Thomas', 3, '20230055', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(59, 'Brooklyn', 'Davis', 15, '20230056', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(60, 'Isaac', 'Clark', 7, '20230057', 'password123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered');


-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(1, 31, 'admin/uploads/7820_File_sample.pdf', '2020-12-21 10:12:04', 'aaa', 'asdasd', 219, '');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(1, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:11:50', 'test', 210, 'test'),
(2, 'admin/uploads/9782_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(3, 'admin/uploads/6898_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(4, 'admin/uploads/3579_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(1, 15, 107, '3600', '0 out of 2'),
(2, 16, 136, '3600', '0 out of 0'),
(3, 17, 219, '3600', '1 out of 3');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(14, 'IS 411A', 'Senior Systems Project 1', '', '<p><span style=\"font-size: medium;\"><em>About the Subject</em></span></p>\r\n<p>This subject comprisea topics about systems development, SDLC methodologies, Conceptual Framework, diagrams such as DFD, ERD and Flowchart and writing a thesis proposal.</p>\r\n<p>&nbsp;</p>\r\n<p>The project requirement for this subject are:</p>\r\n<p>Chapters (1-5) Thesis Proposal</p>\r\n<p>100% Running System at the end of semester</p>\r\n<p>&nbsp;</p>', 3, '', ''),
(15, 'IS 412', 'Effective Human Communication for IT Professional', '', '<p><span style=\"font-size: medium;\"><em>About the Subject</em></span></p>\r\n<p>This subject is intended for IT students to develop or enhance communication skills that will be beneficial especially when used in the business industry. The lesson includes Verbal Communication (Written and Oral), Non-verbal Communication, etc.</p>', 3, '', ''),
(16, 'IS 311', 'Programming Languages', '', '<pre class=\"coursera-course-heading\" data-msg=\"coursera-course-about\"><span style=\"font-size: medium;\"><em>About the Subject</em></span></pre>\r\n<div class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">Learn many of the concepts that underlie all programming languages. Develop a programming style known as functional programming and contrast it with object-oriented programming. Through experience writing programs and studying three different languages, learn the key issues in designing and using programming languages, such as modularity and the complementary benefits of static and dynamic typing. This course is neither particularly theoretical nor just about programming specifics &ndash; it will give you a framework for understanding how to use language constructs effectively and how to design correct and elegant programs. By using different languages, you learn to think more deeply than in terms of the particular syntax of one language. The emphasis on functional programming is essential for learning how to write robust, reusable, composable, and elegant programs &ndash; in any language.</div>\r\n<h2 class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">&nbsp;</h2>\r\n<pre class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\"><span style=\"font-size: medium;\"><em>&nbsp;Course Syllabus</em></span></pre>\r\n<div class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">\r\n<ul>\r\n<li>Syntax vs. semantics vs. idioms vs. libraries vs. tools</li>\r\n<li>ML basics (bindings, conditionals, records, functions)</li>\r\n<li>Recursive functions and recursive types</li>\r\n<li>Benefits of no mutation</li>\r\n<li>Algebraic datatypes, pattern matching</li>\r\n<li>Tail recursion</li>\r\n<li>First-class functions and function closures</li>\r\n<li>Lexical scope</li>\r\n<li>Equivalence and effects</li>\r\n<li>Parametric polymorphism and container types</li>\r\n<li>Type inference</li>\r\n<li>Abstract types and modules</li>\r\n<li>Racket basics</li>\r\n<li>Dynamic vs. static typing</li>\r\n<li>Implementing languages, especially higher-order functions</li>\r\n<li>Macro</li>\r\n<li>Ruby basics</li>\r\n<li>Object-oriented programming</li>\r\n<li>Pure object-orientation</li>\r\n<li>Implementing dynamic dispatch</li>\r\n<li>Multiple inheritance, interfaces, and mixins</li>\r\n<li>OOP vs. functional decomposition and extensibility</li>\r\n<li>Subtyping for records, functions, and objects</li>\r\n<li>Subtyping</li>\r\n<li>Class-based subtyping</li>\r\n<li>Subtyping vs. parametric polymorphism; bounded polymorphism</li>\r\n</ul>\r\n</div>', 3, '', ''),
(40, 'RIZAL', 'Rizal: Life and Works', '', '<p>COURSE OUTLINE<br />\r\n1. Course Code : RIZAL</p>\r\n\r\n<p>2. Course Title &nbsp;: RIZAL (Rizal Life and Works)<br />\r\n3. Pre-requisite : none<br />\r\n5. Credit/ Class Schedule : 3 units; 3 hrs/week<br />\r\n6. Course Description&nbsp;<br />\r\n1. A critical analysis of Jose Rizal&rsquo;s life and ideas as reflected in his biography, his novels Noli Me Tangere and El Filibusterismo and in his other writings composed of essays and poems to provide the students a value based reference for reacting to certain ideas and behavior.<br />\r\n<br />\r\n<strong>PROGRAM OBJECTIVES</strong><br />\r\n1. To instill in the students human values and cultural refinement through the humanities and social sciences.<br />\r\n2. To inculcate high ethical standards in the students through its integration in the learning activities.<br />\r\n3. To have critical studies and discussions why Rizal is made the national hero of the Philippines.<br />\r\n<br />\r\nTOPICS:&nbsp;<br />\r\n1. A Hero is Born&nbsp;<br />\r\n2. Childhood Days in Calamba<br />\r\n3. School Days in Binan<br />\r\n4. Triumphs in the Ateneo<br />\r\n5. At the UST<br />\r\n6. In Spain<br />\r\n7. Paris to Berlin<br />\r\n8. Noli Me Tangere<br />\r\n9. Elias and Salome<br />\r\n10. Rizal&rsquo;s Tour of Europe with with Viola<br />\r\n11. Back to Calamba<br />\r\n12. HK, Macao and Japan<br />\r\n13. Rizal in Japan<br />\r\n14. Rizal in America<br />\r\n15. Life and Works in London<br />\r\n16. In Gay Paris<br />\r\n17. Rizal in Brussles<br />\r\n18. In Madrid<br />\r\n19. El Filibusterismo<br />\r\n20. In Hong Kong<br />\r\n21. Exile in Dapitan<br />\r\n22. The Trial of Rizal<br />\r\n23. Martyrdom at Bagumbayan<br />\r\n<br />\r\nTextbook and References:<br />\r\n1. Rizal&rsquo;s Life, Works and Writings (The Centennial Edition) by: Gregorio F. Zaide<br />\r\nand Sonia M. Zaide Quezon City, 1988. All Nations Publishing Co.<br />\r\n2. Coates, Austin. Rizal: First Filipino Nationalist and Martyr, Quezon City, UP Press 1999.<br />\r\n3. Constantino, Renato. Veneration Without Understanding. Quezon City, UP Press Inc., 2001.<br />\r\n4. Dela Cruz, W. &amp; Zulueta, M. Rizal: Buhay at Kaisipan. Manila, NBS Publications 2002.<br />\r\n5. Ocampo, Ambeth. Rizal Without the Overcoat (New Edition). Pasig City, anvil Publishing House 2002.<br />\r\n6. Odullo-de Guzman, Maria. Noli Me Tangere and El Filibusterismo. Manila, NBS Publications 1998.<br />\r\n7. Palma, Rafael. Rizal: The Pride of the Malay Race. Manila, Saint Anthony Company 2000.<br />\r\n8.Romero, M.C. &amp; Sta Roman, J. Rizal &amp; the Development of Filipino Consciousness (Third Edition). Manila, JMC Press Inc., 2001.<br />\r\n<br />\r\nCourse Evaluation:<br />\r\n<br />\r\n1. Quizzes : 30 %<br />\r\n2. Exams : 40 %<br />\r\n3. Class Standing : 20 %<br />\r\n- recitation<br />\r\n- attendance<br />\r\n- behavior<br />\r\n4. Final Grade<br />\r\n- 40 % previous grade<br />\r\n- 60 % current grade</p>\r\n', 3, '', '2nd'),
(41, 'IS 411B', 'Senior Systems Project 2', '', '', 3, '', '2nd'),
(42, '1234', 'Sample Subject', '', '<p>Sample Only</p>\r\n', 3, '', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

 INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(9, '1001', 'test', 'Jomar', 'Pabuaya', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(19, 'delam', 'denise', 'Denesa', 'Lamique', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(20, 'john_doe', 'password123', 'John', 'Doe', 1, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(21, 'jane_doe', 'password123', 'Jane', 'Doe', 2, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(22, 'samantha_smith', 'password123', 'Samantha', 'Smith', 3, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(23, 'michael_brown', 'password123', 'Michael', 'Brown', 5, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(24, 'emily_johnson', 'password123', 'Emily', 'Johnson', 6, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(25, 'david_williams', 'password123', 'David', 'Williams', 7, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(26, 'susan_jones', 'password123', 'Susan', 'Jones', 8, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(27, 'mark_miller', 'password123', 'Mark', 'Miller', 9, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(28, 'lucy_davis', 'password123', 'Lucy', 'Davis', 10, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(29, 'george_martin', 'password123', 'George', 'Martin', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(30, 'lily_white', 'password123', 'Lily', 'White', 12, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(31, 'jack_taylor', 'password123', 'Jack', 'Taylor', 13, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(32, 'olivia_wilson', 'password123', 'Olivia', 'Wilson', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(33, 'charles_moore', 'password123', 'Charles', 'Moore', 15, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(34, 'sarah_anderson', 'password123', 'Sarah', 'Anderson', 16, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(35, 'henry_thomas', 'password123', 'Henry', 'Thomas', 17, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(36, 'mary_jackson', 'password123', 'Mary', 'Jackson', 18, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(37, 'daniel_white', 'password123', 'Daniel', 'White', 19, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(38, 'patricia_harris', 'password123', 'Patricia', 'Harris', 20, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(39, 'christopher_clark', 'password123', 'Christopher', 'Clark', 21, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(40, 'nancy_lewis', 'password123', 'Nancy', 'Lewis', 22, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(41, 'paul_robinson', 'password123', 'Paul', 'Robinson', 23, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(42, 'kate_walker', 'password123', 'Kate', 'Walker', 24, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(43, 'james_hall', 'password123', 'James', 'Hall', 25, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(44, 'lucas_allen', 'password123', 'Lucas', 'Allen', 26, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(45, 'mia_sanchez', 'password123', 'Mia', 'Sanchez', 27, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(46, 'ethan_king', 'password123', 'Ethan', 'King', 28, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(47, 'ava_scott', 'password123', 'Ava', 'Scott', 29, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(48, 'benjamin_lee', 'password123', 'Benjamin', 'Lee', 30, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(49, 'zoe_harris', 'password123', 'Zoe', 'Harris', 31, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(50, 'william_carter', 'password123', 'William', 'Carter', 32, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(51, 'charlotte_morris', 'password123', 'Charlotte', 'Morris', 33, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(52, 'noah_rodriguez', 'password123', 'Noah', 'Rodriguez', 34, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(53, 'emma_perez', 'password123', 'Emma', 'Perez', 35, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(54, 'oliver_wilson', 'password123', 'Oliver', 'Wilson', 36, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(55, 'mason_baker', 'password123', 'Mason', 'Baker', 37, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(56, 'ella_gonzalez', 'password123', 'Ella', 'Gonzalez', 38, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(57, 'alexandra_brown', 'password123', 'Alexandra', 'Brown', 39, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(58, 'jackson_williams', 'password123', 'Jackson', 'Williams', 40, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(59, 'hannah_smith', 'password123', 'Hannah', 'Smith', 41, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(60, 'matthew_jones', 'password123', 'Matthew', 'Jones', 42, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(61, 'layla_martin', 'password123', 'Layla', 'Martin', 43, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(62, 'leo_davis', 'password123', 'Leo', 'Davis', 44, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(63, 'sofia_taylor', 'password123', 'Sofia', 'Taylor', 45, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(64, 'joseph_clark', 'password123', 'Joseph', 'Clark', 46, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(65, 'grace_wilson', 'password123', 'Grace', 'Wilson', 47, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(66, 'daniel_lewis', 'password123', 'Daniel', 'Lewis', 48, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(67, 'rebecca_harris', 'password123', 'Rebecca', 'Harris', 49, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(68, 'matthew_morris', 'password123', 'Matthew', 'Morris', 50, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(69, 'scarlett_johnson', 'password123', 'Scarlett', 'Johnson', 51, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(70, 'julia_smith', 'password123', 'Julia', 'Smith', 52, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(71, 'willow_williams', 'password123', 'Willow', 'Williams', 53, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(72, 'michaela_lee', 'password123', 'Michaela', 'Lee', 54, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(73, 'maria_walker', 'password123', 'Maria', 'Walker', 55, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(74, 'lucas_taylor', 'password123', 'Lucas', 'Taylor', 56, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(75, 'joseph_martin', 'password123', 'Joseph', 'Martin', 57, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(76, 'isabella_jones', 'password123', 'Isabella', 'Jones', 58, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(77, 'noah_rodriguez', 'password123', 'Noah', 'Rodriguez', 59, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(78, 'victor_hall', 'password123', 'Victor', 'Hall', 60, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(97, 9, 7, 15, 'admin/uploads/thumbnails.jpg', '2012-2013'),
(185, 12, 7, 22, 'admin/uploads/thumbnails.jpg', '2013-2014'),
(186, 9, 18, 42, 'admin/uploads/thumbnails.jpg', '2013-2014');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(2, '<p><strong>Project Deadline</strong></p>\r\n\r\n<p>In December 1st week&nbsp; system must fully functioning.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '9', 87, '2013-10-30 13:21:13'),
(38, '<p>wala klase<img alt=\"sad\" src=\"http://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/sad_smile.gif\" style=\"height:20px; width:20px\" title=\"sad\" /></p>\r\n', '12', 167, '2014-02-13 13:45:59'),
(39, '<p>Test</p>\r\n', '9', 186, '2020-12-21 09:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES

(378, 186, 213, 9),
(379, 186, 214, 9),
(380, 186, 215, 9),
(381, 186, 216, 9),
(382, 186, 219, 9);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(15, 160, 'Submit Assignment file name <b>my_assginment</b>', '2014-11-25 10:39:52', 'view_submit_assignment.php', 93, 16),
(17, 161, 'Submit Assignment file name <b>q</b>', '2024-11-25 15:54:19', 'view_submit_assignment.php', 71, 17),
(18, 186, 'Submit Assignment file name <b>asdasd</b>', '2024-12-21 10:12:04', 'view_submit_assignment.php', 219, 31);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(13, 'teph', 'teph', 'Stephanie', 'villanueva'),
(14, 'jkev', 'jkev', 'john kevin', 'lorayna'),
(15, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(1, 'admin', '2013-11-01 11:57:33', '2013-11-18 10:33:54', 10),
(2, 'admin', '2013-11-05 09:52:09', '2013-11-18 10:33:54', 10),
(3, 'admin', '2013-11-08 10:41:09', '2013-11-18 10:33:54', 10),
(82, 'admin', '2014-04-03 15:29:38', '2020-12-21 08:48:16', 15),
(83, 'admin', '2014-06-15 12:31:51', '2020-12-21 08:48:16', 15),
(84, 'Admin', '2020-12-21 08:32:51', '2020-12-21 08:48:16', 15),
(85, 'admin', '2020-12-21 08:48:23', '', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
