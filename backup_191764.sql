-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.40-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para transporte_municipal
CREATE DATABASE IF NOT EXISTS `transporte_municipal` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `transporte_municipal`;

-- Volcando estructura para tabla transporte_municipal.ge_ciudad
CREATE TABLE IF NOT EXISTS `ge_ciudad` (
  `CIUDAD_ID` int(5) NOT NULL COMMENT 'Codigo de la ciudad',
  `DESCRIPCION` varchar(100) NOT NULL COMMENT 'Descripcion de la ciudad',
  `DEPARTAMENTO_ID` int(5) NOT NULL COMMENT 'Codigo del departamento',
  PRIMARY KEY (`CIUDAD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se guarda la informacion de la ciudad';

-- Volcando datos para la tabla transporte_municipal.ge_ciudad: ~0 rows (aproximadamente)
DELETE FROM `ge_ciudad`;
/*!40000 ALTER TABLE `ge_ciudad` DISABLE KEYS */;
INSERT INTO `ge_ciudad` (`CIUDAD_ID`, `DESCRIPCION`, `DEPARTAMENTO_ID`) VALUES
	(5001, 'medellin', 5),
	(5002, 'abejorral', 5),
	(11001, 'bogota', 11),
	(76001, 'cali', 76),
	(76020, 'alcala', 76),
	(76036, 'andalucia', 76),
    (76037, 'cucuta', 54),
    (76038, 'ocaña', 54),
    (76040, 'arauca', 60),
    (76043, 'bucaramanga', 56),
    (76045, 'sincelejo', 64),
    (76046, 'tolu', 64),
    (76047, 'santa marta', 7),
    (76049, 'cartagena', 13),
    (76051, 'monteria', 15),
	(76053, 'valledupar', 58),
    (76054, 'aguachica', 58),
    (76056, 'riohacha', 10),
    (76058, 'popayan', 69),
    (76061, 'quidbo', 32),
    (76063, 'manizales', 17),
    (76065, 'neiva', 42),
    (76067, 'pereira', 29),
    (76075, 'armenia', 27),
    (76079, 'ibague', 20),
    (76100, 'bolivar', 76);
    
/*!40000 ALTER TABLE `ge_ciudad` ENABLE KEYS */;

-- Volcando estructura para tabla transporte_municipal.ge_departamento
CREATE TABLE IF NOT EXISTS `ge_departamento` (
  `DEPARTAMENTO_ID` int(5) NOT NULL COMMENT 'Codigo del departamento',
  `DESCRIPCION` varchar(100) NOT NULL COMMENT 'Descripcion del departamento',
  PRIMARY KEY (`DEPARTAMENTO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se guarda la informacion del departamento';

-- Volcando datos para la tabla transporte_municipal.ge_departamento: ~0 rows (aproximadamente)
DELETE FROM `ge_departamento`;
/*!40000 ALTER TABLE `ge_departamento` DISABLE KEYS */;
INSERT INTO `ge_departamento` (`DEPARTAMENTO_ID`, `DESCRIPCION`) VALUES
	(5, 'antioquia'),
    (7, 'magdalena'),
	(8, 'atlantico'),
    (10, 'la guajira'),
	(11, 'bogota'),
	(13, 'bolivar'),
    (15, 'cordoba'),
	(17, 'caldas'),
    (20, 'tolima'),
	(25, 'cundinamarca'),
    (27, 'quindio'),
    (29, 'risaralda'),
    (32, 'choco'),
    (35, 'meta'),
    (38, 'guaviare'),
    (42, 'huila'),
    (46, 'casanare'),
	(54, 'norte de santander'),
    (56, 'santander'),
    (58, 'cesar'),
    (60, 'arauca'),
    (62, 'boyaca'),
    (64, 'sucre'),
    (67, 'vaupes'),
    (69, 'cauca'),
	(76, 'valle del cauca');
/*!40000 ALTER TABLE `ge_departamento` ENABLE KEYS */;

-- Volcando estructura para tabla transporte_municipal.marca_id
CREATE TABLE IF NOT EXISTS `marca_id` (
  `MARCA_ID` int(15) NOT NULL COMMENT 'Codigo de la marca del coche',
  `DESCRIPCION` varchar(100) NOT NULL COMMENT 'Descripcion de la marca de los coches',
  PRIMARY KEY (`MARCA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se guarda la marca de los coches';

-- Volcando datos para la tabla transporte_municipal.marca_id: ~0 rows (aproximadamente)
DELETE FROM `marca_id`;
/*!40000 ALTER TABLE `marca_id` DISABLE KEYS */;
INSERT INTO `marca_id` (`MARCA_ID`, `DESCRIPCION`) VALUES
	(1, 'chevrolet'),
	(2, 'dodge'),
    (3, 'mercedes'),
    (4, 'renault'),
    (5, 'hyundai'),
    (6, 'kia'),
    (7, 'toyota'),
    (8, 'mazda');
/*!40000 ALTER TABLE `marca_id` ENABLE KEYS */;

-- Volcando estructura para tabla transporte_municipal.tm_coche
CREATE TABLE IF NOT EXISTS `tm_coche` (
  `COCHE_ID` int(15) NOT NULL COMMENT 'Codigo del coche',
  `PLACA_COCHE` varchar(6) NOT NULL COMMENT 'Placa del coche',
  `GRUPO_COCHE_ID` int(15) NOT NULL COMMENT 'Grupo asignado al coche',
  `OFICINA_ID` int(15) NOT NULL COMMENT 'Codigo oficina transporte municipal',
  PRIMARY KEY (`COCHE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se guarda la informacion de los coches';

-- Volcando datos para la tabla transporte_municipal.tm_coche: ~0 rows (aproximadamente)
DELETE FROM `tm_coche`;
/*!40000 ALTER TABLE `tm_coche` DISABLE KEYS */;
INSERT INTO `tm_coche` (`COCHE_ID`, `PLACA_COCHE`, `GRUPO_COCHE_ID`, `OFICINA_ID`) VALUES
	(1, 'vhc123', 1, 1),
	(2, 'vhc124', 2, 5),
	(3, 'vhc125', 3, 5),
	(4, 'vfy126', 4, 8),
    (5, 'ghj169', 4, 6),
    (6, 'kih154', 2, 7),
    (7, 'oph546', 2, 2),
    (8, 'uyt187', 1, 2),
    (9, 'dsf342', 4, 1),
    (10, 'ret454', 3, 3),
    (11, 'fdg334', 3, 4),
    (12, 'dde225', 2, 5),
    (13, 'vch126', 1, 4),
    (14, 'wer646', 1, 1),
    (15, 'rtg332', 2, 8),
    (16, 'dsx441', 2, 6),
    (17, 'sst217', 3, 6),
	(18, 'ver727', 1, 7);
/*!40000 ALTER TABLE `tm_coche` ENABLE KEYS */;

-- Volcando estructura para tabla transporte_municipal.tm_combustible
CREATE TABLE IF NOT EXISTS `tm_combustible` (
  `COMBUSTIBLE_ID` int(15) NOT NULL COMMENT 'Codigo tipo de combustible',
  `DESCRIPCION` varchar(100) NOT NULL COMMENT 'Descripcion del tipo de combustible',
  PRIMARY KEY (`COMBUSTIBLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se guarda el tipo de combustible';

-- Volcando datos para la tabla transporte_municipal.tm_combustible: ~0 rows (aproximadamente)
DELETE FROM `tm_combustible`;
/*!40000 ALTER TABLE `tm_combustible` DISABLE KEYS */;
INSERT INTO `tm_combustible` (`COMBUSTIBLE_ID`, `DESCRIPCION`) VALUES
	(1, 'diesel'),
	(2, 'acpm'),
	(3, 'extra'),
	(4, 'corriente');
/*!40000 ALTER TABLE `tm_combustible` ENABLE KEYS */;

-- Volcando estructura para tabla transporte_municipal.tm_conductor
CREATE TABLE IF NOT EXISTS `tm_conductor` (
  `DOCUMENTO_CONDUCTOR_ID` varchar(25) NOT NULL COMMENT 'Documento de identidad del conductor',
  `NOMBRE_CONDUCTOR` varchar(250) NOT NULL COMMENT 'Nombre del conductor',
  `DIRECCION_CONDUCTOR` varchar(100) DEFAULT NULL COMMENT 'Direccion del conductor',
  `TELEFONO_CONDUCTOR` int(10) DEFAULT NULL COMMENT 'Telefono de contacto del conductor',
  PRIMARY KEY (`DOCUMENTO_CONDUCTOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se guarda la informacion basica del conductor';

-- Volcando datos para la tabla transporte_municipal.tm_conductor: ~0 rows (aproximadamente)
DELETE FROM `tm_conductor`;
/*!40000 ALTER TABLE `tm_conductor` DISABLE KEYS */;
INSERT INTO `tm_conductor` (`DOCUMENTO_CONDUCTOR_ID`, `NOMBRE_CONDUCTOR`, `DIRECCION_CONDUCTOR`, `TELEFONO_CONDUCTOR`) VALUES
	('102718', 'carlos andres jaime', 'calle 123', 3124567489),
	('295265', 'andres fernando rincon', 'carrera 123', 3159587354),
	('366481', 'federico fernando alvartado', 'calle 9', 3212555356),
	('475698', 'gabriel andres gutierrez', 'cra 444', 3146432458),
	('595484', 'luis camilo jimenez', 'cra 217', 3125451250),
    ('622354', 'carlos alfonso rodriguez', 'cll 5-22', 3154589561),
    ('721856', 'samuel barbosa', 'cll 23 8-55', 3162145781),
    ('851659', 'david jaime', 'cra 7 45', 3235469258),
    ('938561', 'sergio luis romero', 'transv 8 7-54', 3132458451),
    ('105152', 'jaime andres ortiz', 'calle 8 3-34', 3147896521),
    ('111516', 'omar barbosa', 'cra 5 5-17', 3186523159),
    ('125151', 'luis alberto vergel', 'transv 9 6-82', 3152154683),
    ('131515', 'edgar orlando alvarez', 'transv 5 5-45', 3148521973),
    ('149266', 'leonardo reyes', 'cra 8 1-45', 3175421964),
    ('155161', 'pablo andres carrillo', 'calle 7 5-12', 3162139856),
    ('168984', 'jesus david contreras', 'cra 12 3-12', 3102100645),
    ('173216', 'jorge eliecer alvarado', 'transv 5 1-52', 3226546522),
    ('189541', 'albeiro casallas', 'calle 3 5-24', 3152145682),
    ('191265', 'daniel orozco', 'calle 8 9-15', 3152154236),
    ('209565', 'camilo bayona', 'cra 56 8-88', 3201546525),
    ('213894', 'orlando armenta', 'calle 8 4-17', 3230215757),
    ('229561', 'gabriel andres', 'cra 444', 3154643248),
    ('233215', 'eriberto duran', 'transv 33 2-15', 3214587895),
    ('241561', 'manuel cañizares', 'calle 5 9-82', 3125462314),
    ('258789', 'elver galeano', 'cra 6 7-12', 3196542311),
	('266541', 'carlos perez', 'calle 5', 3154635546);
/*!40000 ALTER TABLE `tm_conductor` ENABLE KEYS */;

-- Volcando estructura para tabla transporte_municipal.tm_grupo_coche
CREATE TABLE IF NOT EXISTS `tm_grupo_coche` (
  `GRUPO_COCHE_ID` int(15) NOT NULL COMMENT 'Grupo asignado al coche',
  `TIPO_COCHE_ID` int(10) NOT NULL COMMENT 'Grupo al cual pertenece el coche (A,B,C,D,E)',
  `TIPO_SERVICIO_ID` varchar(25) NOT NULL COMMENT 'Tipo de servicio asignado al coche',
  `MARCA_ID` int(15) NOT NULL COMMENT 'Codigo de la marca del coche',
  `MODELO_ID` varchar(100) NOT NULL COMMENT 'Modelo del Coche',
  `NUMERO_PASAJEROS` int(3) NOT NULL COMMENT 'Capacidad de pasajeros',
  `COMBUSTIBLE_ID` int(15) NOT NULL COMMENT 'Codigo tipo de combustible',
  PRIMARY KEY (`GRUPO_COCHE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se relacionan las caracteristicas del coche';

-- Volcando datos para la tabla transporte_municipal.tm_grupo_coche: ~0 rows (aproximadamente)
DELETE FROM `tm_grupo_coche`;
/*!40000 ALTER TABLE `tm_grupo_coche` DISABLE KEYS */;
INSERT INTO `tm_grupo_coche` (`GRUPO_COCHE_ID`, `TIPO_COCHE_ID`, `TIPO_SERVICIO_ID`, `MARCA_ID`, `MODELO_ID`, `NUMERO_PASAJEROS`, `COMBUSTIBLE_ID`) VALUES
	(1, 1, 'gold', 1, '1', 20, 1),
	(2, 1, 'duo', 2, '2', 25, 2),
    (3, 2, 'vans', 3, '3', 9, 1),
    (4, 3, 'directo', 4, '4', 4, 4);
/*!40000 ALTER TABLE `tm_grupo_coche` ENABLE KEYS */;

-- Volcando estructura para tabla transporte_municipal.tm_modelo
CREATE TABLE IF NOT EXISTS `tm_modelo` (
  `MODELO_ID` int(100) NOT NULL COMMENT 'Modelo del Coche',
  `DESCRIPCION` varchar(100) NOT NULL COMMENT 'Descripcion del modelo',
  PRIMARY KEY (`MODELO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se guarda el modelo de los coches';

-- Volcando datos para la tabla transporte_municipal.tm_modelo: ~0 rows (aproximadamente)
DELETE FROM `tm_modelo`;
/*!40000 ALTER TABLE `tm_modelo` DISABLE KEYS */;
INSERT INTO `tm_modelo` (`MODELO_ID`, `DESCRIPCION`) VALUES
	(1, 'gran force'),
    (2, 'sail'),
    (3, 'fiesta'),
    (4, 'logan'),
    (5, 'sandero'),
    (6, 'spark gt'),
    (7, 'of 1621'),
    (8, 'lo 916'),
    (9, 'county'),
	(10, 'captiva');
/*!40000 ALTER TABLE `tm_modelo` ENABLE KEYS */;

-- Volcando estructura para tabla transporte_municipal.tm_oficina
CREATE TABLE IF NOT EXISTS `tm_oficina` (
  `OFICINA_ID` int(15) NOT NULL COMMENT 'Codigo oficina transporte municipal',
  `CIUDAD_ID` int(5) NOT NULL COMMENT 'Codigo de la ciudad',
  `DEPARTAMENTO_ID` int(5) NOT NULL COMMENT 'Codigo del departamento',
  `CALLE_OFICINA` int(5) NOT NULL COMMENT 'Calle donde se ubica la oficina',
  `CARRERA_OFICINA` int(5) NOT NULL COMMENT 'Carrera donde se ubica la oficina',
  `NUMERO_OFICINA` int(5) NOT NULL COMMENT 'Numero de la oficina',
  `CODIGO_OFICINA` int(5) NOT NULL COMMENT 'Codigo asignado a la oficina',
  `TELEFONO_OFICINA` int(10) DEFAULT NULL COMMENT 'Telefono de la oficina',
  PRIMARY KEY (`OFICINA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se guarda la información principal de las oficin';

-- Volcando datos para la tabla transporte_municipal.tm_oficina: ~0 rows (aproximadamente)
DELETE FROM `tm_oficina`;
/*!40000 ALTER TABLE `tm_oficina` DISABLE KEYS */;
INSERT INTO `tm_oficina` (`OFICINA_ID`, `CIUDAD_ID`, `DEPARTAMENTO_ID`, `CALLE_OFICINA`, `CARRERA_OFICINA`, `NUMERO_OFICINA`, `CODIGO_OFICINA`, `TELEFONO_OFICINA`) VALUES
	(1, 76001, 76, 9, 45, 1, 1, 8888888),
	(2, 11001, 11, 65, 44, 2, 2, 9999999),
    (3, 76043, 56, 17, 15, 3, 3, 9956639),
    (4, 5001, 5, 53, 21, 4, 4, 5665339),
    (5, 76037, 54, 23, 15, 5, 5, 5764422),
    (6, 76047, 7, 12, 35, 6, 6, 6521748),
    (7, 76053, 58, 15, 14, 7, 7, 7456261),
    (8, 76063, 17, 25, 42, 8, 8, 4526565);
/*!40000 ALTER TABLE `tm_oficina` ENABLE KEYS */;

-- Volcando estructura para tabla transporte_municipal.tm_tipo_coche
CREATE TABLE IF NOT EXISTS `tm_tipo_coche` (
  `TIPO_COCHE_ID` int(1) NOT NULL COMMENT 'Grupo al cual pertenece el coche (A,B,C,D,E)',
  `DESCRIPCION` varchar(100) NOT NULL COMMENT 'Descripcion del grupo de coche',
  PRIMARY KEY (`TIPO_COCHE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se guarda el grupo del coche';

-- Volcando datos para la tabla transporte_municipal.tm_tipo_coche: ~0 rows (aproximadamente)
DELETE FROM `tm_tipo_coche`;
/*!40000 ALTER TABLE `tm_tipo_coche` DISABLE KEYS */;
INSERT INTO `tm_tipo_coche` (`TIPO_COCHE_ID`, `DESCRIPCION`) VALUES
	(1, 'bus'),
	(2, 'buseta'),
    (3, 'automovil');
/*!40000 ALTER TABLE `tm_tipo_coche` ENABLE KEYS */;

-- Volcando estructura para tabla transporte_municipal.tm_tipo_recorrido
CREATE TABLE IF NOT EXISTS `tm_tipo_recorrido` (
  `TIPO_RECORRIDO_ID` int(15) NOT NULL COMMENT 'Codigo tipo de recorrido',
  `DESCRIPCION` varchar(100) NOT NULL COMMENT 'Descripcion del recorrido',
  PRIMARY KEY (`TIPO_RECORRIDO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se guarda el tipo del recorrido';

-- Volcando datos para la tabla transporte_municipal.tm_tipo_recorrido: ~0 rows (aproximadamente)
DELETE FROM `tm_tipo_recorrido`;
/*!40000 ALTER TABLE `tm_tipo_recorrido` DISABLE KEYS */;
INSERT INTO `tm_tipo_recorrido` (`TIPO_RECORRIDO_ID`, `DESCRIPCION`) VALUES
	(1, 'departamental'),
	(2, 'interdepartamental');
/*!40000 ALTER TABLE `tm_tipo_recorrido` ENABLE KEYS */;

-- Volcando estructura para tabla transporte_municipal.tm_tipo_servicio
CREATE TABLE IF NOT EXISTS `tm_tipo_servicio` (
  `TIPO_SERVICIO_ID` varchar(25) NOT NULL COMMENT 'Tipo de servicio asignado al coche',
  `DESCRIPCION` varchar(100) NOT NULL COMMENT 'Descripcion del servicio',
  PRIMARY KEY (`TIPO_SERVICIO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se guarda el servicio del coche';

-- Volcando datos para la tabla transporte_municipal.tm_tipo_servicio: ~0 rows (aproximadamente)
DELETE FROM `tm_tipo_servicio`;
/*!40000 ALTER TABLE `tm_tipo_servicio` DISABLE KEYS */;
INSERT INTO `tm_tipo_servicio` (`TIPO_SERVICIO_ID`, `DESCRIPCION`) VALUES
	('directo', 'directo'),
	('duo bus', 'duo bus'),
	('gold', 'gold'),
	('vans', 'vans');
/*!40000 ALTER TABLE `tm_tipo_servicio` ENABLE KEYS */;

-- Volcando estructura para tabla transporte_municipal.tm_viaje
CREATE TABLE IF NOT EXISTS `tm_viaje` (
  `VIAJE_ID` int(15) NOT NULL COMMENT 'Codigo del viaje',
  `DOCUMENTO_CONDUCTOR_ID` int(25) NOT NULL COMMENT 'Documento de identidad del conductor',
  `SALIDA` int(5) NOT NULL COMMENT 'Codigo de la ciudad de salida',
  `DESTINO` int(5) NOT NULL COMMENT 'Codigo de la ciudad de destino',
  `KM_RECORRIDOS` int(15) DEFAULT NULL COMMENT 'Kilometros recorridos en el viaje',
  `TIPO_RECORRIDO_ID` int(15) DEFAULT NULL COMMENT 'Codigo tipo de recorrido',
  `COCHE_ID` int(15) NOT NULL COMMENT 'Codigo del coche',
  PRIMARY KEY (`VIAJE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se guardan los viajes realizados';

-- Volcando datos para la tabla transporte_municipal.tm_viaje: ~0 rows (aproximadamente)
DELETE FROM `tm_viaje`;
/*!40000 ALTER TABLE `tm_viaje` DISABLE KEYS */;
INSERT INTO `tm_viaje` (`VIAJE_ID`, `DOCUMENTO_CONDUCTOR_ID`, `SALIDA`, `DESTINO`, `KM_RECORRIDOS`, `TIPO_RECORRIDO_ID`, `COCHE_ID`) VALUES
	(1, '102718', 76001, 11001, 600, 1, 1),
    (2, '295265', 76043, 76053, 493, 2, 4),
    (3, '366481', 5001, 11001, 323, 2, 3),
    (4, '475698', 76047, 76049, 254, 2, 2),
    (5, '595484', 76065, 76067, 135, 2, 15),
    (6, '622354', 76051, 76045, 349, 2, 12),
    (7, '721856', 76063, 76067, 371, 2, 16),
    (8, '851659', 76001, 76020, 70, 1, 1),
    (9, '938561', 76079, 76075, 321, 2, 9),
    (10, '10515', 76043, 76037, 268, 2, 5),
    (11, '11151', 76040, 11001, 526, 2, 3),
    (12, '12515', 76063, 76001, 499, 2, 7),
    (13, '13151', 76061, 76056, 869, 2, 13),
    (14, '14926', 76043, 76053, 493, 2, 4),
    (15, '15516', 76045, 76046, 158, 1, 2),
    (16, '16898', 76049, 76053, 362, 2, 14),
    (17, '17321', 76058, 11001, 285, 2, 8),
    (18, '18954', 76037, 76038, 215, 1, 4),
    (19, '19126', 76040, 76040, 360, 2, 15),
    (20, '20956', 76045, 76053, 454, 2, 2),
    (21, '21389', 76079, 76075, 321, 2, 9),
    (22, '22956', 76063, 76001, 499, 2, 7),
    (23, '23321', 76051, 76045, 349, 2, 12),
    (24, '24156', 76040, 11001, 526, 2, 3),
    (25, '25878', 76065, 76067, 135, 2, 15),
	(26, '26654', 11001, 76001, 600, 2, 2);
/*!40000 ALTER TABLE `tm_viaje` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
