CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: cadastro
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.38-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `descricao` text,
  `carga` int(10) unsigned DEFAULT NULL,
  `totaulas` int(10) unsigned DEFAULT NULL,
  `ano` year(4) DEFAULT '2019',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'HTML4','Curso de HTML5',40,37,2014),(2,'Algoritmos','Lógica de Programação',20,15,2014),(3,'Photoshop','Dicas de Photoshop CC',10,8,2014),(4,'PHP','Curso de PHP para iniciantes',40,20,2010),(5,'Jarva','Introdução à Linguagem Java',10,29,2000),(6,'MySQL','Banco de Dados MySQL',30,15,2016),(7,'Word','Curso completo de Word',40,30,2016);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_assiste_curso`
--

DROP TABLE IF EXISTS `pessoa_assiste_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa_assiste_curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `idpessoa` int(11) DEFAULT NULL,
  `idcurso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idpessoa` (`idpessoa`),
  KEY `idcurso` (`idcurso`),
  CONSTRAINT `pessoa_assiste_curso_ibfk_1` FOREIGN KEY (`idpessoa`) REFERENCES `pessoas` (`id`),
  CONSTRAINT `pessoa_assiste_curso_ibfk_2` FOREIGN KEY (`idcurso`) REFERENCES `cursos` (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_assiste_curso`
--

LOCK TABLES `pessoa_assiste_curso` WRITE;
/*!40000 ALTER TABLE `pessoa_assiste_curso` DISABLE KEYS */;
INSERT INTO `pessoa_assiste_curso` VALUES (1,'2019-01-01',1,2),(2,'2019-02-02',3,6),(3,'2019-03-03',4,7),(4,'2019-04-04',2,4);
/*!40000 ALTER TABLE `pessoa_assiste_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoas` (
  `codigo` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prof` varchar(20) NOT NULL DEFAULT '',
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  `cursopreferido` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cursopreferido` (`cursopreferido`),
  CONSTRAINT `pessoas_ibfk_1` FOREIGN KEY (`cursopreferido`) REFERENCES `cursos` (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (NULL,1,'Matheus','','2000-06-03','M',78.00,1.77,'Brasil',6),(NULL,2,'Lucas','','2003-03-05','M',75.00,1.78,'Brasil',5),(NULL,3,'Simone','','1987-12-07','F',80.00,1.65,'Brasil',4),(NULL,4,'Thiago','','2001-11-09','M',80.00,1.80,'EUA',3),(NULL,5,'Marcos','','2004-07-06','M',45.50,1.58,'Irlanda',1),(NULL,6,'Max','','2006-08-06','M',51.00,1.64,'Brasil',5),(NULL,7,'Carlos','','2002-04-06','M',55.70,1.70,'África do Sul',2),(NULL,8,'Maria','','2003-12-01','F',50.00,1.80,'Irlanda',6),(NULL,9,'Roberta','','2002-11-04','F',60.00,1.60,'Indonesia',4);
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-18 15:26:46
