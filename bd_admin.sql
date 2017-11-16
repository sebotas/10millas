/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50635
 Source Host           : localhost:3306
 Source Schema         : bd_admin

 Target Server Type    : MySQL
 Target Server Version : 50635
 File Encoding         : 65001

 Date: 16/11/2017 15:47:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for almacen
-- ----------------------------
DROP TABLE IF EXISTS `almacen`;
CREATE TABLE `almacen`  (
  `id_almacen` int(20) NOT NULL AUTO_INCREMENT,
  `id_repuesto` int(20) NOT NULL,
  `id_sucursal` int(20) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `dateReg` datetime(0) NOT NULL,
  `status` enum('Activo','Inactivo') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_almacen`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of almacen
-- ----------------------------
INSERT INTO `almacen` VALUES (10, 10, 1, 23, '2017-08-10 22:22:29', 'Activo');
INSERT INTO `almacen` VALUES (12, 12, 2, 23, '2017-08-09 18:56:40', 'Activo');
INSERT INTO `almacen` VALUES (13, 13, 3, 4324, '2017-08-09 18:56:40', 'Activo');
INSERT INTO `almacen` VALUES (15, 15, 4, 45, '2017-08-10 22:22:04', 'Activo');
INSERT INTO `almacen` VALUES (16, 16, 2, 34, '2017-08-10 22:20:36', 'Activo');
INSERT INTO `almacen` VALUES (17, 17, 5, 34, '2017-10-24 01:23:26', 'Activo');
INSERT INTO `almacen` VALUES (18, 18, 2, 66, '2017-10-11 17:30:41', 'Activo');

-- ----------------------------
-- Table structure for auxImg
-- ----------------------------
DROP TABLE IF EXISTS `auxImg`;
CREATE TABLE `auxImg`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `size` float(15, 2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auxImgEmp
-- ----------------------------
DROP TABLE IF EXISTS `auxImgEmp`;
CREATE TABLE `auxImgEmp`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `size` float(15, 2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria`  (
  `id_categoria` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `size` float(15, 2) NOT NULL,
  `dateReg` datetime(0) NOT NULL,
  `status` enum('Activo','Inactivo') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_categoria`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES (1, 'Motores', 'Motor para tractor', '4806[1].jpg', 54778.00, '2017-08-10 12:30:11', 'Activo');
INSERT INTO `categoria` VALUES (2, 'Transmision', 'Transmision', 'Portadas_de_Bleach_para_facebook (4).jpg', 59001.00, '2017-08-10 16:13:28', 'Activo');
INSERT INTO `categoria` VALUES (4, 'Tren de Fuerza', 'Tren de Fuerza', '19A145A20.jpg', 106993.00, '2017-08-10 16:25:11', 'Activo');
INSERT INTO `categoria` VALUES (5, 'Hidraulica ', 'Hidraulica ', '[animepaper.net]wallpaper-standard-anime-afro-samurai-no-2-46643-ed9e-preview-6dd496f7.jpg', 63548.00, '2017-08-10 16:19:14', 'Activo');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id_chat` int(100) NOT NULL,
  `chatID` int(100) NOT NULL,
  `sendFrom` int(100) NOT NULL,
  `sendTo` int(100) NOT NULL,
  `message` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dateSend` datetime(0) NOT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (0, 157780, 123456, 34324, 'hola', '2017-09-25 01:05:35');
INSERT INTO `chat` VALUES (0, 157780, 123456, 34324, 'hola', '2017-09-25 01:05:37');
INSERT INTO `chat` VALUES (0, 157780, 34324, 123456, 'que tal', '2017-09-25 01:05:40');
INSERT INTO `chat` VALUES (0, 157780, 34324, 123456, 'que tal', '2017-09-25 01:05:40');
INSERT INTO `chat` VALUES (0, 580245, 123456, 456789, 'holA', '2017-09-25 01:32:20');
INSERT INTO `chat` VALUES (0, 157780, 123456, 34324, 'hola', '2017-09-25 01:34:50');
INSERT INTO `chat` VALUES (0, 157780, 123456, 34324, 'hola', '2017-09-25 01:34:51');
INSERT INTO `chat` VALUES (0, 157780, 34324, 123456, 'que tal', '2017-09-25 01:35:05');
INSERT INTO `chat` VALUES (0, 157780, 34324, 123456, 'que tal', '2017-09-25 01:35:05');
INSERT INTO `chat` VALUES (0, 157780, 34324, 123456, 'asdasd', '2017-09-25 01:35:12');
INSERT INTO `chat` VALUES (0, 157780, 34324, 123456, 'asdasd', '2017-09-25 01:35:12');
INSERT INTO `chat` VALUES (0, 580245, 456789, 123456, 'dsad', '2017-09-25 01:35:29');
INSERT INTO `chat` VALUES (0, 157780, 123456, 34324, 'funciona', '2017-09-25 01:36:07');
INSERT INTO `chat` VALUES (0, 157780, 123456, 34324, '1236', '2017-09-25 01:36:34');
INSERT INTO `chat` VALUES (0, 580245, 456789, 123456, 'que tal', '2017-09-25 01:39:05');
INSERT INTO `chat` VALUES (0, 580245, 456789, 123456, 'funciona', '2017-09-25 01:40:33');

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente`  (
  `id_cliente` int(20) NOT NULL,
  `depa` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombre` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apP` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apM` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `size` float(15, 2) NOT NULL,
  `dateNac` date NOT NULL,
  `phone` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `celular` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `direccion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `numero` int(20) NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coorX` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coorY` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `obser` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dateReg` datetime(0) NOT NULL,
  `statusEmp` enum('Activo','Inactivo') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Activo',
  PRIMARY KEY (`id_cliente`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES (122584, 'LP', 'israel', 'tapia', 'andrade', '', 0.00, '0000-00-00', '1545124', '', '', 0, 'gf@gmail.com', '', '', '', '0000-00-00 00:00:00', 'Activo');

-- ----------------------------
-- Table structure for compra
-- ----------------------------
DROP TABLE IF EXISTS `compra`;
CREATE TABLE `compra`  (
  `id_compra` int(20) NOT NULL AUTO_INCREMENT,
  `id_empleado` int(20) NOT NULL,
  `id_cliente` int(20) NOT NULL,
  `dateReg` datetime(0) NOT NULL,
  `subTotal` float(15, 2) NOT NULL,
  `descuento` int(15) NOT NULL,
  `total` float(15, 2) NOT NULL,
  `obser` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` enum('Activo','Inactivo') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_compra`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of compra
-- ----------------------------
INSERT INTO `compra` VALUES (1, 123456, 0, '2017-10-30 04:27:37', 6472.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (2, 123456, 0, '2017-10-30 04:41:02', 4392.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (3, 123456, 0, '2017-10-30 04:42:26', 2028.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (4, 123456, 0, '2017-10-30 04:54:38', 936.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (5, 123456, 0, '2017-10-30 04:55:39', 2808.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (6, 123456, 122584, '2017-10-30 06:00:04', 1248.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (7, 123456, 0, '2017-10-30 23:41:46', 936.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (8, 123456, 0, '2017-10-30 23:43:44', 1404.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (9, 123456, 0, '2017-10-30 23:52:11', 1794.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (10, 123456, 0, '2017-10-30 23:53:42', 1794.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (11, 123456, 0, '2017-10-30 23:55:23', 5148.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (12, 123456, 0, '2017-10-30 23:57:10', 2340.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (13, 123456, 0, '2017-10-31 00:00:58', 936.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (14, 123456, 0, '2017-10-31 13:17:04', 2574.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (15, 123456, 0, '2017-10-31 13:18:00', 1872.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (16, 123456, 122584, '2017-10-31 16:33:43', 936.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (17, 123456, 0, '2017-11-01 00:32:49', 687.96, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (18, 123456, 0, '2017-11-01 00:36:43', 156.00, 0, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (19, 123456, 0, '2017-11-01 00:40:02', 78.00, 1, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (20, 123456, 0, '2017-11-01 00:42:11', 858.00, 2, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (21, 123456, 0, '2017-11-01 00:45:08', 1170.00, 5, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (22, 123456, 0, '2017-11-01 00:46:56', 468.00, 1, 0.00, '', 'Activo');
INSERT INTO `compra` VALUES (23, 123456, 0, '2017-11-01 00:47:44', 624.00, 2, 611.52, '', 'Activo');
INSERT INTO `compra` VALUES (24, 123456, 0, '2017-11-01 00:57:05', 234.00, 1, 231.66, '', 'Activo');
INSERT INTO `compra` VALUES (25, 123456, 0, '2017-11-01 01:04:58', 468.00, 1, 463.32, '', 'Activo');
INSERT INTO `compra` VALUES (26, 123456, 0, '2017-11-01 01:05:25', 156.00, 0, 156.00, '', 'Activo');
INSERT INTO `compra` VALUES (27, 123456, 0, '2017-11-01 01:10:54', 78.00, 0, 78.00, '', 'Activo');
INSERT INTO `compra` VALUES (28, 123456, 0, '2017-11-01 01:11:13', 156.00, 0, 156.00, '', 'Activo');
INSERT INTO `compra` VALUES (29, 123456, 0, '2017-11-01 01:11:38', 702.00, 0, 702.00, '', 'Activo');
INSERT INTO `compra` VALUES (30, 123456, 0, '2017-11-01 11:15:00', 166.00, 0, 166.00, '', 'Activo');
INSERT INTO `compra` VALUES (31, 123456, 0, '2017-11-14 10:54:49', 468.00, 0, 468.00, '', 'Activo');
INSERT INTO `compra` VALUES (32, 123456, 0, '2017-11-14 10:56:06', 600.00, 0, 600.00, '', 'Activo');

-- ----------------------------
-- Table structure for compraRepuesto
-- ----------------------------
DROP TABLE IF EXISTS `compraRepuesto`;
CREATE TABLE `compraRepuesto`  (
  `id_compraRepuesto` int(20) NOT NULL AUTO_INCREMENT,
  `id_compra` int(20) NOT NULL,
  `id_repuesto` int(20) NOT NULL,
  `price` float(15, 2) NOT NULL,
  `cantidad` int(100) NOT NULL,
  `status` enum('Activo','Inactivo') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_compraRepuesto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of compraRepuesto
-- ----------------------------
INSERT INTO `compraRepuesto` VALUES (1, 1, 223, 234.00, 12, 'Activo');
INSERT INTO `compraRepuesto` VALUES (2, 1, 5555, 78.00, 23, 'Activo');
INSERT INTO `compraRepuesto` VALUES (3, 1, 3454, 55.00, 34, 'Activo');
INSERT INTO `compraRepuesto` VALUES (4, 2, 223, 234.00, 12, 'Activo');
INSERT INTO `compraRepuesto` VALUES (5, 2, 5555, 78.00, 11, 'Activo');
INSERT INTO `compraRepuesto` VALUES (6, 2, 232432, 33.00, 22, 'Activo');
INSERT INTO `compraRepuesto` VALUES (7, 3, 5555, 78.00, 26, 'Activo');
INSERT INTO `compraRepuesto` VALUES (8, 4, 5555, 78.00, 12, 'Activo');
INSERT INTO `compraRepuesto` VALUES (9, 5, 223, 234.00, 12, 'Activo');
INSERT INTO `compraRepuesto` VALUES (10, 6, 5555, 78.00, 16, 'Activo');
INSERT INTO `compraRepuesto` VALUES (11, 7, 5555, 78.00, 12, 'Activo');
INSERT INTO `compraRepuesto` VALUES (12, 8, 223, 234.00, 6, 'Activo');
INSERT INTO `compraRepuesto` VALUES (13, 9, 5555, 78.00, 23, 'Activo');
INSERT INTO `compraRepuesto` VALUES (14, 10, 5555, 78.00, 23, 'Activo');
INSERT INTO `compraRepuesto` VALUES (15, 11, 223, 234.00, 22, 'Activo');
INSERT INTO `compraRepuesto` VALUES (16, 12, 223, 234.00, 10, 'Activo');
INSERT INTO `compraRepuesto` VALUES (17, 13, 5555, 78.00, 12, 'Activo');
INSERT INTO `compraRepuesto` VALUES (18, 14, 5555, 78.00, 12, 'Activo');
INSERT INTO `compraRepuesto` VALUES (19, 14, 223, 234.00, 7, 'Activo');
INSERT INTO `compraRepuesto` VALUES (20, 15, 223, 234.00, 8, 'Activo');
INSERT INTO `compraRepuesto` VALUES (21, 16, 5555, 78.00, 12, 'Activo');
INSERT INTO `compraRepuesto` VALUES (22, 17, 223, 234.00, 3, 'Activo');
INSERT INTO `compraRepuesto` VALUES (23, 18, 5555, 78.00, 2, 'Activo');
INSERT INTO `compraRepuesto` VALUES (24, 19, 5555, 78.00, 1, 'Activo');
INSERT INTO `compraRepuesto` VALUES (25, 20, 5555, 78.00, 2, 'Activo');
INSERT INTO `compraRepuesto` VALUES (26, 20, 223, 234.00, 3, 'Activo');
INSERT INTO `compraRepuesto` VALUES (27, 21, 223, 234.00, 4, 'Activo');
INSERT INTO `compraRepuesto` VALUES (28, 21, 5555, 78.00, 3, 'Activo');
INSERT INTO `compraRepuesto` VALUES (29, 22, 223, 234.00, 2, 'Activo');
INSERT INTO `compraRepuesto` VALUES (30, 23, 223, 234.00, 2, 'Activo');
INSERT INTO `compraRepuesto` VALUES (31, 23, 5555, 78.00, 2, 'Activo');
INSERT INTO `compraRepuesto` VALUES (32, 24, 223, 234.00, 1, 'Activo');
INSERT INTO `compraRepuesto` VALUES (33, 25, 223, 234.00, 2, 'Activo');
INSERT INTO `compraRepuesto` VALUES (34, 26, 5555, 78.00, 2, 'Activo');
INSERT INTO `compraRepuesto` VALUES (35, 27, 5555, 78.00, 1, 'Activo');
INSERT INTO `compraRepuesto` VALUES (36, 28, 5555, 78.00, 2, 'Activo');
INSERT INTO `compraRepuesto` VALUES (37, 29, 223, 234.00, 3, 'Activo');
INSERT INTO `compraRepuesto` VALUES (38, 30, 5555, 78.00, 1, 'Activo');
INSERT INTO `compraRepuesto` VALUES (39, 30, 232432, 33.00, 1, 'Activo');
INSERT INTO `compraRepuesto` VALUES (40, 30, 3454, 55.00, 1, 'Activo');
INSERT INTO `compraRepuesto` VALUES (41, 31, 223, 234.00, 2, 'Activo');
INSERT INTO `compraRepuesto` VALUES (42, 32, 223, 234.00, 2, 'Activo');
INSERT INTO `compraRepuesto` VALUES (43, 32, 232432, 33.00, 4, 'Activo');

-- ----------------------------
-- Table structure for cotizaciones_demo
-- ----------------------------
DROP TABLE IF EXISTS `cotizaciones_demo`;
CREATE TABLE `cotizaciones_demo`  (
  `id_cotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `numero_cotizacion` int(11) NOT NULL,
  `fecha_cotizacion` datetime(0) NOT NULL,
  `atencion` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel1` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `empresa` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel2` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `condiciones` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `validez` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entrega` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_cotizacion`) USING BTREE,
  UNIQUE INDEX `numero_cotizacion`(`numero_cotizacion`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cotizaciones_demo
-- ----------------------------
INSERT INTO `cotizaciones_demo` VALUES (1, 1, '2017-10-11 11:18:58', 'sdasd', '3434-3434', 'sdfsdf', '3434-2342', 'heberth@localhost.com', 'Contado', '15 dÃ­as', 'Inmediato');
INSERT INTO `cotizaciones_demo` VALUES (2, 2, '2017-10-11 13:13:38', 'sdasd', '3434-3434', 'sdfsdf', '3434-2342', 'heberth_israel@hotmail.com', 'Contado', '15 dÃ­as', 'Inmediato');
INSERT INTO `cotizaciones_demo` VALUES (3, 3, '2017-10-11 14:21:05', 'sdasd', '3434-3434', 'sdfsdf', '3434-2342', 'hb-tapia@outlook.es', 'Contado', '15 dÃ­as', 'Inmediato');
INSERT INTO `cotizaciones_demo` VALUES (4, 4, '2017-10-11 14:22:20', 'sdasd', '3434-3434', 'sdfsdf', '3323-2343', 'hb-tapia@outlook.es', 'Contado', '15 dÃ­as', 'Inmediato');
INSERT INTO `cotizaciones_demo` VALUES (5, 5, '2017-10-11 14:23:17', 'sdasd', '3434-3434', 'sdfsdf', '3323-2343', 'hb-tapia@outlook.es', 'Contado', '15 dÃ­as', 'Inmediato');
INSERT INTO `cotizaciones_demo` VALUES (6, 6, '2017-10-11 14:31:06', 'sdasd', '3434-3434', 'sdfsdf', '3434-2342', 'hb-tapia@outlook.es', 'Contado', '15 dÃ­as', 'Inmediato');
INSERT INTO `cotizaciones_demo` VALUES (7, 7, '2017-10-11 14:48:15', 'sdasd', '3434-3434', 'sdfsdf', '3323-2343', 'hb-tapia@outlook.es', 'Contado', '15 dÃ­as', 'Inmediato');
INSERT INTO `cotizaciones_demo` VALUES (8, 8, '2017-10-11 15:07:13', 'sdfsdf', '3434-3434', 'sdfsdf', '3434-2342', 'hghhg@gmil.com', 'Contado', '15 dÃ­as', 'Inmediato');
INSERT INTO `cotizaciones_demo` VALUES (9, 9, '2017-10-11 15:09:40', 'sdasd', '3434-3434', 'sdfsdf', '3434-2342', 'ht.heberth@gmail.com', 'Contado', '15 dÃ­as', 'Inmediato');
INSERT INTO `cotizaciones_demo` VALUES (10, 10, '2017-10-30 05:46:32', 'sdfsdf', '45435345', 'sdfsdfs', '3453454', 'hb-tapia@outlook.es', 'Contado', '15 dÃ­as', 'Inmediato');
INSERT INTO `cotizaciones_demo` VALUES (11, 11, '2017-10-30 18:24:48', 'dsfsdf', '34234', 'asdasdasd', '34234234', 'g@es.com', 'Contado', '15 dÃ­as', 'Inmediato');

-- ----------------------------
-- Table structure for detalle_cotizacion_demo
-- ----------------------------
DROP TABLE IF EXISTS `detalle_cotizacion_demo`;
CREATE TABLE `detalle_cotizacion_demo`  (
  `id_detalle_cotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `numero_cotizacion` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL,
  PRIMARY KEY (`id_detalle_cotizacion`) USING BTREE,
  INDEX `numero_cotizacion`(`numero_cotizacion`, `id_producto`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of detalle_cotizacion_demo
-- ----------------------------
INSERT INTO `detalle_cotizacion_demo` VALUES (1, 1, 15, 1, 78);
INSERT INTO `detalle_cotizacion_demo` VALUES (2, 1, 16, 1, 33);
INSERT INTO `detalle_cotizacion_demo` VALUES (3, 1, 17, 1, 55);
INSERT INTO `detalle_cotizacion_demo` VALUES (4, 2, 16, 1, 33);
INSERT INTO `detalle_cotizacion_demo` VALUES (5, 3, 17, 1, 55);
INSERT INTO `detalle_cotizacion_demo` VALUES (6, 4, 17, 1, 55);
INSERT INTO `detalle_cotizacion_demo` VALUES (7, 5, 17, 1, 55);
INSERT INTO `detalle_cotizacion_demo` VALUES (8, 6, 17, 1, 55);
INSERT INTO `detalle_cotizacion_demo` VALUES (9, 7, 15, 1, 78);
INSERT INTO `detalle_cotizacion_demo` VALUES (10, 7, 16, 1, 33);
INSERT INTO `detalle_cotizacion_demo` VALUES (11, 7, 17, 1, 55);
INSERT INTO `detalle_cotizacion_demo` VALUES (12, 8, 17, 1, 55);
INSERT INTO `detalle_cotizacion_demo` VALUES (13, 9, 17, 1, 55);
INSERT INTO `detalle_cotizacion_demo` VALUES (14, 10, 10, 1, 234);
INSERT INTO `detalle_cotizacion_demo` VALUES (15, 11, 15, 1, 78);

-- ----------------------------
-- Table structure for empleado
-- ----------------------------
DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado`  (
  `id_empleado` int(20) NOT NULL,
  `depa` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombre` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apP` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apM` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `size` float(15, 2) NOT NULL,
  `dateNac` date NOT NULL,
  `phone` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `celular` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `direccion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `numero` int(20) NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coorX` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coorY` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `obser` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cargo` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_sucursal` int(20) NOT NULL,
  `dateReg` datetime(0) NOT NULL,
  `statusEmp` enum('Activo','Inactivo') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Activo',
  PRIMARY KEY (`id_empleado`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of empleado
-- ----------------------------
INSERT INTO `empleado` VALUES (123456, 'lp', 'Heberth', 'tapia', 'andrade', 'f735db185713286865adf35aaaba85f2.jpg', 77780.00, '1981-10-17', '', '77237022', 'El alto, rio seco', 113, 'ht.heberth@gmail.com', '-16.49461404183042', ' -68.21745872497559', 'ninguna observacion', 'adm', 1, '0000-00-00 00:00:00', 'Activo');
INSERT INTO `empleado` VALUES (456789, 'lp', 'Nacho', 'lopez', 'lopez', '1a57d8f1e6f0ed7d849c9bdd7c4c9f38.jpg', 70970.00, '1982-07-08', '', '78878989', 'villa copacabana', 233, 'nacho@gmail.com', '-16.49562219520584', ' -68.11637163162231', 'ninguna observacion', 'ope', 2, '2017-07-26 20:25:07', 'Activo');
INSERT INTO `empleado` VALUES (34324, 'cbb', 'sdfd', 'sdfsd', 'sdfsdf', 'sweet_notebook (4).jpg', 269296.00, '2017-08-04', '324234', '', 'dfds sdf', 324, 'dfsdf@dsadsad.sd', '-16.54838550084891', ' -68.13446044921875', 'sdfsdf', 'adm', 3, '2017-08-04 21:12:07', 'Activo');

-- ----------------------------
-- Table structure for foto
-- ----------------------------
DROP TABLE IF EXISTS `foto`;
CREATE TABLE `foto`  (
  `id_foto` int(20) NOT NULL AUTO_INCREMENT,
  `id_repuesto` int(20) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `size` float(15, 2) NOT NULL,
  `dateReg` datetime(0) NOT NULL,
  `status` enum('Activo','Inactivo') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_foto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of foto
-- ----------------------------
INSERT INTO `foto` VALUES (22, 10, 'daniel.jpg', 288958.00, '2017-08-10 00:24:16', 'Activo');
INSERT INTO `foto` VALUES (23, 10, 'dnangel_6_1024.jpg', 186340.00, '2017-08-10 00:24:16', 'Activo');
INSERT INTO `foto` VALUES (24, 10, 'dnangel_7_1024.jpg', 121216.00, '2017-08-10 00:24:16', 'Activo');
INSERT INTO `foto` VALUES (25, 10, 'dnangel_2_1024.jpg', 198044.00, '2017-08-10 00:24:16', 'Activo');
INSERT INTO `foto` VALUES (26, 10, 'DNangel2.jpg', 99934.00, '2017-08-10 00:24:16', 'Activo');
INSERT INTO `foto` VALUES (36, 15, 'sweet_notebook (19).jpg', 257355.00, '2017-08-10 09:00:06', 'Activo');
INSERT INTO `foto` VALUES (37, 15, 'sweet_notebook (20).jpg', 144705.00, '2017-08-10 09:00:06', 'Activo');
INSERT INTO `foto` VALUES (38, 15, 'watermark (1).jpg', 29851.00, '2017-08-10 10:26:50', 'Activo');
INSERT INTO `foto` VALUES (39, 15, 'school-days.jpg', 58950.00, '2017-08-10 10:26:50', 'Activo');
INSERT INTO `foto` VALUES (40, 15, 'watermark.jpg', 45104.00, '2017-08-10 10:26:50', 'Activo');
INSERT INTO `foto` VALUES (42, 16, 'product-1.jpg', 10293.00, '2017-08-10 21:25:06', 'Activo');
INSERT INTO `foto` VALUES (43, 16, 'product-2.jpg', 6469.00, '2017-08-10 21:25:06', 'Activo');
INSERT INTO `foto` VALUES (45, 17, 'product-5.jpg', 4875.00, '2017-08-10 21:26:54', 'Activo');
INSERT INTO `foto` VALUES (46, 17, 'product-3.jpg', 9486.00, '2017-08-10 21:26:54', 'Activo');
INSERT INTO `foto` VALUES (49, 18, '16195191_1838548816417923_4344792467098914231_n.jpg', 29443.00, '2017-09-28 00:44:37', 'Activo');
INSERT INTO `foto` VALUES (80, 17, '3.jpg', 203920.00, '2017-10-24 01:21:55', 'Activo');
INSERT INTO `foto` VALUES (81, 17, '8.jpg', 209346.00, '2017-10-24 01:21:55', 'Activo');
INSERT INTO `foto` VALUES (82, 17, '9.jpg', 493920.00, '2017-10-24 01:21:55', 'Activo');

-- ----------------------------
-- Table structure for personas
-- ----------------------------
DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas`  (
  `cod` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`cod`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of personas
-- ----------------------------
INSERT INTO `personas` VALUES (1, 'julio');
INSERT INTO `personas` VALUES (2, 'pedro');
INSERT INTO `personas` VALUES (3, 'pablo');
INSERT INTO `personas` VALUES (4, 'john');
INSERT INTO `personas` VALUES (5, 'juana');
INSERT INTO `personas` VALUES (6, 'ana');
INSERT INTO `personas` VALUES (7, 'maria');
INSERT INTO `personas` VALUES (8, 'felipe');
INSERT INTO `personas` VALUES (9, 'yesid');
INSERT INTO `personas` VALUES (10, 'horacio');
INSERT INTO `personas` VALUES (11, 'jerry');
INSERT INTO `personas` VALUES (12, 'george');
INSERT INTO `personas` VALUES (13, 'jorge');
INSERT INTO `personas` VALUES (14, 'juliana');
INSERT INTO `personas` VALUES (15, 'jenny');

-- ----------------------------
-- Table structure for repuesto
-- ----------------------------
DROP TABLE IF EXISTS `repuesto`;
CREATE TABLE `repuesto`  (
  `id_repuesto` int(20) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(20) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `detail` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fromRep` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `numParte` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `priceSale` float(15, 2) NOT NULL,
  `priceBuy` float(15, 2) NOT NULL,
  `dateReg` datetime(0) NOT NULL,
  `status` enum('Activo','Inactivo') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_repuesto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of repuesto
-- ----------------------------
INSERT INTO `repuesto` VALUES (10, 1, 'Producto 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Producto 4', '223', 234.00, 234.00, '2017-08-10 22:22:29', 'Activo');
INSERT INTO `repuesto` VALUES (15, 2, 'Producto 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum. ', 'Producto 3', '5555', 78.00, 77.00, '2017-08-10 22:22:04', 'Activo');
INSERT INTO `repuesto` VALUES (16, 4, 'Producto 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum. ', 'Producto 2', '232432', 33.00, 44.00, '2017-08-10 22:20:36', 'Activo');
INSERT INTO `repuesto` VALUES (17, 5, 'Producto 1 filtro de agua', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodrntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,rnquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodornconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esserncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonrnproident, sunt in culpa qui officia deserunt mollit anim id est laborum. ', 'Producto 1', '3454', 55.00, 66.00, '2017-10-24 01:23:26', 'Activo');
INSERT INTO `repuesto` VALUES (18, 2, 'Producto 5 filtro de aceite', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodrntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,rnquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodornconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esserncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonrnproident, sunt in culpa qui officia deserunt mollit anim id est laborum. ', 'Producto 5', '556', 78.00, 76.00, '2017-10-11 17:30:41', 'Activo');

-- ----------------------------
-- Table structure for sucursal
-- ----------------------------
DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE `sucursal`  (
  `id_sucursal` int(20) NOT NULL AUTO_INCREMENT,
  `nameSuc` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dateReg` datetime(0) NOT NULL,
  `status` enum('Activo','Inactivo') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_sucursal`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sucursal
-- ----------------------------
INSERT INTO `sucursal` VALUES (1, 'Sucursal 1', 'df sd d sd fds dsf', '2017-08-01 00:56:59', 'Activo');
INSERT INTO `sucursal` VALUES (2, 'Sucursal 2', '', '0000-00-00 00:00:00', 'Activo');
INSERT INTO `sucursal` VALUES (3, 'Sucursal 3', 'asda as das dsa dasd asd as', '2017-07-31 18:49:14', 'Inactivo');
INSERT INTO `sucursal` VALUES (4, 'Sucursal 4', 'dfd gdfg dfgfdg', '2017-07-31 18:50:09', 'Activo');
INSERT INTO `sucursal` VALUES (5, 'Sucursal 5', 'sdds dsfds fdsf', '2017-07-31 18:50:09', 'Activo');

-- ----------------------------
-- Table structure for tmp_cotizacion
-- ----------------------------
DROP TABLE IF EXISTS `tmp_cotizacion`;
CREATE TABLE `tmp_cotizacion`  (
  `id_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(8, 2) DEFAULT NULL,
  `sessionID` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tmp`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `id_usuario` int(20) NOT NULL AUTO_INCREMENT,
  `id_empleado` int(20) NOT NULL,
  `user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pass` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `timeReg` int(100) NOT NULL,
  `status` enum('Inactivo','Activo') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Activo',
  PRIMARY KEY (`id_usuario`) USING BTREE,
  INDEX `id_empleado`(`id_empleado`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (1, 123456, 'admin', 'admin', 1510717469, 'Inactivo');
INSERT INTO `usuario` VALUES (2, 456789, 'nacho', 'nacho', 1506318074, 'Inactivo');
INSERT INTO `usuario` VALUES (3, 34324, 'dddd', 'dddd', 0, 'Inactivo');
INSERT INTO `usuario` VALUES (4, 343432, 'eeee', 'eeee', 0, 'Inactivo');
INSERT INTO `usuario` VALUES (5, 23434, 'sdfsdf', 'sdfsdf', 0, 'Inactivo');
INSERT INTO `usuario` VALUES (6, 6009393, 'vargas', 'vargas', 0, 'Inactivo');

SET FOREIGN_KEY_CHECKS = 1;
