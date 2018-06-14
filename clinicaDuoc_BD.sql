CREATE DATABASE  IF NOT EXISTS `salud` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `salud`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: salud
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.32-MariaDB

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idCliente` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nick` varchar(12) NOT NULL,
  `Contra` varchar(10) NOT NULL,
  `FK_Trabajador` bigint(20) NOT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `FK_Trabajador_idx` (`FK_Trabajador`),
  CONSTRAINT `FK_Trabajador` FOREIGN KEY (`FK_Trabajador`) REFERENCES `trabajador` (`idTrabajador`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compa`
--

DROP TABLE IF EXISTS `compa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compa` (
  `idcompa` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(25) NOT NULL,
  `ApellidoP` varchar(30) NOT NULL,
  `ApellidoM` varchar(30) NOT NULL,
  `Rut` varchar(10) NOT NULL,
  `Fono` int(11) NOT NULL,
  `FK_Parentesco` int(11) NOT NULL,
  PRIMARY KEY (`idcompa`),
  KEY `FK_Paren_idx` (`FK_Parentesco`),
  CONSTRAINT `FK_Paren` FOREIGN KEY (`FK_Parentesco`) REFERENCES `parentesco` (`IdPare`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compa`
--

LOCK TABLES `compa` WRITE;
/*!40000 ALTER TABLE `compa` DISABLE KEYS */;
/*!40000 ALTER TABLE `compa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidad` (
  `idEspecialidad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`idEspecialidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha`
--

DROP TABLE IF EXISTS `ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ficha` (
  `Num_Ficha` bigint(20) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Nivel_Urgencia` varchar(5) NOT NULL,
  `Acompanado` bit(1) NOT NULL,
  `Motivo_Consulta` varchar(150) NOT NULL,
  `FK_TRAB` bigint(20) NOT NULL,
  `FK_PAC` bigint(20) NOT NULL,
  `FK_Medico` bigint(20) NOT NULL,
  `FK_Acompa` bigint(20) NOT NULL,
  PRIMARY KEY (`Num_Ficha`),
  KEY `FK_PAC_idx` (`FK_PAC`),
  KEY `FK_MEDICO_idx` (`FK_Medico`),
  KEY `FK_TRAB_idx` (`FK_TRAB`),
  KEY `FK_ACOMPA_idx` (`FK_Acompa`),
  CONSTRAINT `FK_ACOMPA` FOREIGN KEY (`FK_Acompa`) REFERENCES `compa` (`idcompa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_MEDICO` FOREIGN KEY (`FK_Medico`) REFERENCES `trabajador` (`idTrabajador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PAC` FOREIGN KEY (`FK_PAC`) REFERENCES `paciente` (`idPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_TRAB` FOREIGN KEY (`FK_TRAB`) REFERENCES `trabajador` (`idTrabajador`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha`
--

LOCK TABLES `ficha` WRITE;
/*!40000 ALTER TABLE `ficha` DISABLE KEYS */;
/*!40000 ALTER TABLE `ficha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcion`
--

DROP TABLE IF EXISTS `funcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcion` (
  `idFuncion` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`idFuncion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcion`
--

LOCK TABLES `funcion` WRITE;
/*!40000 ALTER TABLE `funcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicamento` (
  `idMedicamento` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idMedicamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento`
--

LOCK TABLES `medicamento` WRITE;
/*!40000 ALTER TABLE `medicamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observacion`
--

DROP TABLE IF EXISTS `observacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `observacion` (
  `IdObser` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_Ficha` bigint(20) NOT NULL,
  `Sintomas` varchar(2500) NOT NULL,
  `Diagnostico` varchar(2500) NOT NULL,
  `Reposo` bit(1) NOT NULL,
  `Dias_repoco` int(11) NOT NULL,
  `FK_Medic` bigint(20) NOT NULL,
  PRIMARY KEY (`IdObser`),
  KEY `FK_Ficha_idx` (`FK_Ficha`),
  KEY `FK_Medico_idx` (`FK_Medic`),
  CONSTRAINT `FK_Ficha` FOREIGN KEY (`FK_Ficha`) REFERENCES `ficha` (`Num_Ficha`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Medic` FOREIGN KEY (`FK_Medic`) REFERENCES `trabajador` (`idTrabajador`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `observacion`
--

LOCK TABLES `observacion` WRITE;
/*!40000 ALTER TABLE `observacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `observacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `idPaciente` bigint(20) NOT NULL AUTO_INCREMENT,
  `Rut` varchar(10) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `ApellidoP` varchar(30) NOT NULL,
  `ApelldioM` varchar(30) NOT NULL,
  `Nacimiento` date NOT NULL,
  `Edad` int(11) NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `GrupoSanguineo` varchar(2) NOT NULL,
  `EstadoCivil` varchar(10) NOT NULL,
  `Domicilio` varchar(1750) NOT NULL,
  `Fono` int(11) NOT NULL,
  PRIMARY KEY (`idPaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente_compa`
--

DROP TABLE IF EXISTS `paciente_compa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente_compa` (
  `FK_Paciente` bigint(20) NOT NULL,
  `FK_Compa` bigint(20) NOT NULL,
  PRIMARY KEY (`FK_Paciente`,`FK_Compa`),
  KEY `FK_Compa_idx` (`FK_Compa`),
  CONSTRAINT `FK_Compa` FOREIGN KEY (`FK_Compa`) REFERENCES `compa` (`idcompa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Paciente` FOREIGN KEY (`FK_Paciente`) REFERENCES `paciente` (`idPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente_compa`
--

LOCK TABLES `paciente_compa` WRITE;
/*!40000 ALTER TABLE `paciente_compa` DISABLE KEYS */;
/*!40000 ALTER TABLE `paciente_compa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parentesco`
--

DROP TABLE IF EXISTS `parentesco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parentesco` (
  `IdPare` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(25) NOT NULL,
  PRIMARY KEY (`IdPare`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parentesco`
--

LOCK TABLES `parentesco` WRITE;
/*!40000 ALTER TABLE `parentesco` DISABLE KEYS */;
/*!40000 ALTER TABLE `parentesco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta`
--

DROP TABLE IF EXISTS `receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receta` (
  `IdReceta` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_Medicamento` int(11) NOT NULL,
  `Dosis` varchar(250) NOT NULL,
  `Dias` int(11) NOT NULL,
  `FK_Observacion` bigint(20) NOT NULL,
  PRIMARY KEY (`IdReceta`),
  KEY `FK_Medicamento_idx` (`FK_Medicamento`),
  KEY `FK_Obser_idx` (`FK_Observacion`),
  CONSTRAINT `FK_Medicamento` FOREIGN KEY (`FK_Medicamento`) REFERENCES `medicamento` (`idMedicamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Obser` FOREIGN KEY (`FK_Observacion`) REFERENCES `observacion` (`IdObser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta`
--

LOCK TABLES `receta` WRITE;
/*!40000 ALTER TABLE `receta` DISABLE KEYS */;
/*!40000 ALTER TABLE `receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajador`
--

DROP TABLE IF EXISTS `trabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabajador` (
  `idTrabajador` bigint(20) NOT NULL AUTO_INCREMENT,
  `Rut` varchar(10) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `ApellidoP` varchar(20) NOT NULL,
  `ApellidoM` varchar(20) NOT NULL,
  `Fono` int(11) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `FK_ESP` int(11) NOT NULL,
  `FK_FUNC` int(11) NOT NULL,
  PRIMARY KEY (`idTrabajador`),
  KEY `FK_ESP_idx` (`FK_ESP`),
  KEY `FK_FUNC_idx` (`FK_FUNC`),
  CONSTRAINT `FK_ESP` FOREIGN KEY (`FK_ESP`) REFERENCES `especialidad` (`idEspecialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_FUNC` FOREIGN KEY (`FK_FUNC`) REFERENCES `funcion` (`idFuncion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajador`
--

LOCK TABLES `trabajador` WRITE;
/*!40000 ALTER TABLE `trabajador` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabajador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 10:19:51
