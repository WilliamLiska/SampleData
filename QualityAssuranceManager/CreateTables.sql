
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table TeamMembers
# ------------------------------------------------------------

CREATE TABLE `TeamMembers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `EmployeeLevel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TeamMembers` WRITE;
/*!40000 ALTER TABLE `TeamMembers` DISABLE KEYS */;

INSERT INTO `TeamMembers` (`id`, `FirstName`, `LastName`, `EmployeeLevel`)
VALUES
	(1,'Judah','Seward','Senior'),
	(2,'Griffith','Padkin','Junior'),
	(3,'Andris','Giggie','Senior'),
	(4,'Libbi','Espin','Senior'),
	(5,'Efren','Glasson','Senior'),
	(6,'Irwinn','Christene','Junior'),
	(7,'Niven','Bertomeu','Junior'),
	(8,'Binky','Harryman','Senior'),
	(9,'Frederich','Yarrington','Junior'),
	(10,'Cinnamon','Petraitis','Senior'),
	(11,'Wally','Kneebone','Senior'),
	(12,'Giovanna','Durnill','Senior'),
	(13,'Glen','Meekins','Senior'),
	(14,'Genna','Salthouse','Junior'),
	(15,'Ossie','McArthur','Junior'),
	(16,'Petr','Jura','Junior'),
	(17,'George','Badder','Junior'),
	(18,'Oralie','Lockier','Junior'),
	(19,'Nil','Lofting','Junior'),
	(20,'Fidelity','McAreavey','Junior'),
	(21,'Ansell','Boas','Senior'),
	(22,'Fredra','Tellenbach','Junior'),
	(23,'Bonnibelle','Zack','Senior'),
	(24,'Oby','Tethcote','Junior'),
	(25,'Ilysa','Wehner','Senior'),
	(26,'Anny','Dael','Junior'),
	(27,'Nelia','Danhel','Senior'),
	(28,'Adore','Beere','Junior'),
	(29,'Gilberte','Buggs','Senior'),
	(30,'Susana','Dwight','Senior'),
	(31,'Smith','Grant','Junior');

/*!40000 ALTER TABLE `TeamMembers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table WorkDescriptions
# ------------------------------------------------------------

CREATE TABLE `WorkDescriptions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `WorkDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `WorkDescriptions` WRITE;
/*!40000 ALTER TABLE `WorkDescriptions` DISABLE KEYS */;

INSERT INTO `WorkDescriptions` (`id`, `WorkDescription`)
VALUES
	(1,'Project 332'),
	(2,'Tickets'),
	(3,'General Dev Effort'),
	(6,'Project 261');

/*!40000 ALTER TABLE `WorkDescriptions` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
