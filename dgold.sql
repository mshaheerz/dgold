/*
SQLyog Community v13.1.2 (64 bit)
MySQL - 5.5.20-log : Database - dgold
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dgold` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dgold`;

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `emp_id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(50) DEFAULT NULL,
  `e-code` varchar(20) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `loginid` int(10) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`emp_id`,`emp_name`,`e-code`,`branch`,`loginid`) values 
(1,'sunu','123','1',2),
(2,'junu','1213','2',3),
(3,'sirla','dfdsgfsd','3',4);

/*Table structure for table `leaverequest` */

DROP TABLE IF EXISTS `leaverequest`;

CREATE TABLE `leaverequest` (
  `LRid` int(10) NOT NULL AUTO_INCREMENT,
  `reason` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `emp_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`LRid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `leaverequest` */

insert  into `leaverequest`(`LRid`,`reason`,`status`,`emp_id`) values 
(1,'medical','accept',2),
(2,'medical','reject',2),
(3,'dhuqhfue','pending',2);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `loginid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `ecode` varchar(50) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`loginid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`loginid`,`username`,`ecode`,`usertype`) values 
(1,'rahil','123','admin'),
(2,'sunu','123','employee'),
(3,'junu','1213','employee'),
(4,'sirla','dfdsgfsd','employee');

/*Table structure for table `target` */

DROP TABLE IF EXISTS `target`;

CREATE TABLE `target` (
  `trid` int(10) NOT NULL AUTO_INCREMENT,
  `target` varchar(50) DEFAULT NULL,
  `emp_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`trid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `target` */

insert  into `target`(`trid`,`target`,`emp_id`) values 
(1,'123334',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
