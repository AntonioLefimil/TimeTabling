/*
SQLyog Community v12.09 (64 bit)
MySQL - 5.6.17 : Database - time_tabling
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`time_tabling` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `time_tabling`;

/*Table structure for table `aulas` */

DROP TABLE IF EXISTS `aulas`;

CREATE TABLE `aulas` (
  `codigo` varchar(10) DEFAULT NULL,
  `capacidad` varchar(4) DEFAULT NULL,
  `edificio` varchar(4) DEFAULT NULL,
  `numero_sala` varchar(4) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `aulas` */

insert  into `aulas`(`codigo`,`capacidad`,`edificio`,`numero_sala`,`tipo`) values ('1234','45','r3','123','laboratorio'),('4321','46','r2','123','catedra'),('9876','47','r4','234','laboratorio'),('6574','48','r1','345','catedra'),('3456','49','r6','456','laboratorio'),('1234','50','r4','432','catedra'),('7564','51','r3','456','laboratorio'),('2020','45','r3','124','catedra'),('2021','45','r2','124','catedra'),('2022','45','r4','236','catedra'),('2023','45','r1','346','catedra'),('2024','45','r6','457','catedra'),('2025','45','r4','237','catedra'),('2026','45','r3','125','catedra'),('2027','45','r3','126','catedra'),('2028','45','r2','125','catedra'),('2029','45','r4','238','catedra'),('2030','45','r1','346','catedra'),('2031','45','r6','458','catedra'),('2032','45','r4','239','catedra'),('2033','45','r3','127','catedra'),('2034','45','r3','128','laboratorio'),('2035','45','r2','126','laboratorio'),('2036','45','r4','240','laboratorio'),('1234','45','r3','123','laboratorio'),('4321','46','r2','123','catedra'),('9876','47','r4','234','laboratorio'),('6574','48','r1','345','catedra'),('3456','49','r6','456','laboratorio'),('1234','50','r4','432','catedra'),('7564','51','r3','456','laboratorio'),('2020','45','r3','124','catedra'),('2021','45','r2','124','catedra'),('2022','45','r4','236','catedra'),('2023','45','r1','346','catedra'),('2024','45','r6','457','catedra'),('2025','45','r4','237','catedra'),('2026','45','r3','125','catedra'),('2027','45','r3','126','catedra'),('2028','45','r2','125','catedra'),('2029','45','r4','238','catedra'),('2030','45','r1','346','catedra'),('2031','45','r6','458','catedra'),('2032','45','r4','239','catedra'),('2033','45','r3','127','catedra'),('2034','45','r3','128','laboratorio'),('2035','45','r2','126','laboratorio'),('2036','45','r4','240','laboratorio'),('1234','45','r3','123','laboratorio'),('4321','46','r2','123','catedra'),('9876','47','r4','234','laboratorio'),('6574','48','r1','345','catedra'),('3456','49','r6','456','laboratorio'),('1234','50','r4','432','catedra'),('7564','51','r3','456','laboratorio'),('2020','45','r3','124','catedra'),('2021','45','r2','124','catedra'),('2022','45','r4','236','catedra'),('2023','45','r1','346','catedra'),('2024','45','r6','457','catedra'),('2025','45','r4','237','catedra'),('2026','45','r3','125','catedra'),('2027','45','r3','126','catedra'),('2028','45','r2','125','catedra'),('2029','45','r4','238','catedra'),('2030','45','r1','346','catedra'),('2031','45','r6','458','catedra'),('2032','45','r4','239','catedra'),('2033','45','r3','127','catedra'),('2034','45','r3','128','laboratorio'),('2035','45','r2','126','laboratorio'),('2036','45','r4','240','laboratorio');

/*Table structure for table `curso` */

DROP TABLE IF EXISTS `curso`;

CREATE TABLE `curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) NOT NULL,
  `nrc` varchar(20) NOT NULL,
  `nombre_curso` varchar(50) NOT NULL,
  `profesor` varchar(20) NOT NULL,
  `capacidad` varchar(20) NOT NULL,
  `tipo_sala` varchar(20) NOT NULL,
  `horario1` varchar(20) NOT NULL,
  `periodo1` varchar(20) NOT NULL,
  `horario2` varchar(20) NOT NULL,
  `periodo2` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=latin1;

/*Data for the table `curso` */

insert  into `curso`(`id`,`codigo`,`nrc`,`nombre_curso`,`profesor`,`capacidad`,`tipo_sala`,`horario1`,`periodo1`,`horario2`,`periodo2`) values (1,'1234','1025','Calculo ','Eduardo Diaz','40','catedra','lunes','1','miercoles','1'),(2,'4321','1024','Algebra','Antonio Díaz','40','catedra','lunes','2','martes','2'),(3,'2342','1023','Calculo 2','Javier Hernández','40','catedra','lunes','3','miercoles','3'),(4,'3456','1022','Algebra 2','Elizabeth Herrera','40','laboratorio','jueves','4','jueves','5'),(5,'3232','1021','Lenguaje de programación','Alejandra Díaz','40','catedra','miercoles','1','viernes','5'),(6,'9634','1020','Estructura de datos','Werner Barrero','40','laboratorio','lunes','2','miercoles','7'),(7,'45234','1000','Sistema Operativo','Ivan Diaz','40','catedra','Martes','1','jueves','1'),(8,'7832','1001','Redes ','Patricio Reyes','40','catedra','Miercoles','2','Viernes','4'),(9,'4532','1002','Investigación operativa','Raul Rodriguez','40','catedra','Jueves','6','Jueves','5'),(10,'7853','1005','Calculo 3','Alvaro Reyes','40','laboratorio','Viernes','5','viernes','7'),(11,'3453','1004','Algebra 3','Nicolas Rojas','40','catedra','Lunes ','5','Miercoles','3'),(12,'4674','1006','Probabilidad y estadistica','Monica fuentes','40','laboratorio','Martes','2','Jueves','2'),(13,'7865','1007','Metodologia de software','Jimena Fuentes','40','catedra','miercoles','3','Miercoles','1'),(14,'5465','1008','Costo y presupuesto','Aron Barrera','40','catedra','jueves','7','Viernes','4'),(15,'4634','1009','Ingenieria economica','Ethan Diaz ','40','catedra','Viernes','1','Lunes','1'),(16,'6345','1010','Administración finaciera','Isabella Paz','40','laboratorio','Lunes','6','miercoles','3'),(17,'2341','1011','Topicos 1','Nicole Moreno','40','catedra','Martes','3','jueves','4'),(18,'4565','1012','Topicos 2','Maria Salas','40','laboratorio','miercoles','5','viernes','6'),(19,'7885','1013','Topicos 3','Gustavo Bahamondes','40','catedra','jueves','2','Jueves','2'),(20,'5643','1014','Responsabilidad social','Felipe Argomedo','40','catedra','Viernes','2','Viernes','4'),(21,'2538','1015','Electromagnetismo','amanda Briceño','40','catedra','Lunes','7','Martes','3'),(22,'7857','1016','Fisica 1','Rodrigo Diaz','40','laboratorio','Martes','5','Jueves','3'),(23,'2466','1017','Fisica 2','Manuel Oviedo','40','catedra','miercoles','4','Miercoles','2'),(24,'8787','1017','Fisica 3','Cristian Pino','40','laboratorio','jueves','1','Lunes','1'),(25,'1234','1025','Calculo ','Eduardo Diaz','40','catedra','lunes','1','miercoles','1'),(26,'4321','1024','Algebra','Antonio Díaz','40','catedra','lunes','2','martes','2'),(27,'2342','1023','Calculo 2','Javier Hernández','40','catedra','lunes','3','miercoles','3'),(28,'3456','1022','Algebra 2','Elizabeth Herrera','40','laboratorio','jueves','4','jueves','5'),(29,'3232','1021','Lenguaje de programación','Alejandra Díaz','40','catedra','miercoles','1','viernes','5'),(30,'9634','1020','Estructura de datos','Werner Barrero','40','laboratorio','lunes','2','miercoles','7'),(31,'45234','1000','Sistema Operativo','Ivan Diaz','40','catedra','Martes','1','jueves','1'),(32,'7832','1001','Redes ','Patricio Reyes','40','catedra','Miercoles','2','Viernes','4'),(33,'4532','1002','Investigación operativa','Raul Rodriguez','40','catedra','Jueves','6','Jueves','5'),(34,'7853','1005','Calculo 3','Alvaro Reyes','40','laboratorio','Viernes','5','viernes','7'),(35,'3453','1004','Algebra 3','Nicolas Rojas','40','catedra','Lunes ','5','Miercoles','3'),(36,'4674','1006','Probabilidad y estadistica','Monica fuentes','40','laboratorio','Martes','2','Jueves','2'),(37,'7865','1007','Metodologia de software','Jimena Fuentes','40','catedra','miercoles','3','Miercoles','1'),(38,'5465','1008','Costo y presupuesto','Aron Barrera','40','catedra','jueves','7','Viernes','4'),(39,'4634','1009','Ingenieria economica','Ethan Diaz ','40','catedra','Viernes','1','Lunes','1'),(40,'6345','1010','Administración finaciera','Isabella Paz','40','laboratorio','Lunes','6','miercoles','3'),(41,'2341','1011','Topicos 1','Nicole Moreno','40','catedra','Martes','3','jueves','4'),(42,'4565','1012','Topicos 2','Maria Salas','40','laboratorio','miercoles','5','viernes','6'),(43,'7885','1013','Topicos 3','Gustavo Bahamondes','40','catedra','jueves','2','Jueves','2'),(44,'5643','1014','Responsabilidad social','Felipe Argomedo','40','catedra','Viernes','2','Viernes','4'),(45,'2538','1015','Electromagnetismo','amanda Briceño','40','catedra','Lunes','7','Martes','3'),(46,'7857','1016','Fisica 1','Rodrigo Diaz','40','laboratorio','Martes','5','Jueves','3'),(47,'2466','1017','Fisica 2','Manuel Oviedo','40','catedra','miercoles','4','Miercoles','2'),(48,'8787','1017','Fisica 3','Cristian Pino','40','laboratorio','jueves','1','Lunes','1'),(49,'1234','1025','Calculo ','Eduardo Diaz','40','catedra','lunes','1','miercoles','1'),(50,'4321','1024','Algebra','Antonio Díaz','40','catedra','lunes','2','martes','2'),(51,'2342','1023','Calculo 2','Javier Hernández','40','catedra','lunes','3','miercoles','3'),(52,'3456','1022','Algebra 2','Elizabeth Herrera','40','laboratorio','jueves','4','jueves','5'),(53,'3232','1021','Lenguaje de programación','Alejandra Díaz','40','catedra','miercoles','1','viernes','5'),(54,'9634','1020','Estructura de datos','Werner Barrero','40','laboratorio','lunes','2','miercoles','7'),(55,'45234','1000','Sistema Operativo','Ivan Diaz','40','catedra','Martes','1','jueves','1'),(56,'7832','1001','Redes ','Patricio Reyes','40','catedra','Miercoles','2','Viernes','4'),(57,'4532','1002','Investigación operativa','Raul Rodriguez','40','catedra','Jueves','6','Jueves','5'),(58,'7853','1005','Calculo 3','Alvaro Reyes','40','laboratorio','Viernes','5','viernes','7'),(59,'3453','1004','Algebra 3','Nicolas Rojas','40','catedra','Lunes ','5','Miercoles','3'),(60,'4674','1006','Probabilidad y estadistica','Monica fuentes','40','laboratorio','Martes','2','Jueves','2'),(61,'7865','1007','Metodologia de software','Jimena Fuentes','40','catedra','miercoles','3','Miercoles','1'),(62,'5465','1008','Costo y presupuesto','Aron Barrera','40','catedra','jueves','7','Viernes','4'),(63,'4634','1009','Ingenieria economica','Ethan Diaz ','40','catedra','Viernes','1','Lunes','1'),(64,'6345','1010','Administración finaciera','Isabella Paz','40','laboratorio','Lunes','6','miercoles','3'),(65,'2341','1011','Topicos 1','Nicole Moreno','40','catedra','Martes','3','jueves','4'),(66,'4565','1012','Topicos 2','Maria Salas','40','laboratorio','miercoles','5','viernes','6'),(67,'7885','1013','Topicos 3','Gustavo Bahamondes','40','catedra','jueves','2','Jueves','2'),(68,'5643','1014','Responsabilidad social','Felipe Argomedo','40','catedra','Viernes','2','Viernes','4'),(69,'2538','1015','Electromagnetismo','amanda Briceño','40','catedra','Lunes','7','Martes','3'),(70,'7857','1016','Fisica 1','Rodrigo Diaz','40','laboratorio','Martes','5','Jueves','3'),(71,'2466','1017','Fisica 2','Manuel Oviedo','40','catedra','miercoles','4','Miercoles','2'),(72,'8787','1017','Fisica 3','Cristian Pino','40','laboratorio','jueves','1','Lunes','1'),(73,'1234','1025','Calculo ','Eduardo Diaz','40','catedra','lunes','1','miercoles','1'),(74,'4321','1024','Algebra','Antonio Díaz','40','catedra','lunes','2','martes','2'),(75,'2342','1023','Calculo 2','Javier Hernández','40','catedra','lunes','3','miercoles','3'),(76,'3456','1022','Algebra 2','Elizabeth Herrera','40','laboratorio','jueves','4','jueves','5'),(77,'3232','1021','Lenguaje de programación','Alejandra Díaz','40','catedra','miercoles','1','viernes','5'),(78,'9634','1020','Estructura de datos','Werner Barrero','40','laboratorio','lunes','2','miercoles','7'),(79,'45234','1000','Sistema Operativo','Ivan Diaz','40','catedra','Martes','1','jueves','1'),(80,'7832','1001','Redes ','Patricio Reyes','40','catedra','Miercoles','2','Viernes','4'),(81,'4532','1002','Investigación operativa','Raul Rodriguez','40','catedra','Jueves','6','Jueves','5'),(82,'7853','1005','Calculo 3','Alvaro Reyes','40','laboratorio','Viernes','5','viernes','7'),(83,'3453','1004','Algebra 3','Nicolas Rojas','40','catedra','Lunes ','5','Miercoles','3'),(84,'4674','1006','Probabilidad y estadistica','Monica fuentes','40','laboratorio','Martes','2','Jueves','2'),(85,'7865','1007','Metodologia de software','Jimena Fuentes','40','catedra','miercoles','3','Miercoles','1'),(86,'5465','1008','Costo y presupuesto','Aron Barrera','40','catedra','jueves','7','Viernes','4'),(87,'4634','1009','Ingenieria economica','Ethan Diaz ','40','catedra','Viernes','1','Lunes','1'),(88,'6345','1010','Administración finaciera','Isabella Paz','40','laboratorio','Lunes','6','miercoles','3'),(89,'2341','1011','Topicos 1','Nicole Moreno','40','catedra','Martes','3','jueves','4'),(90,'4565','1012','Topicos 2','Maria Salas','40','laboratorio','miercoles','5','viernes','6'),(91,'7885','1013','Topicos 3','Gustavo Bahamondes','40','catedra','jueves','2','Jueves','2'),(92,'5643','1014','Responsabilidad social','Felipe Argomedo','40','catedra','Viernes','2','Viernes','4'),(93,'2538','1015','Electromagnetismo','amanda Briceño','40','catedra','Lunes','7','Martes','3'),(94,'7857','1016','Fisica 1','Rodrigo Diaz','40','laboratorio','Martes','5','Jueves','3'),(95,'2466','1017','Fisica 2','Manuel Oviedo','40','catedra','miercoles','4','Miercoles','2'),(96,'8787','1017','Fisica 3','Cristian Pino','40','laboratorio','jueves','1','Lunes','1'),(97,'1234','1025','Calculo ','Eduardo Diaz','40','catedra','lunes','1','miercoles','1'),(98,'4321','1024','Algebra','Antonio Díaz','40','catedra','lunes','2','martes','2'),(99,'2342','1023','Calculo 2','Javier Hernández','40','catedra','lunes','3','miercoles','3'),(100,'3456','1022','Algebra 2','Elizabeth Herrera','40','laboratorio','jueves','4','jueves','5'),(101,'3232','1021','Lenguaje de programación','Alejandra Díaz','40','catedra','miercoles','1','viernes','5'),(102,'9634','1020','Estructura de datos','Werner Barrero','40','laboratorio','lunes','2','miercoles','7'),(103,'45234','1000','Sistema Operativo','Ivan Diaz','40','catedra','Martes','1','jueves','1'),(104,'7832','1001','Redes ','Patricio Reyes','40','catedra','Miercoles','2','Viernes','4'),(105,'4532','1002','Investigación operativa','Raul Rodriguez','40','catedra','Jueves','6','Jueves','5'),(106,'7853','1005','Calculo 3','Alvaro Reyes','40','laboratorio','Viernes','5','viernes','7'),(107,'3453','1004','Algebra 3','Nicolas Rojas','40','catedra','Lunes ','5','Miercoles','3'),(108,'4674','1006','Probabilidad y estadistica','Monica fuentes','40','laboratorio','Martes','2','Jueves','2'),(109,'7865','1007','Metodologia de software','Jimena Fuentes','40','catedra','miercoles','3','Miercoles','1'),(110,'5465','1008','Costo y presupuesto','Aron Barrera','40','catedra','jueves','7','Viernes','4'),(111,'4634','1009','Ingenieria economica','Ethan Diaz ','40','catedra','Viernes','1','Lunes','1'),(112,'6345','1010','Administración finaciera','Isabella Paz','40','laboratorio','Lunes','6','miercoles','3'),(113,'2341','1011','Topicos 1','Nicole Moreno','40','catedra','Martes','3','jueves','4'),(114,'4565','1012','Topicos 2','Maria Salas','40','laboratorio','miercoles','5','viernes','6'),(115,'7885','1013','Topicos 3','Gustavo Bahamondes','40','catedra','jueves','2','Jueves','2'),(116,'5643','1014','Responsabilidad social','Felipe Argomedo','40','catedra','Viernes','2','Viernes','4'),(117,'2538','1015','Electromagnetismo','amanda Briceño','40','catedra','Lunes','7','Martes','3'),(118,'7857','1016','Fisica 1','Rodrigo Diaz','40','laboratorio','Martes','5','Jueves','3'),(119,'2466','1017','Fisica 2','Manuel Oviedo','40','catedra','miercoles','4','Miercoles','2'),(120,'8787','1017','Fisica 3','Cristian Pino','40','laboratorio','jueves','1','Lunes','1'),(121,'1234','1025','Calculo ','Eduardo Diaz','40','catedra','lunes','1','miercoles','1'),(122,'4321','1024','Algebra','Antonio Díaz','40','catedra','lunes','2','martes','2'),(123,'2342','1023','Calculo 2','Javier Hernández','40','catedra','lunes','3','miercoles','3'),(124,'3456','1022','Algebra 2','Elizabeth Herrera','40','laboratorio','jueves','4','jueves','5'),(125,'3232','1021','Lenguaje de programación','Alejandra Díaz','40','catedra','miercoles','1','viernes','5'),(126,'9634','1020','Estructura de datos','Werner Barrero','40','laboratorio','lunes','2','miercoles','7'),(127,'45234','1000','Sistema Operativo','Ivan Diaz','40','catedra','Martes','1','jueves','1'),(128,'7832','1001','Redes ','Patricio Reyes','40','catedra','Miercoles','2','Viernes','4'),(129,'4532','1002','Investigación operativa','Raul Rodriguez','40','catedra','Jueves','6','Jueves','5'),(130,'7853','1005','Calculo 3','Alvaro Reyes','40','laboratorio','Viernes','5','viernes','7'),(131,'3453','1004','Algebra 3','Nicolas Rojas','40','catedra','Lunes ','5','Miercoles','3'),(132,'4674','1006','Probabilidad y estadistica','Monica fuentes','40','laboratorio','Martes','2','Jueves','2'),(133,'7865','1007','Metodologia de software','Jimena Fuentes','40','catedra','miercoles','3','Miercoles','1'),(134,'5465','1008','Costo y presupuesto','Aron Barrera','40','catedra','jueves','7','Viernes','4'),(135,'4634','1009','Ingenieria economica','Ethan Diaz ','40','catedra','Viernes','1','Lunes','1'),(136,'6345','1010','Administración finaciera','Isabella Paz','40','laboratorio','Lunes','6','miercoles','3'),(137,'2341','1011','Topicos 1','Nicole Moreno','40','catedra','Martes','3','jueves','4'),(138,'4565','1012','Topicos 2','Maria Salas','40','laboratorio','miercoles','5','viernes','6'),(139,'7885','1013','Topicos 3','Gustavo Bahamondes','40','catedra','jueves','2','Jueves','2'),(140,'5643','1014','Responsabilidad social','Felipe Argomedo','40','catedra','Viernes','2','Viernes','4'),(141,'2538','1015','Electromagnetismo','amanda Briceño','40','catedra','Lunes','7','Martes','3'),(142,'7857','1016','Fisica 1','Rodrigo Diaz','40','laboratorio','Martes','5','Jueves','3'),(143,'2466','1017','Fisica 2','Manuel Oviedo','40','catedra','miercoles','4','Miercoles','2'),(144,'8787','1017','Fisica 3','Cristian Pino','40','laboratorio','jueves','1','Lunes','1'),(145,'1234','1025','Calculo ','Eduardo Diaz','40','catedra','lunes','1','miercoles','1'),(146,'4321','1024','Algebra','Antonio Díaz','40','catedra','lunes','2','martes','2'),(147,'2342','1023','Calculo 2','Javier Hernández','40','catedra','lunes','3','miercoles','3'),(148,'3456','1022','Algebra 2','Elizabeth Herrera','40','laboratorio','jueves','4','jueves','5'),(149,'3232','1021','Lenguaje de programación','Alejandra Díaz','40','catedra','miercoles','1','viernes','5'),(150,'9634','1020','Estructura de datos','Werner Barrero','40','laboratorio','lunes','2','miercoles','7'),(151,'45234','1000','Sistema Operativo','Ivan Diaz','40','catedra','Martes','1','jueves','1'),(152,'7832','1001','Redes ','Patricio Reyes','40','catedra','Miercoles','2','Viernes','4'),(153,'4532','1002','Investigación operativa','Raul Rodriguez','40','catedra','Jueves','6','Jueves','5'),(154,'7853','1005','Calculo 3','Alvaro Reyes','40','laboratorio','Viernes','5','viernes','7'),(155,'3453','1004','Algebra 3','Nicolas Rojas','40','catedra','Lunes ','5','Miercoles','3'),(156,'4674','1006','Probabilidad y estadistica','Monica fuentes','40','laboratorio','Martes','2','Jueves','2'),(157,'7865','1007','Metodologia de software','Jimena Fuentes','40','catedra','miercoles','3','Miercoles','1'),(158,'5465','1008','Costo y presupuesto','Aron Barrera','40','catedra','jueves','7','Viernes','4'),(159,'4634','1009','Ingenieria economica','Ethan Diaz ','40','catedra','Viernes','1','Lunes','1'),(160,'6345','1010','Administración finaciera','Isabella Paz','40','laboratorio','Lunes','6','miercoles','3'),(161,'2341','1011','Topicos 1','Nicole Moreno','40','catedra','Martes','3','jueves','4'),(162,'4565','1012','Topicos 2','Maria Salas','40','laboratorio','miercoles','5','viernes','6'),(163,'7885','1013','Topicos 3','Gustavo Bahamondes','40','catedra','jueves','2','Jueves','2'),(164,'5643','1014','Responsabilidad social','Felipe Argomedo','40','catedra','Viernes','2','Viernes','4'),(165,'2538','1015','Electromagnetismo','amanda Briceño','40','catedra','Lunes','7','Martes','3'),(166,'7857','1016','Fisica 1','Rodrigo Diaz','40','laboratorio','Martes','5','Jueves','3'),(167,'2466','1017','Fisica 2','Manuel Oviedo','40','catedra','miercoles','4','Miercoles','2'),(168,'8787','1017','Fisica 3','Cristian Pino','40','laboratorio','jueves','1','Lunes','1');

/*Table structure for table `reporte` */

DROP TABLE IF EXISTS `reporte`;

CREATE TABLE `reporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) NOT NULL,
  `nrc` varchar(10) NOT NULL,
  `nombreCurso` varchar(20) NOT NULL,
  `profesor` varchar(20) NOT NULL,
  `edificio` varchar(20) NOT NULL,
  `numeroSala` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `reporte` */

insert  into `reporte`(`id`,`codigo`,`nrc`,`nombreCurso`,`profesor`,`edificio`,`numeroSala`) values (1,'1234','1025','Calculo ','Eduardo Diaz','r2','123'),(2,'4321','1024','Algebra','Antonio Díaz','r2','123'),(3,'2342','1023','Calculo 2','Javier Hernández','r2','123'),(4,'3456','1022','Algebra 2','Elizabeth Herrera','r3','123'),(5,'3232','1021','Lenguaje de programa','Alejandra Díaz','r1','345'),(6,'9634','1020','Estructura de datos','Werner Barrero','r3','123'),(7,'4565','1012','Topicos 2','Maria Salas','r3','123');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellidoPat` varchar(50) NOT NULL,
  `apellidoMat` varchar(50) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `cargo` int(1) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`rut`),
  UNIQUE KEY `rut` (`rut`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`nombre`,`apellidoPat`,`apellidoMat`,`rut`,`cargo`,`pass`,`active`) values (1,'Antonio','Lefimil','modifico','21.106.735-7',1,'162e3973ecf8a77629bbf7c8faaf28c13f99d4e7f1affadc616731276ee1d07a',1),(45,'Juan','Toro','Lefimil','11.111.111-1',1,'162e3973ecf8a77629bbf7c8faaf28c13f99d4e7f1affadc616731276ee1d07a',1),(46,'Gonzao','Zamudio','modifico','18.459.441-2',1,'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4',1),(47,'christopher','Elgueta','Mendoza','16.801.499-6',2,'b221d9dbb083a7f33428d7c2a3c3198ae925614d70210e28716ccaa7cd4ddb79',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;