# Host: localhost  (Version 5.5.5-10.4.27-MariaDB)
# Date: 2023-03-13 12:29:20
# Generator: MySQL-Front 5.4  (Build 1.19)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin_user"
#

DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `admin_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `super_admin_id` int(11) NOT NULL,
  PRIMARY KEY (`admin_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "admin_user"
#

INSERT INTO `admin_user` VALUES (1,1,0,'aayusheesomkuvar2001.as@gmail.com','aayushee@1234',1),(2,2,1,'uit_director@rgtu.net','Rgpv@1234',0),(3,2,2,'apply@peoplesuniversity.edu.in','People@1234\r\n',0);

#
# Structure for table "branch_master"
#

DROP TABLE IF EXISTS `branch_master`;
CREATE TABLE `branch_master` (
  `branch_id` int(200) NOT NULL AUTO_INCREMENT,
  `program_id` int(200) NOT NULL,
  `branch_name` varchar(200) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "branch_master"
#

INSERT INTO `branch_master` VALUES (1,1,'Computer Science Engineering'),(2,1,'Mechanical Engineering'),(3,1,'Civil Engineering'),(4,1,'Aeronautical Engineering'),(5,2,'Mathematics'),(6,2,'Information Technology');

#
# Structure for table "college"
#

DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `college_id` int(50) NOT NULL AUTO_INCREMENT,
  `university_id` int(50) NOT NULL,
  `college_name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `status_id` int(200) NOT NULL,
  `registration_number` varchar(200) NOT NULL,
  PRIMARY KEY (`college_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "college"
#

INSERT INTO `college` VALUES (1,1,'University Institute Of Technology, RGPV, Bhopal','8966+3M7, Abbas Nagar, Gandhi Nagar, Bhopal, Madhya Pradesh 462033','uit_director@rgtu.net','7552678812',2,'23AABTR7174F1Z0'),(2,1,'Trinity Institute Of Technology & Research','Kokta Bypass Rd, Near Hindustan Petrol Pump, Patel Nagar, Bhopal, Madhya Pradesh 462021','info@trinitycampus.co.in','09826172562',2,'23AABTR7174F1Z0');

#
# Structure for table "college_branch"
#

DROP TABLE IF EXISTS `college_branch`;
CREATE TABLE `college_branch` (
  `college_branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `college_program_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`college_branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "college_branch"
#

INSERT INTO `college_branch` VALUES (1,1,1),(3,3,2),(4,1,3),(5,3,3);

#
# Structure for table "college_program"
#

DROP TABLE IF EXISTS `college_program`;
CREATE TABLE `college_program` (
  `college_program_id` int(11) NOT NULL AUTO_INCREMENT,
  `college_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  PRIMARY KEY (`college_program_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "college_program"
#

INSERT INTO `college_program` VALUES (1,1,1),(2,1,2),(3,2,1);

#
# Structure for table "program_master"
#

DROP TABLE IF EXISTS `program_master`;
CREATE TABLE `program_master` (
  `program_id` int(100) NOT NULL AUTO_INCREMENT,
  `program_type_id` int(200) NOT NULL,
  `program_name` varchar(100) NOT NULL,
  `duration` int(10) NOT NULL,
  `semester` int(2) NOT NULL,
  PRIMARY KEY (`program_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "program_master"
#

INSERT INTO `program_master` VALUES (1,1,'Bachelor of Technology',4,1),(2,1,'Bachelor of Science',3,0);

#
# Structure for table "program_semester"
#

DROP TABLE IF EXISTS `program_semester`;
CREATE TABLE `program_semester` (
  `program_semester_id` int(11) NOT NULL AUTO_INCREMENT,
  `program_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  PRIMARY KEY (`program_semester_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "program_semester"
#

INSERT INTO `program_semester` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8);

#
# Structure for table "program_type"
#

DROP TABLE IF EXISTS `program_type`;
CREATE TABLE `program_type` (
  `program_type_id` int(200) NOT NULL AUTO_INCREMENT,
  `program_type` varchar(100) NOT NULL,
  PRIMARY KEY (`program_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "program_type"
#

INSERT INTO `program_type` VALUES (1,'Degree'),(2,'Diploma');

#
# Structure for table "program_year"
#

DROP TABLE IF EXISTS `program_year`;
CREATE TABLE `program_year` (
  `program_year_id` int(11) NOT NULL AUTO_INCREMENT,
  `program_id` int(11) NOT NULL DEFAULT 0,
  `year_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`program_year_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "program_year"
#

INSERT INTO `program_year` VALUES (1,2,2),(2,2,4),(3,2,3);

#
# Structure for table "semester_master"
#

DROP TABLE IF EXISTS `semester_master`;
CREATE TABLE `semester_master` (
  `semester_id` int(11) NOT NULL AUTO_INCREMENT,
  `semester` int(11) NOT NULL,
  PRIMARY KEY (`semester_id`),
  UNIQUE KEY `semester` (`semester`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "semester_master"
#

INSERT INTO `semester_master` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);

#
# Structure for table "status_master"
#

DROP TABLE IF EXISTS `status_master`;
CREATE TABLE `status_master` (
  `status_id` int(200) NOT NULL AUTO_INCREMENT,
  `status` int(3) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "status_master"
#

INSERT INTO `status_master` VALUES (1,0),(2,1);

#
# Structure for table "subject"
#

DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_code` varchar(11) NOT NULL,
  `college_branch_id` int(11) NOT NULL,
  `program_year_id` int(11) NOT NULL,
  `program_semester_id` int(11) NOT NULL,
  `subject_name` varchar(200) NOT NULL,
  `theory_marks` int(11) NOT NULL,
  `practical_marks` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `passing_marks` int(11) NOT NULL,
  `year` year(4) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "subject"
#

INSERT INTO `subject` VALUES (1,'BT 201',1,0,1,'Physics',150,50,200,33,2019),(2,'BT 102',1,0,1,'Mathematics-I',150,0,150,33,2019),(3,'BT 206',1,0,1,'Fundamentals of Mechanical Engineering',150,50,200,33,2019),(4,'BT 112',1,0,1,'Engineering Mechanics & Civil Engineering',150,50,200,33,2019),(5,'BT 208',1,0,1,'Fundamentals of Computer Science & Engineering',150,50,200,33,2019),(6,'BT 120',1,0,1,'Problem solving using computers ',0,50,50,20,2019),(7,'BT 107',1,0,1,'Communication',0,50,50,20,2019),(8,'BT 101',1,0,2,'Chemistry',150,50,200,33,2023);

#
# Structure for table "super_admin"
#

DROP TABLE IF EXISTS `super_admin`;
CREATE TABLE `super_admin` (
  `super_admin_id` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  PRIMARY KEY (`super_admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "super_admin"
#

INSERT INTO `super_admin` VALUES (1,'aayusheesomkuvar2001.as@gmail.com','aayushee@1234',1);

#
# Structure for table "university"
#

DROP TABLE IF EXISTS `university`;
CREATE TABLE `university` (
  `university_id` int(50) NOT NULL AUTO_INCREMENT,
  `university_name` varchar(50) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_number` varchar(14) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`university_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "university"
#

INSERT INTO `university` VALUES (1,'Rajiv Gandhi Proudyogiki Vishwavidyalaya','23AABTR7174F1Z0','uit_director@rgtu.net','7552678812','8966+3M7, Abbas Nagar, Gandhi Nagar, Bhopal, Madhya Pradesh 462033','Rgpv@1234'),(2,'People\'s University','23AABTR7174F1Z0','apply@peoplesuniversity.edu.in','9538500201','7CXF+R56, Peoples Campus, Bhanpur, Bhopal, Madhya Pradesh 462037','People@1234');

#
# Structure for table "user_type"
#

DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` int(11) NOT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "user_type"
#

INSERT INTO `user_type` VALUES (1,1),(2,2);

#
# Structure for table "year_master"
#

DROP TABLE IF EXISTS `year_master`;
CREATE TABLE `year_master` (
  `year_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`year_id`),
  UNIQUE KEY `year` (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# Data for table "year_master"
#

INSERT INTO `year_master` VALUES (1,4),(2,1),(3,3),(4,2);
