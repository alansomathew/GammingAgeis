# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_gamingaegis
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2021-04-27 00:23:04
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_gamingaegis'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_gamingaegis" /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_german1_ci */;

USE "db_gamingaegis";


#
# Table structure for table 'tbl_admin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_admin" (
  "admin_uname" varchar(50) collate latin1_german1_ci NOT NULL,
  "admin_password" varchar(20) collate latin1_german1_ci NOT NULL
);



#
# Dumping data for table 'tbl_admin'
#

LOCK TABLES "tbl_admin" WRITE;
/*!40000 ALTER TABLE "tbl_admin" DISABLE KEYS;*/
REPLACE INTO "tbl_admin" ("admin_uname", "admin_password") VALUES
	('admin','admin');
/*!40000 ALTER TABLE "tbl_admin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_applytournament'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_applytournament" (
  "applytournament_id" int(11) NOT NULL auto_increment,
  "tournament_id" int(11) NOT NULL default '0',
  "player_id" int(11) NOT NULL default '0',
  "applytournament_status" varchar(20) collate latin1_german1_ci NOT NULL default '0',
  "slot_id" int(10) unsigned NOT NULL default '0',
  "slot_status" int(10) unsigned NOT NULL default '0',
  "id" varchar(50) collate latin1_german1_ci NOT NULL default 'Not Yet Declared',
  "pass" varchar(50) collate latin1_german1_ci NOT NULL default 'Not Yet Declared',
  PRIMARY KEY  ("applytournament_id")
) AUTO_INCREMENT=115;



#
# Dumping data for table 'tbl_applytournament'
#

LOCK TABLES "tbl_applytournament" WRITE;
/*!40000 ALTER TABLE "tbl_applytournament" DISABLE KEYS;*/
REPLACE INTO "tbl_applytournament" ("applytournament_id", "tournament_id", "player_id", "applytournament_status", "slot_id", "slot_status", "id", "pass") VALUES
	(113,15,1,'1','1','1','Not Yet Declared','Not Yet Declared');
REPLACE INTO "tbl_applytournament" ("applytournament_id", "tournament_id", "player_id", "applytournament_status", "slot_id", "slot_status", "id", "pass") VALUES
	(114,16,1,'1','111','1','Not Yet Declared','Not Yet Declared');
/*!40000 ALTER TABLE "tbl_applytournament" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_community'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_community" (
  "community_id" int(11) NOT NULL auto_increment,
  "community_name" varchar(50) collate latin1_german1_ci NOT NULL,
  "community_logo" varchar(50) collate latin1_german1_ci NOT NULL,
  "community_license" varchar(20) collate latin1_german1_ci NOT NULL,
  "district_id" int(11) NOT NULL,
  "community_contact" varchar(20) collate latin1_german1_ci NOT NULL,
  "community_email" varchar(50) collate latin1_german1_ci NOT NULL,
  "community_uname" varchar(20) collate latin1_german1_ci NOT NULL,
  "community_password" varchar(20) collate latin1_german1_ci NOT NULL,
  "community_status" int(11) NOT NULL default '0',
  PRIMARY KEY  ("community_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_community'
#

LOCK TABLES "tbl_community" WRITE;
/*!40000 ALTER TABLE "tbl_community" DISABLE KEYS;*/
REPLACE INTO "tbl_community" ("community_id", "community_name", "community_logo", "community_license", "district_id", "community_contact", "community_email", "community_uname", "community_password", "community_status") VALUES
	(3,'Alister','Logo_1250.jpg','License_1262.jpg',1,'7561813163','alister@gmail.com','alister','alister1',1);
/*!40000 ALTER TABLE "tbl_community" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_complaint'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_complaint" (
  "complaint_id" int(11) NOT NULL auto_increment,
  "complaint_description" varchar(50) collate latin1_german1_ci NOT NULL,
  "complaint_date" varchar(20) collate latin1_german1_ci NOT NULL,
  "community_id" int(10) unsigned NOT NULL default '0',
  "complaint_reply" varchar(50) collate latin1_german1_ci NOT NULL default 'Not yet Replied',
  "player_id" int(11) NOT NULL default '0',
  "subadmin_id" int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  ("complaint_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_complaint'
#

LOCK TABLES "tbl_complaint" WRITE;
/*!40000 ALTER TABLE "tbl_complaint" DISABLE KEYS;*/
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_description", "complaint_date", "community_id", "complaint_reply", "player_id", "subadmin_id") VALUES
	(1,'lag is a issue','2021-03-22','0','Not yet Replied',1,'0');
/*!40000 ALTER TABLE "tbl_complaint" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "district_id" int(11) NOT NULL auto_increment,
  "district_name" varchar(20) collate latin1_german1_ci NOT NULL,
  PRIMARY KEY  ("district_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	(1,'Idukki');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	(2,'Ernakulam');
/*!40000 ALTER TABLE "tbl_district" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_feedback'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_feedback" (
  "feedback_id" int(11) NOT NULL auto_increment,
  "feedback_description" varchar(50) collate latin1_german1_ci NOT NULL,
  "feedback_date" varchar(50) collate latin1_german1_ci NOT NULL,
  PRIMARY KEY  ("feedback_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_feedback'
#

LOCK TABLES "tbl_feedback" WRITE;
/*!40000 ALTER TABLE "tbl_feedback" DISABLE KEYS;*/
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_description", "feedback_date") VALUES
	(3,'dhjhgfd','2021-02-23');
/*!40000 ALTER TABLE "tbl_feedback" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_mode'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_mode" (
  "mode_id" int(11) NOT NULL auto_increment,
  "mode_name" varchar(50) collate latin1_german1_ci NOT NULL,
  PRIMARY KEY  ("mode_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_mode'
#

LOCK TABLES "tbl_mode" WRITE;
/*!40000 ALTER TABLE "tbl_mode" DISABLE KEYS;*/
REPLACE INTO "tbl_mode" ("mode_id", "mode_name") VALUES
	(1,'FPP');
REPLACE INTO "tbl_mode" ("mode_id", "mode_name") VALUES
	(2,'TPP');
/*!40000 ALTER TABLE "tbl_mode" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_place'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_place" (
  "place_id" int(11) NOT NULL auto_increment,
  "place_name" varchar(20) collate latin1_german1_ci NOT NULL,
  "district_id" int(11) NOT NULL,
  PRIMARY KEY  ("place_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_place'
#

LOCK TABLES "tbl_place" WRITE;
/*!40000 ALTER TABLE "tbl_place" DISABLE KEYS;*/
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(1,'Thodupuzha',1);
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(2,'Muvattupuzha',2);
/*!40000 ALTER TABLE "tbl_place" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_players'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_players" (
  "player_id" int(11) NOT NULL auto_increment,
  "player_name" varchar(20) collate latin1_german1_ci NOT NULL,
  "player_gender" varchar(10) collate latin1_german1_ci NOT NULL,
  "player_address" varchar(50) collate latin1_german1_ci NOT NULL,
  "player_email" varchar(50) collate latin1_german1_ci NOT NULL,
  "place_id" int(11) NOT NULL,
  "game_id" varchar(100) collate latin1_german1_ci NOT NULL,
  "player_uname" varchar(20) collate latin1_german1_ci NOT NULL,
  "player_password" varchar(10) collate latin1_german1_ci NOT NULL,
  "player_status" varchar(50) collate latin1_german1_ci NOT NULL default '0',
  "playertype_id" int(11) NOT NULL,
  "player_dob" varchar(50) collate latin1_german1_ci NOT NULL,
  "player_contact" varchar(50) collate latin1_german1_ci NOT NULL,
  PRIMARY KEY  ("player_id")
) AUTO_INCREMENT=16;



#
# Dumping data for table 'tbl_players'
#

LOCK TABLES "tbl_players" WRITE;
/*!40000 ALTER TABLE "tbl_players" DISABLE KEYS;*/
REPLACE INTO "tbl_players" ("player_id", "player_name", "player_gender", "player_address", "player_email", "place_id", "game_id", "player_uname", "player_password", "player_status", "playertype_id", "player_dob", "player_contact") VALUES
	(1,'chandu','male','thodupuzha','chandhu@gmail.com',1,'9876','chandhu','chandhu','0',1,'10-10-1010','1234567890');
REPLACE INTO "tbl_players" ("player_id", "player_name", "player_gender", "player_address", "player_email", "place_id", "game_id", "player_uname", "player_password", "player_status", "playertype_id", "player_dob", "player_contact") VALUES
	(14,'Alan','male','Edattel','alan@gmail.com',1,'123456','alan','alan','0',6,'2021-02-04','9447908235');
REPLACE INTO "tbl_players" ("player_id", "player_name", "player_gender", "player_address", "player_email", "place_id", "game_id", "player_uname", "player_password", "player_status", "playertype_id", "player_dob", "player_contact") VALUES
	(15,'name','Male','address','email@email.com',1,'5164864044848848','username','password','0',6,'2020/08/10','9787670948');
/*!40000 ALTER TABLE "tbl_players" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_playertype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_playertype" (
  "playertype_id" int(11) NOT NULL auto_increment,
  "player_type" varchar(20) collate latin1_german1_ci NOT NULL,
  PRIMARY KEY  ("playertype_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_playertype'
#

LOCK TABLES "tbl_playertype" WRITE;
/*!40000 ALTER TABLE "tbl_playertype" DISABLE KEYS;*/
REPLACE INTO "tbl_playertype" ("playertype_id", "player_type") VALUES
	(5,'Sniper');
REPLACE INTO "tbl_playertype" ("playertype_id", "player_type") VALUES
	(6,'Camper');
/*!40000 ALTER TABLE "tbl_playertype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_slot'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_slot" (
  "slot_id" int(11) NOT NULL auto_increment,
  "slot_no" varchar(100) collate latin1_german1_ci NOT NULL,
  "type_id" int(11) NOT NULL,
  PRIMARY KEY  ("slot_id")
) AUTO_INCREMENT=186;



#
# Dumping data for table 'tbl_slot'
#

LOCK TABLES "tbl_slot" WRITE;
/*!40000 ALTER TABLE "tbl_slot" DISABLE KEYS;*/
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(1,'1',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(2,'2',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(4,'3',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(5,'4',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(6,'5',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(7,'6',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(8,'7',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(9,'8',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(10,'9',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(11,'10',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(12,'11',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(13,'12',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(14,'13',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(15,'14',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(16,'15',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(17,'16',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(18,'17',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(19,'18',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(20,'19',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(21,'20',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(22,'21',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(23,'22',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(24,'23',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(25,'24',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(26,'25',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(27,'26',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(28,'27',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(29,'28',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(30,'29',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(31,'30',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(32,'31',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(33,'32',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(34,'33',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(35,'34',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(36,'35',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(37,'36',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(38,'37',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(39,'38',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(40,'39',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(41,'40',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(42,'41',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(43,'42',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(44,'43',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(45,'44',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(46,'45',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(47,'46',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(48,'47',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(49,'48',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(50,'49',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(51,'50',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(52,'51',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(53,'52',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(54,'53',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(55,'54',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(57,'55',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(58,'56',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(59,'57',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(60,'58',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(61,'59',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(62,'60',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(63,'61',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(64,'62',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(65,'63',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(66,'64',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(67,'65',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(68,'66',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(69,'67',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(70,'68',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(71,'69',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(72,'70',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(73,'71',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(74,'72',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(75,'73',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(76,'74',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(77,'75',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(78,'76',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(79,'77',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(80,'78',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(82,'79',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(83,'80',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(84,'81',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(85,'82',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(86,'83',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(87,'84',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(89,'85',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(90,'86',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(91,'87',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(98,'88',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(99,'89',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(100,'90',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(101,'91',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(102,'92',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(103,'93',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(104,'94',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(105,'95',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(106,'96',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(107,'97',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(108,'98',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(109,'99',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(110,'100',1);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(111,'1',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(112,'2',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(113,'3',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(114,'4',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(115,'5',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(116,'6',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(117,'7',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(118,'8',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(119,'9',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(120,'10',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(121,'11',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(122,'12',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(123,'13',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(124,'14',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(125,'15',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(126,'16',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(127,'17',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(128,'18',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(129,'19',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(130,'20',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(131,'21',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(132,'22',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(133,'23',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(134,'24',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(135,'25',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(136,'26',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(137,'27',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(138,'28',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(139,'29',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(140,'30',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(141,'31',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(142,'32',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(143,'33',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(144,'34',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(145,'35',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(146,'36',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(147,'37',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(148,'38',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(149,'39',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(150,'40',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(151,'41',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(152,'42',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(153,'43',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(154,'44',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(155,'45',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(156,'46',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(157,'47',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(158,'48',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(159,'49',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(160,'50',2);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(161,'1',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(162,'2',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(163,'3',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(164,'4',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(165,'5',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(166,'6',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(167,'7',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(168,'8',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(169,'9',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(170,'10',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(171,'11',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(172,'12',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(173,'13',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(174,'14',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(175,'15',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(176,'16',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(177,'17',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(178,'18',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(179,'19',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(180,'20',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(181,'21',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(182,'22',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(183,'23',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(184,'24',4);
REPLACE INTO "tbl_slot" ("slot_id", "slot_no", "type_id") VALUES
	(185,'25',4);
/*!40000 ALTER TABLE "tbl_slot" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_subadmin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_subadmin" (
  "subadmin_id" int(11) NOT NULL auto_increment,
  "subadmin_name" varchar(20) collate latin1_german1_ci NOT NULL,
  "subadmin_address" varchar(50) collate latin1_german1_ci NOT NULL,
  "subadmin_contact" varchar(20) collate latin1_german1_ci NOT NULL,
  "subadmin_gender" varchar(10) collate latin1_german1_ci NOT NULL,
  "subadmin_email" varchar(20) collate latin1_german1_ci NOT NULL,
  "subadmin_uname" varchar(20) collate latin1_german1_ci NOT NULL,
  "subadmin_password" varchar(20) collate latin1_german1_ci NOT NULL,
  "district_id" int(11) NOT NULL,
  PRIMARY KEY  ("subadmin_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_subadmin'
#

LOCK TABLES "tbl_subadmin" WRITE;
/*!40000 ALTER TABLE "tbl_subadmin" DISABLE KEYS;*/
REPLACE INTO "tbl_subadmin" ("subadmin_id", "subadmin_name", "subadmin_address", "subadmin_contact", "subadmin_gender", "subadmin_email", "subadmin_uname", "subadmin_password", "district_id") VALUES
	(6,'Chandhu','dfghgfds','8281279407','male','chandhu@gmail.com','cha123','chandhu1',2);
/*!40000 ALTER TABLE "tbl_subadmin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_tournament'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_tournament" (
  "tournament_id" int(11) NOT NULL auto_increment,
  "tournament_status" varchar(50) collate latin1_german1_ci NOT NULL default '1',
  "community_id" int(11) NOT NULL,
  "tournament_date" varchar(50) collate latin1_german1_ci NOT NULL,
  "tournament_time" varchar(50) collate latin1_german1_ci NOT NULL,
  "tournament_discription" varchar(50) collate latin1_german1_ci NOT NULL,
  "tournament_fee" varchar(50) collate latin1_german1_ci NOT NULL,
  "tournament_link" varchar(50) collate latin1_german1_ci NOT NULL,
  "tournament_name" varchar(50) collate latin1_german1_ci NOT NULL,
  "mode_id" int(11) NOT NULL,
  "type_id" int(11) NOT NULL,
  "tournament_fees" varchar(50) collate latin1_german1_ci NOT NULL default '0',
  PRIMARY KEY  ("tournament_id")
) AUTO_INCREMENT=18;



#
# Dumping data for table 'tbl_tournament'
#

LOCK TABLES "tbl_tournament" WRITE;
/*!40000 ALTER TABLE "tbl_tournament" DISABLE KEYS;*/
REPLACE INTO "tbl_tournament" ("tournament_id", "tournament_status", "community_id", "tournament_date", "tournament_time", "tournament_discription", "tournament_fee", "tournament_link", "tournament_name", "mode_id", "type_id", "tournament_fees") VALUES
	(15,'2',3,'2022-03-23','00:49','Welcome Alll','Paid','iuhgfcxdfghj','PUBG',1,1,'100');
REPLACE INTO "tbl_tournament" ("tournament_id", "tournament_status", "community_id", "tournament_date", "tournament_time", "tournament_discription", "tournament_fee", "tournament_link", "tournament_name", "mode_id", "type_id", "tournament_fees") VALUES
	(16,'2',3,'2023-03-23','00:48','Lets go yeah','Free','jhgfds','PUBG 2',2,2,'');
REPLACE INTO "tbl_tournament" ("tournament_id", "tournament_status", "community_id", "tournament_date", "tournament_time", "tournament_discription", "tournament_fee", "tournament_link", "tournament_name", "mode_id", "type_id", "tournament_fees") VALUES
	(17,'2',3,'2021-03-20','20:00','no hackers','Free','www.youtube.com','tdm',2,4,'');
/*!40000 ALTER TABLE "tbl_tournament" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_type'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_type" (
  "type_id" int(11) NOT NULL auto_increment,
  "type_name" varchar(50) collate latin1_german1_ci NOT NULL,
  PRIMARY KEY  ("type_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_type'
#

LOCK TABLES "tbl_type" WRITE;
/*!40000 ALTER TABLE "tbl_type" DISABLE KEYS;*/
REPLACE INTO "tbl_type" ("type_id", "type_name") VALUES
	(1,'SOLO');
REPLACE INTO "tbl_type" ("type_id", "type_name") VALUES
	(2,'DUO');
REPLACE INTO "tbl_type" ("type_id", "type_name") VALUES
	(4,'SQUAD');
/*!40000 ALTER TABLE "tbl_type" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
