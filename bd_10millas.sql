-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-11-2017 a las 22:13:23
-- Versión del servidor: 5.6.35
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_10millas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auxImg`
--

CREATE TABLE IF NOT EXISTS `auxImg` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `size` float(15,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auxImgEmp`
--

CREATE TABLE IF NOT EXISTS `auxImgEmp` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `size` float(15,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `size` float(15,2) NOT NULL,
  `dateReg` datetime NOT NULL,
  `status` enum('Activo','Inactivo') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `name`, `detail`, `foto`, `size`, `dateReg`, `status`) VALUES
(1, 'Hombre', 'Hombre', '4806[1].jpg', 54778.00, '2017-11-13 20:22:06', 'Activo'),
(2, 'Mujer', 'Mujer', 'Portadas_de_Bleach_para_facebook (4).jpg', 59001.00, '2017-11-13 20:21:14', 'Activo'),
(4, 'NiÃ±o', 'NiÃ±o', '19A145A20.jpg', 106993.00, '2017-11-13 20:22:06', 'Activo'),
(5, 'NiÃ±a', 'NiÃ±a', '[animepaper.net]wallpaper-standard-anime-afro-samurai-no-2-46643-ed9e-preview-6dd496f7.jpg', 63548.00, '2017-11-13 20:22:06', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
  `id_empleado` int(20) NOT NULL,
  `depa` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apP` varchar(50) NOT NULL,
  `apM` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `size` float(15,2) NOT NULL,
  `dateNac` date NOT NULL,
  `phone` varchar(15) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `numero` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `coorX` varchar(200) NOT NULL,
  `coorY` varchar(200) NOT NULL,
  `obser` varchar(500) NOT NULL,
  `cargo` varchar(200) NOT NULL,
  `id_sucursal` int(20) NOT NULL,
  `dateReg` datetime NOT NULL,
  `statusEmp` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `depa`, `nombre`, `apP`, `apM`, `foto`, `size`, `dateNac`, `phone`, `celular`, `direccion`, `numero`, `email`, `coorX`, `coorY`, `obser`, `cargo`, `id_sucursal`, `dateReg`, `statusEmp`) VALUES
(123456, 'lp', 'Heberth', 'tapia', 'andrade', 'f735db185713286865adf35aaaba85f2.jpg', 77780.00, '1981-10-17', '', '77237022', 'El alto, rio seco', 113, 'ht.heberth@gmail.com', '-16.49461404183042', ' -68.21745872497559', 'ninguna observacion', 'adm', 1, '0000-00-00 00:00:00', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto`
--

CREATE TABLE IF NOT EXISTS `foto` (
  `id_foto` int(20) NOT NULL,
  `id_producto` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `size` float(15,2) NOT NULL,
  `dateReg` datetime NOT NULL,
  `status` enum('Activo','Inactivo') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `foto`
--

INSERT INTO `foto` (`id_foto`, `id_producto`, `name`, `size`, `dateReg`, `status`) VALUES
(15, 4, 'Portadas_de_Bleach_para_facebook (4).jpg', 59001.00, '2017-11-15 17:35:53', 'Activo'),
(16, 5, 'luffy baseball [portada para facebook].jpg', 83927.00, '2017-11-15 18:21:07', 'Activo'),
(17, 3, 'school-days.jpg', 58950.00, '2017-11-15 18:27:00', 'Activo'),
(18, 0, '173.PNG', 232084.00, '2017-11-17 04:11:29', 'Activo'),
(20, 6, 'camisetas-divertidas-de-tigre.jpg', 46776.00, '2017-11-17 17:50:55', 'Activo'),
(22, 8, 'tristeza.png', 50360.00, '2017-11-17 18:02:04', 'Activo'),
(27, 1, 'item5.png', 226795.00, '2017-11-23 17:53:20', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` int(20) NOT NULL,
  `id_categoria` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `dateReg` datetime NOT NULL,
  `status` enum('Activo','Inactivo') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `id_categoria`, `name`, `detail`, `dateReg`, `status`) VALUES
(1, 1, 'Camiseta ', 'Especial para ir al gimnacio', '2017-11-23 17:54:14', 'Activo'),
(3, 4, 'sdsf', 'sdfs sdf sdf sdf', '2017-11-15 18:27:10', 'Inactivo'),
(4, 2, 'The Strongest', 'The Strongest', '2017-11-15 17:36:22', 'Activo'),
(5, 5, 'asdsa', 'asdsad asd sad sad ', '2017-11-15 18:26:10', 'Activo'),
(6, 4, 'camizeta del tigre', 'tallas s ms', '2017-11-17 17:54:18', 'Activo'),
(8, 1, 'asdsad', 'asdasd', '2017-11-17 18:02:04', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(20) NOT NULL,
  `id_empleado` int(20) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `timeReg` int(100) NOT NULL,
  `status` enum('Inactivo','Activo') NOT NULL DEFAULT 'Activo'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_empleado`, `user`, `pass`, `timeReg`, `status`) VALUES
(1, 123456, 'admin', 'admin', 1511474000, 'Inactivo'),
(2, 456789, 'nacho', 'nacho', 1506318074, 'Inactivo'),
(3, 34324, 'dddd', 'dddd', 0, 'Inactivo'),
(4, 343432, 'eeee', 'eeee', 0, 'Inactivo'),
(5, 23434, 'sdfsdf', 'sdfsdf', 0, 'Inactivo'),
(6, 6009393, 'vargas', 'vargas', 0, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id_video` int(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `idVideo` varchar(255) NOT NULL,
  `dateReg` datetime NOT NULL,
  `status` enum('Activo','Inactivo') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`id_video`, `title`, `detail`, `idVideo`, `dateReg`, `status`) VALUES
(6, '10 millas', 'VIDEO DE PRUEBA', 'URcwzYviImw', '2017-11-17 03:30:53', 'Activo'),
(7, 'de prueba 2', 'prueba 2', 'sCIseTbQbc0', '2017-11-17 03:35:33', 'Activo'),
(8, 'prueba 3', 'prueba 3', 'vRWxhiojcbk', '2017-11-17 04:22:28', 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auxImg`
--
ALTER TABLE `auxImg`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `auxImgEmp`
--
ALTER TABLE `auxImgEmp`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`) USING BTREE;

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`) USING BTREE;

--
-- Indices de la tabla `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`) USING BTREE;

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`) USING BTREE;

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`) USING BTREE,
  ADD KEY `id_empleado` (`id_empleado`) USING BTREE;

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auxImg`
--
ALTER TABLE `auxImg`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auxImgEmp`
--
ALTER TABLE `auxImgEmp`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
