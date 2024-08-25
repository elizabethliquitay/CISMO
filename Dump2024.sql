CREATE DATABASE  IF NOT EXISTS `proyecto_cismo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `proyecto_cismo`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyecto_cismo
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auditoria_facturacioncab`
--

DROP TABLE IF EXISTS `auditoria_facturacioncab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_facturacioncab` (
  `id_auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) NOT NULL,
  `campo_modificado` varchar(50) NOT NULL,
  `valor_anterior` decimal(14,4) DEFAULT NULL,
  `valor_nuevo` decimal(14,4) DEFAULT NULL,
  `fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `usuario` varchar(50) NOT NULL,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_facturacioncab`
--

LOCK TABLES `auditoria_facturacioncab` WRITE;
/*!40000 ALTER TABLE `auditoria_facturacioncab` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_facturacioncab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUIL` varchar(20) NOT NULL,
  `APENOM` varchar(60) NOT NULL,
  `LEGAJOREAL` int(11) NOT NULL,
  `ESTADO` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'18675125','Perez , Maria Laura',3263,'A'),(2,'03217618','Ambrosino,Facundo',6060,'A'),(3,'24093519','Calderoli, Emanuel',7612,'A'),(4,'14981335','Gaitan, Daiana',6726,'A'),(5,'78817599','Espinosa, Fernanda',9664,'A'),(6,'79402747','Diaz, Pablo Andres',7395,'A'),(7,'32456962','Fernandez, Nicolas Sebastian',8415,'A'),(8,'41061929','Moreno, Valentina Agustina',1864,'A'),(9,'30206070','JimÃ©nez, Lucas Emanuel',9374,'A'),(10,'59362265','Ruiz, Camila Belen',9227,'A'),(11,'89031903','Hernandez, Franco Agustin',5891,'A'),(12,'65578731','Alvarez, Florencia Micaela',8064,'A'),(13,'32725194','Gomez, Matias Ignacio',7516,'A'),(14,'33709895','Lopez, Camila Belen',4723,'A'),(15,'12127586','Martinez, Diego Ezequiel',6173,'A'),(16,'21587668','Sanchez, Marcela Natalia',2530,'A'),(17,'58305447','Diaz, Pablo Andrea',2576,'A'),(18,'60546475','Gonzalez, Carlos Alberto',9086,'A'),(19,'29854446','Ditale, Liliana Rosana',2161,'A'),(20,'50073860','Romero, Sofia Camila',8888,'A');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado_tienda`
--

DROP TABLE IF EXISTS `empleado_tienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado_tienda` (
  `ID` int(11) DEFAULT NULL,
  `LEGAJO` int(11) NOT NULL,
  `IDTIENDA` varchar(4) DEFAULT NULL,
  `ESTADO` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`LEGAJO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_tienda`
--

LOCK TABLES `empleado_tienda` WRITE;
/*!40000 ALTER TABLE `empleado_tienda` DISABLE KEYS */;
INSERT INTO `empleado_tienda` VALUES (2,3217618,'C003','A'),(17,12127586,'C009','A'),(5,14981335,'C003','A'),(1,18675125,'C002','A'),(4,24093519,'C004','A'),(3,29854446,'C002','A'),(18,29854447,'C010','A'),(11,30206070,'C008','A'),(9,32456962,'C001','A'),(15,32725194,'C007','A'),(16,33709895,'C009','A'),(10,41061929,'C001','A'),(8,50073860,'C006','A'),(19,58305448,'C010','A'),(12,59362265,'C008','A'),(20,60546475,'C011','A'),(14,65578731,'C005','A'),(6,78817599,'C004','A'),(7,79402747,'C006','A'),(13,89031903,'C005','A');
/*!40000 ALTER TABLE `empleado_tienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `factura_completa`
--

DROP TABLE IF EXISTS `factura_completa`;
/*!50001 DROP VIEW IF EXISTS `factura_completa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `factura_completa` AS SELECT 
 1 AS `ID`,
 1 AS `FECHAVENTA`,
 1 AS `TIPOCOMPROBANTE`,
 1 AS `DESCRIPCION`,
 1 AS `IMPORTE`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `facturacioncab`
--

DROP TABLE IF EXISTS `facturacioncab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturacioncab` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDTIENDA` varchar(4) DEFAULT NULL,
  `FECHAVENTA` date DEFAULT NULL,
  `TIPOCOMPROBANTE` varchar(3) DEFAULT NULL,
  `CAJA` int(3) DEFAULT NULL,
  `LEGAJO` int(11) NOT NULL,
  `NROCOMPROBANTE` varchar(20) DEFAULT NULL,
  `IMPORTE` decimal(14,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_TIENDA_FACTURACIONCAB` (`IDTIENDA`),
  KEY `FK__TIPOCOMPROBANTE_FACTURACIONCAB` (`TIPOCOMPROBANTE`),
  KEY `FK__EMP_FACTURACIONCAB` (`LEGAJO`),
  CONSTRAINT `FK_FACTURACIONDET_FACTURACIONCAB` FOREIGN KEY (`ID`) REFERENCES `facturaciondet` (`IDFACTURA`),
  CONSTRAINT `FK_TIENDA_FACTURACIONCAB` FOREIGN KEY (`IDTIENDA`) REFERENCES `tienda` (`ID`),
  CONSTRAINT `FK__EMP_FACTURACIONCAB` FOREIGN KEY (`LEGAJO`) REFERENCES `empleado_tienda` (`LEGAJO`),
  CONSTRAINT `FK__TIPOCOMPROBANTE_FACTURACIONCAB` FOREIGN KEY (`TIPOCOMPROBANTE`) REFERENCES `tipocomprobante` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturacioncab`
--

LOCK TABLES `facturacioncab` WRITE;
/*!40000 ALTER TABLE `facturacioncab` DISABLE KEYS */;
INSERT INTO `facturacioncab` VALUES (1,'C001','2024-11-23','FAC',1,32456962,'FAC001',33670.0000),(2,'C002','2024-11-24','NC',2,29854446,'NC002',22693.0000),(3,'C010','2024-11-25','REC',1,29854446,'REC003',7500.0000),(4,'C003','2024-11-26','FAC',3,3217618,'FAC004',67890.0000),(5,'C002','2024-11-27','FAC',2,18675125,'FACM005',8700.0000),(6,'C008','2024-11-28','FAC',1,59362265,'FAC006',209784.0000),(7,'C005','2024-11-29','NC',2,89031903,'NC007',4857642.0000),(8,'C005','2024-11-30','FAC',3,65578731,'FAC008',67432.0000),(9,'C001','2024-12-01','FAC',1,41061929,'FAC009',45321.0000),(10,'C007','2024-12-02','FAC',2,32725194,'FAC010',10543.0000),(11,'C004','2024-12-03','FAC',3,24093519,'FAC011',87965.0000),(12,'C009','2024-12-04','NC',1,33709895,'NC012',13965.0000),(13,'C009','2024-12-05','FAC',2,12127586,'FAC013',498763.0000),(14,'C010','2024-12-06','FAC',3,58305448,'FAC014',67890.0000),(15,'C011','2024-12-07','FAC',1,60546475,'FAC015',265785.0000);
/*!40000 ALTER TABLE `facturacioncab` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_validar_estado_empleado
BEFORE INSERT ON FACTURACIONCAB
FOR EACH ROW
BEGIN
  DECLARE estado_empleado VARCHAR(1);
  
  SELECT ESTADO INTO estado_empleado
  FROM EMPLEADO
  WHERE LEGAJO = NEW.LEGAJO;
  
  IF estado_empleado <> 'A' THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El empleado debe estar activo para registrar ventas';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER auditoria_facturacioncab
AFTER UPDATE ON FACTURACIONCAB
FOR EACH ROW
BEGIN
  INSERT INTO auditoria_facturacioncab (
    id_factura, campo_modificado, valor_anterior, valor_nuevo, fecha_modificacion, usuario
  )
  VALUES (
    OLD.ID,
    'IMPORTE',
    OLD.IMPORTE,
    NEW.IMPORTE,
    NOW(),
    CURRENT_USER()
  );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `facturaciondet`
--

DROP TABLE IF EXISTS `facturaciondet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturaciondet` (
  `IDFACTURA` int(11) NOT NULL,
  `DESCRIPCION` varchar(200) DEFAULT NULL,
  `IMPORTE` decimal(14,4) DEFAULT NULL,
  PRIMARY KEY (`IDFACTURA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturaciondet`
--

LOCK TABLES `facturaciondet` WRITE;
/*!40000 ALTER TABLE `facturaciondet` DISABLE KEYS */;
INSERT INTO `facturaciondet` VALUES (1,'PRODUCTOS SELECIONADOS',33670.0000),(2,'BATIDORA',22693.0000),(3,'GALLETAS SURTIDAS',7500.0000),(4,'CARNES MAGRA VARIAS',67890.0000),(5,'EMBUTIDOS',8700.0000),(6,'PRODUCTOS SELECCIONADOS',209784.0000),(7,'GALLETAS SURTIDAS',4857642.0000),(8,'EMBUTIDOS',67432.0000),(9,'CARNES MAGRAS VARIAS ',45321.0000),(10,'LACTEOS VARIOS',10543.0000),(11,'PRODUCTOS SELECCIONADOS',87965.0000),(12,'CARNES MAGRAS VARIAS',13965.0000),(13,'VINOS SELECIONADOS',498763.0000),(14,'VERDURAS SELECCIONADAS',67890.0000),(15,'JUGUETERIA',265785.0000);
/*!40000 ALTER TABLE `facturaciondet` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_verificar_importe_total
BEFORE INSERT ON FACTURACIONDET
FOR EACH ROW
BEGIN
  DECLARE total_detalle DECIMAL(14,4);
  SELECT SUM(IMPORTE) INTO total_detalle
  FROM FACTURACIONDET
  WHERE IDFACTURA = NEW.IDFACTURA;
  IF total_detalle + NEW.IMPORTE > (SELECT IMPORTE FROM FACTURACIONCAB WHERE ID = NEW.IDFACTURA) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El importe total del detalle excede el importe de la cabecera';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `mediodepago`
--

DROP TABLE IF EXISTS `mediodepago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mediodepago` (
  `IDMEDIODEPAGO` int(11) NOT NULL AUTO_INCREMENT,
  `IDTIENDA` varchar(4) DEFAULT NULL,
  `FHVENTA` date DEFAULT NULL,
  `TIPOCOMPROBANTE` varchar(3) DEFAULT NULL,
  `NROCOMPROBATE` varchar(50) DEFAULT NULL,
  `LEGAJO` int(11) NOT NULL,
  `VARIEDAD` int(11) DEFAULT NULL,
  `IMPORTE` decimal(14,4) DEFAULT NULL,
  PRIMARY KEY (`IDMEDIODEPAGO`),
  KEY `FK_MEDIODEPAGO_VARIEADES` (`VARIEDAD`),
  KEY `FK__EMP_MEDIODEPAGO` (`LEGAJO`),
  KEY `FK__TIPOCOMPROBANTE_MEDIODEPAGO` (`TIPOCOMPROBANTE`),
  KEY `FK_TIENDA_MEDIODEPAGO` (`IDTIENDA`),
  CONSTRAINT `FK_MEDIODEPAGO_VARIEADES` FOREIGN KEY (`VARIEDAD`) REFERENCES `variedades` (`ID`),
  CONSTRAINT `FK_TIENDA_MEDIODEPAGO` FOREIGN KEY (`IDTIENDA`) REFERENCES `tienda` (`ID`),
  CONSTRAINT `FK__EMP_MEDIODEPAGO` FOREIGN KEY (`LEGAJO`) REFERENCES `empleado_tienda` (`LEGAJO`),
  CONSTRAINT `FK__TIPOCOMPROBANTE_MEDIODEPAGO` FOREIGN KEY (`TIPOCOMPROBANTE`) REFERENCES `tipocomprobante` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediodepago`
--

LOCK TABLES `mediodepago` WRITE;
/*!40000 ALTER TABLE `mediodepago` DISABLE KEYS */;
INSERT INTO `mediodepago` VALUES (1,'C001','2024-11-23','FAC','FAC001',32456962,1,33670.0000),(2,'C002','2024-11-24','NC','NC002',29854446,6,22693.0000),(3,'C010','2024-11-25','REC','REC003',29854446,1,7500.0000),(4,'C003','2024-11-26','FAC','FAC004',3217618,7,67890.0000),(5,'C002','2024-11-27','FAC','FACM005',18675125,3,8700.0000),(6,'C008','2024-11-28','FAC','FAC006',59362265,2,209784.0000),(7,'C005','2024-11-29','NC','NC007',89031903,1,4857642.0000),(8,'C005','2024-11-30','FAC','FAC008',65578731,7,67432.0000),(9,'C001','2024-12-01','FAC','FAC009',41061929,8,45321.0000),(10,'C007','2024-12-02','FAC','FAC010',32725194,8,10543.0000),(11,'C004','2024-12-03','FAC','FAC011',24093519,3,87965.0000),(12,'C009','2024-12-04','NC','NC012',33709895,5,13965.0000),(13,'C009','2024-12-05','FAC','FAC013',12127586,9,498763.0000),(14,'C010','2024-12-06','FAC','FAC014',58305448,5,67890.0000),(15,'C011','2024-12-07','FAC','FAC015',60546475,7,265785.0000);
/*!40000 ALTER TABLE `mediodepago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mostrar_empleados_tiendas`
--

DROP TABLE IF EXISTS `mostrar_empleados_tiendas`;
/*!50001 DROP VIEW IF EXISTS `mostrar_empleados_tiendas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrar_empleados_tiendas` AS SELECT 
 1 AS `Nombre y Apellido`,
 1 AS `LEGAJOREAL`,
 1 AS `Tienda`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tienda`
--

DROP TABLE IF EXISTS `tienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tienda` (
  `ID` varchar(4) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `ESTADO` varchar(1) NOT NULL,
  `CIUDAD` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tienda`
--

LOCK TABLES `tienda` WRITE;
/*!40000 ALTER TABLE `tienda` DISABLE KEYS */;
INSERT INTO `tienda` VALUES ('C001','Cismo - San Fernando','A','Buenos Aires'),('C002','Cismo - Castelar','A','Buenos Aires'),('C003','Cismo - San Martin','A','Buenos Aires'),('C004','Cismo - Vicente Lopez','A','Buenos Aires'),('C005','Cismo - Palermo','A','Buenos Aires'),('C006','Cismo - San Miguel','A','Buenos Aires'),('C007','Cismo - Norte','A','Buenos Aires'),('C008','Cismo - San luis','A','Buenos Aires'),('C009','Cismo - Pilar','A','Buenos Aires'),('C010','Cismo - Villa Adelina','A','Buenos Aires'),('C011','Cismo - Villa Ballester','A','Buenos Aires'),('C012','Cismo- La Matanza','A','Buenos Aires'),('C013','Cismo - Moron','A','Buenos Aires'),('C014','Cismo - Ituzaigo','A','Buenos Aires'),('C015','Cismo - Santa fe','A','Santa Fe'),('C016','Cismo - Rosario','A','Rosario'),('C017','Cismo - Salta','A','Salta'),('C018','Cismo - Mar del Plata','A','Buenos Aires'),('C019','Cismo - Cordoba','A','Cordoba'),('C020','Cismo -  San Luis','A','San Luis'),('C021','Cismo - Catamarca','A','CATAMARCA');
/*!40000 ALTER TABLE `tienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `tiendas_por_ciudad`
--

DROP TABLE IF EXISTS `tiendas_por_ciudad`;
/*!50001 DROP VIEW IF EXISTS `tiendas_por_ciudad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tiendas_por_ciudad` AS SELECT 
 1 AS `CIUDAD`,
 1 AS `NUMERO_TIENDAS`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tipocomprobante`
--

DROP TABLE IF EXISTS `tipocomprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipocomprobante` (
  `ID` varchar(3) NOT NULL,
  `NOMBRE` varchar(60) DEFAULT NULL,
  `ESTADO` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocomprobante`
--

LOCK TABLES `tipocomprobante` WRITE;
/*!40000 ALTER TABLE `tipocomprobante` DISABLE KEYS */;
INSERT INTO `tipocomprobante` VALUES ('DEV','Devolución','A'),('FAC','Factura','A'),('LIQ','Liquidación','A'),('NC','Nota de Crédito','A'),('ND','Nota de Débito','A'),('PED','Pedido','A'),('PRE','Presupuesto','A'),('REC','Recibo','A'),('REM','Remito','A'),('TKX','Ticket','A');
/*!40000 ALTER TABLE `tipocomprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variedades`
--

DROP TABLE IF EXISTS `variedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variedades` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(60) DEFAULT NULL,
  `ESTADO` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variedades`
--

LOCK TABLES `variedades` WRITE;
/*!40000 ALTER TABLE `variedades` DISABLE KEYS */;
INSERT INTO `variedades` VALUES (1,'Efectivo Pesos ','A'),(2,'Efectivo Dolares','A'),(3,'Tj. de Credito Visa','A'),(4,'Tj de Credito Cabal','A'),(5,'Tj de America Express','A'),(6,'Tj de Credito Nativa','A'),(7,'Tj de Credito Patagonia 365','A'),(8,'Tj de Credito Maestro','A'),(9,'Tj de Credito Naranja Plan Z','A'),(10,'Mercado Pago','A'),(11,'Tj de Debito Visa','A'),(12,'Tj de Debito Maestro','A'),(13,'Tj de Debito Cabal 24','A'),(14,'Modo','A'),(15,'Tj de Credito Naranja','A');
/*!40000 ALTER TABLE `variedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyecto_cismo'
--

--
-- Dumping routines for database 'proyecto_cismo'
--
/*!50003 DROP FUNCTION IF EXISTS `cliente_compro_mes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `cliente_compro_mes`(legajo INT, mes INT, anio INT) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
  DECLARE compro BOOLEAN;
  SELECT COUNT(*) INTO compro
  FROM FACTURACIONCAB
  WHERE LEGAJO = legajo
    AND MONTH(FECHAVENTA) = mes
    AND YEAR(FECHAVENTA) = anio;
  RETURN compro > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `es_medio_pago_activo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `es_medio_pago_activo`(id_variedad INT) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
  DECLARE estado_variedad VARCHAR(1) ;
  SELECT ESTADO INTO estado_variedad
  FROM VARIEDADES
  WHERE ID = id_variedad;
  RETURN estado_variedad = 'A'; --  'A' significa activo
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `total_diario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `total_diario`(fecha_consulta DATE) RETURNS decimal(14,4)
    READS SQL DATA
    DETERMINISTIC
BEGIN
  DECLARE total_diario DECIMAL(14,2);
  SELECT SUM(IMPORTE) INTO total_diario
  FROM FACTURACIONCAB
  WHERE FECHAVENTA = fecha_consulta;
  RETURN total_diario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_factura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_factura`(
    IN p_idtienda VARCHAR(4),
    IN p_fechaventa DATE,
    IN p_tipocomprobante VARCHAR(3),
    IN p_caja INT,
    IN p_legajo INT,
    IN p_nrocomprobante VARCHAR(20),
    IN p_importe_cabecera DECIMAL(14,4),
    IN p_descripcion VARCHAR(200),
    IN p_importe_detalle DECIMAL(14,4)
)
BEGIN
    START TRANSACTION;

    -- Insertar en la tabla cabecera
    INSERT INTO FACTURACIONCAB (IDTIENDA, FECHAVENTA, TIPOCOMPROBANTE, CAJA, LEGAJO, NROCOMPROBANTE, IMPORTE)
    VALUES (p_idtienda, p_fechaventa, p_tipocomprobante, p_caja, p_legajo, p_nrocomprobante, p_importe_cabecera);

    -- Obtener el ID de la factura recién insertada
    SET @id_factura = LAST_INSERT_ID();

    -- Insertar en la tabla detalle
    INSERT INTO FACTURACIONDET (IDFACTURA, DESCRIPCION, IMPORTE)
    VALUES (@id_factura, p_descripcion, p_importe_detalle);

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrar_factura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_factura`(
    IN p_id_tienda VARCHAR(4),
    IN p_fecha_venta DATE,
    IN p_tipo_comprobante VARCHAR(3),
    IN p_caja INT,
    IN p_legajo INT,
    IN p_nro_comprobante VARCHAR(20),
    IN p_importe_total DECIMAL(14,4),
    IN p_detalles JSON
)
BEGIN
    DECLARE v_id_factura INT;

    -- Insertamos la cabecera de la factura
    INSERT INTO FACTURACIONCAB (IDTIENDA, FECHAVENTA, TIPOCOMPROBANTE, CAJA, LEGAJO, NROCOMPROBANTE, IMPORTE)
    VALUES (p_id_tienda, p_fecha_venta, p_tipo_comprobante, p_caja, p_legajo, p_nro_comprobante, p_importe_total);

    -- Obtenemos el ID de la factura recién insertada
    SET v_id_factura = LAST_INSERT_ID();

    -- Insertamos los detalles de la factura
    INSERT INTO FACTURACIONDET (IDFACTURA, DESCRIPCION, IMPORTE)
    SELECT JSON_EXTRACT(p_detalles, CONCAT('$[', idx, '].descripcion')),
           JSON_EXTRACT(p_detalles, CONCAT('$[', idx, '].importe'))
    FROM (SELECT @i := @i + 1 AS idx FROM (SELECT 1 UNION ALL SELECT 1) x, (SELECT 1 UNION ALL SELECT 1) y, (SELECT 1 UNION ALL SELECT 1) z) a
    WHERE @i <= JSON_LENGTH(p_detalles);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrar_medio_pago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_medio_pago`(
    IN p_id_tienda VARCHAR(4),
    IN p_fecha_venta DATE,
    IN p_tipo_comprobante VARCHAR(3),
    IN p_nro_comprobante VARCHAR(50),
    IN p_legajo INT,
    IN p_variedad INT,
    IN p_importe DECIMAL(14,4)
)
BEGIN
    DECLARE v_estado_variedad VARCHAR(1);

    -- Verificamos si la variedad (método de pago) existe y está activa
    SELECT ESTADO INTO v_estado_variedad
    FROM VARIEDADES
    WHERE ID = p_variedad;

    IF v_estado_variedad IS NULL OR v_estado_variedad <> 'A' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La variedad de pago no existe o está inactiva';
    END IF;

    -- Insertamos el registro de medio de pago
    INSERT INTO MEDIODEPAGO (IDTIENDA, FHVENTA, TIPOCOMPROBANTE, NROCOMPROBATE, LEGAJO, VARIEDAD, IMPORTE)
    VALUES (p_id_tienda, p_fecha_venta, p_tipo_comprobante, p_nro_comprobante, p_legajo, p_variedad, p_importe);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrar_tienda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_tienda`(
    IN p_id VARCHAR(4),
    IN p_nombre VARCHAR(50),
    IN p_estado VARCHAR(1),
    IN p_ciudad VARCHAR(100)
)
BEGIN
    DECLARE tienda_existe INT;

    -- Verificar si la tienda ya existe
    SELECT COUNT(*) INTO tienda_existe
    FROM TIENDA
    WHERE ID = p_id;

    IF tienda_existe > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La tienda ya existe';
    ELSE
        -- Insertar la nueva tienda
        INSERT INTO TIENDA (ID, NOMBRE, ESTADO, CIUDAD)
        VALUES (p_id, p_nombre, p_estado, p_ciudad);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `factura_completa`
--

/*!50001 DROP VIEW IF EXISTS `factura_completa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `factura_completa` AS select `fc`.`ID` AS `ID`,`fc`.`FECHAVENTA` AS `FECHAVENTA`,`fc`.`TIPOCOMPROBANTE` AS `TIPOCOMPROBANTE`,`fd`.`DESCRIPCION` AS `DESCRIPCION`,`fd`.`IMPORTE` AS `IMPORTE` from (`facturacioncab` `fc` join `facturaciondet` `fd` on(`fc`.`ID` = `fd`.`IDFACTURA`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mostrar_empleados_tiendas`
--

/*!50001 DROP VIEW IF EXISTS `mostrar_empleados_tiendas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrar_empleados_tiendas` AS select `e`.`APENOM` AS `Nombre y Apellido`,`e`.`LEGAJOREAL` AS `LEGAJOREAL`,`et`.`IDTIENDA` AS `Tienda` from (`empleado` `e` join `empleado_tienda` `et` on(`e`.`ID` = `et`.`ID`)) where `e`.`ESTADO` = 'A' and `et`.`ESTADO` = 'A' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tiendas_por_ciudad`
--

/*!50001 DROP VIEW IF EXISTS `tiendas_por_ciudad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tiendas_por_ciudad` AS select `tienda`.`CIUDAD` AS `CIUDAD`,count(0) AS `NUMERO_TIENDAS` from `tienda` group by `tienda`.`CIUDAD` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-24 22:28:52
