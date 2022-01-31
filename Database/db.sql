/*
SQLyog Ultimate v8.55 
MySQL - 5.1.49-community : Database - dblaptopwp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dblaptopwp` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dblaptopwp`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

/*Table structure for table `hasil` */

DROP TABLE IF EXISTS `hasil`;

CREATE TABLE `hasil` (
  `kdlaptop` varchar(5) NOT NULL,
  `vi` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`kdlaptop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hasil` */

insert  into `hasil`(`kdlaptop`,`vi`) values ('L0001','0.32'),('L0002','0.34'),('L0003','0.34');

/*Table structure for table `laptop` */

DROP TABLE IF EXISTS `laptop`;

CREATE TABLE `laptop` (
  `kdlaptop` varchar(5) NOT NULL,
  `tipe` varchar(30) DEFAULT NULL,
  `kdmerk` varchar(3) DEFAULT NULL,
  `hdd` int(5) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `ram` int(2) DEFAULT NULL,
  `procesor` varchar(20) DEFAULT NULL,
  `layar` double DEFAULT NULL,
  `spesifikasi` text,
  PRIMARY KEY (`kdlaptop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `laptop` */

insert  into `laptop`(`kdlaptop`,`tipe`,`kdmerk`,`hdd`,`harga`,`ram`,`procesor`,`layar`,`spesifikasi`) values ('L0001','E402YA','M01',1000,3599000,4,'AMD DUAL CORE',14,' Processor: AMD Dual Core E2-7015 <br>\r\n RAM: 4GB <br>\r\n        HDD: 1TB <br>\r\n        Grafik: AMD Radeon R2 <br>\r\n        Konektivitas: Wifi + Bluetooth <br>\r\n        Ukuran layar: 14 Inch HD <br>\r\n        Sistem Operasi: Windows 10 Home <br>\r\n\r\n     '),('L0002','A409MA','M01',1000,4299000,4,'INTEL CELERON',14,'\r\n\r\n        Processor: Intel Celeron N4020 <br>\r\n        RAM: 4GB DDR4<br>\r\n        HDD: 1TB<br>\r\n        VGA: Integrated<br>\r\n        Ukuran layar: 14 Inch<br>\r\n        Konektivitas: Wifi + Bluetooth<br>\r\n        Sistem Operasi: Windows 10 Home<br>\r\n\r\n      '),('L0003','TP203NAH','M01',1000,5000000,4,'INTEL DUAL CORE',11.6,'- Intel Pentium N4200 2.3GHz up to 2.5Ghz (2MB Cache) <br>\r\n- 4GB RAM DDR3L, 500GB HDD<br>\r\n- Intel HD Graphics<br>\r\n- Windows 10 Home 64bit<br>\r\n- 11.6inch HD LED Display (1366x768) Touck Screen<br>\r\n- Audio Powered by SonicMaster Lite Technology<br>\r\n- HD Webcam, Micro SD Reader, WiFi 802.11AC, Micro HDMI<br>\r\n- Bluetooth V4.1, Headphone, Microphone,Volume up/down,micro SD card<br>\r\n- USB 2.0 x 1, USB 3.0 x 1 & USB Type C 3.1 x 1<br>\r\n- Weight : 1.3 kg included 3 Cells 42 Whrs Polymer Battery<br>\r\n- Garansi Resmi PT. ASUS Indonesia 1 Tahun<br>\r\n');

/*Table structure for table `merk` */

DROP TABLE IF EXISTS `merk`;

CREATE TABLE `merk` (
  `kdmerk` varchar(3) NOT NULL,
  `merk` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`kdmerk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `merk` */

insert  into `merk`(`kdmerk`,`merk`) values ('M01','Asus'),('M02','Acer'),('M03','HP'),('M04','Lenovo'),('M05','Dell');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
