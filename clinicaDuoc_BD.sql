CREATE DATABASE  IF NOT EXISTS `clinicaduoc` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `clinicaduoc`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: clinicaduoc
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.26-MariaDB

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
-- Table structure for table `administrativo`
--

DROP TABLE IF EXISTS `administrativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrativo` (
  `idPersAdm` int(11) NOT NULL AUTO_INCREMENT,
  `rut` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidoP` varchar(45) NOT NULL,
  `apellidoM` varchar(45) NOT NULL,
  `fono` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `idcargo` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idPersAdm`,`idcargo`,`idUser`),
  KEY `idcargo_idx` (`idcargo`),
  KEY `idadmin_idx` (`idUser`),
  CONSTRAINT `id_User` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idcargo` FOREIGN KEY (`idcargo`) REFERENCES `cargo` (`idcargo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrativo`
--

LOCK TABLES `administrativo` WRITE;
/*!40000 ALTER TABLE `administrativo` DISABLE KEYS */;
INSERT INTO `administrativo` VALUES (1,'11.111.111-1','Tatiana','Peña','González','09-51356683','tatipena@gmail.com',2,1);
/*!40000 ALTER TABLE `administrativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atencion`
--

DROP TABLE IF EXISTS `atencion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atencion` (
  `id_atencion` int(11) NOT NULL AUTO_INCREMENT,
  `numFicha` int(11) NOT NULL,
  `idespecialista` int(11) NOT NULL,
  `sintoma` varchar(99) NOT NULL,
  `diagnostico` varchar(99) NOT NULL,
  `reposo` varchar(99) NOT NULL,
  `cant_dias` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_atencion`,`numFicha`,`idespecialista`),
  KEY `idespecialista_idx` (`idespecialista`),
  KEY `numFicha_idx` (`numFicha`),
  CONSTRAINT `idespecialista` FOREIGN KEY (`idespecialista`) REFERENCES `especialista` (`idespecialista`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `numFicha` FOREIGN KEY (`numFicha`) REFERENCES `ficha` (`numFicha`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atencion`
--

LOCK TABLES `atencion` WRITE;
/*!40000 ALTER TABLE `atencion` DISABLE KEYS */;
INSERT INTO `atencion` VALUES (1,2,2,'Se detectó una inflación profunda en el pie izquierdo motivo del golpe.','Se le recetará medicamento anti-inflamatorio para aliviar hinchazón y un antibiótico para el dolor.','Reposo absoluto del pie izquierdo','2 días');
/*!40000 ALTER TABLE `atencion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `idcargo` int(11) NOT NULL,
  `descripcion` varchar(60) NOT NULL,
  PRIMARY KEY (`idcargo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Directiva'),(2,'Secretariado'),(3,'Seguridad'),(4,'Aseo'),(5,'Otro');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidad` (
  `id_esp` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_esp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES (1,'Medicina General'),(2,'Pediatra'),(3,'Oftalmólogo'),(4,'Obstetricia y Ginecología'),(5,'Cirugía General'),(6,'Traumatólogo'),(7,'Odontólogo'),(8,'Dermatólogo'),(9,'Otro');
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialista`
--

DROP TABLE IF EXISTS `especialista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialista` (
  `idespecialista` int(11) NOT NULL AUTO_INCREMENT,
  `rut` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidoP` varchar(45) NOT NULL,
  `apellidoM` varchar(45) NOT NULL,
  `fono` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_esp` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idespecialista`,`id_esp`,`idUser`),
  KEY `id_esp_idx` (`id_esp`),
  KEY `idAdmin_idx` (`idUser`),
  CONSTRAINT `idUser` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_esp` FOREIGN KEY (`id_esp`) REFERENCES `especialidad` (`id_esp`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialista`
--

LOCK TABLES `especialista` WRITE;
/*!40000 ALTER TABLE `especialista` DISABLE KEYS */;
INSERT INTO `especialista` VALUES (2,'10.659.523-5','Raúl','Tapia','Andaur','09-3564956','rtapia.andaur@gmail.com',1,1);
/*!40000 ALTER TABLE `especialista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha`
--

DROP TABLE IF EXISTS `ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ficha` (
  `numFicha` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(45) NOT NULL,
  `nivel_urgencia` varchar(45) NOT NULL,
  `motivo_consulta` varchar(99) NOT NULL,
  `nombre_acom` varchar(45) DEFAULT NULL,
  `apellidoP_acom` varchar(45) DEFAULT NULL,
  `apellidoM_acom` varchar(45) DEFAULT NULL,
  `rut_acom` varchar(45) DEFAULT NULL,
  `idparen` int(11) DEFAULT NULL,
  `fono` varchar(45) DEFAULT NULL,
  `idpaciente` int(11) NOT NULL,
  PRIMARY KEY (`numFicha`,`idpaciente`),
  KEY `idparen_idx` (`idparen`),
  KEY `idpaciente_idx` (`idpaciente`),
  CONSTRAINT `idpaciente` FOREIGN KEY (`idpaciente`) REFERENCES `paciente` (`idpaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idparen` FOREIGN KEY (`idparen`) REFERENCES `parentesco` (`idparen`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha`
--

LOCK TABLES `ficha` WRITE;
/*!40000 ALTER TABLE `ficha` DISABLE KEYS */;
INSERT INTO `ficha` VALUES (2,'23/05/2018','Medio','Golpe en el pie izquierdo, posible fractura/lesión.','','','','',1,'',1),(4,'23/05/2018','Alto','Dolor de cabeza y náuseas','Carlos','Ortega','López','15.985.244-9',2,'09-95612445',1);
/*!40000 ALTER TABLE `ficha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `idpaciente` int(11) NOT NULL AUTO_INCREMENT,
  `rut` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidoP` varchar(45) NOT NULL,
  `apellidoM` varchar(45) NOT NULL,
  `fecha_nacimiento` varchar(45) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `grupo_sanguineo` varchar(45) NOT NULL,
  `estado_civil` varchar(45) NOT NULL,
  `domicilio` varchar(45) NOT NULL,
  `fono` varchar(45) NOT NULL,
  `idPersAdm` int(11) NOT NULL,
  PRIMARY KEY (`idpaciente`,`idPersAdm`),
  KEY `idPersAdm_idx` (`idPersAdm`),
  CONSTRAINT `idPersAdm` FOREIGN KEY (`idPersAdm`) REFERENCES `administrativo` (`idPersAdm`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'10.111.222-3','Victor','Castro','Ugarte','10/09/1945','Hombre','Grupo O','Casado/a','Palacio de La Moneda, Santiago','09-19731110',1);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parentesco`
--

DROP TABLE IF EXISTS `parentesco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parentesco` (
  `idparen` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idparen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parentesco`
--

LOCK TABLES `parentesco` WRITE;
/*!40000 ALTER TABLE `parentesco` DISABLE KEYS */;
INSERT INTO `parentesco` VALUES (1,'Familiar'),(2,'Amigo'),(3,'Conocido'),(4,'Otro');
/*!40000 ALTER TABLE `parentesco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta`
--

DROP TABLE IF EXISTS `receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receta` (
  `id_receta` int(11) NOT NULL AUTO_INCREMENT,
  `id_atencion` int(11) NOT NULL,
  `medicamento` varchar(45) NOT NULL,
  `dosis` varchar(45) NOT NULL,
  `cant_dias` varchar(45) NOT NULL,
  PRIMARY KEY (`id_receta`,`id_atencion`),
  KEY `id_atencion_idx` (`id_atencion`),
  CONSTRAINT `id_atencion` FOREIGN KEY (`id_atencion`) REFERENCES `atencion` (`id_atencion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta`
--

LOCK TABLES `receta` WRITE;
/*!40000 ALTER TABLE `receta` DISABLE KEYS */;
INSERT INTO `receta` VALUES (1,1,'Ibuprofone y Paracetamol','2 veces al días por 8 horas','5');
/*!40000 ALTER TABLE `receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Admin','Admin123'),(2,'Administracion1','Adm123'),(3,'Medico1','Medic123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'clinicaduoc'
--

--
-- Dumping routines for database 'clinicaduoc'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-23 11:43:44
