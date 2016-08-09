-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-08-2016 a las 21:26:14
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coeneo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `Id_Articulo` int(24) NOT NULL,
  `Id_Usuario` int(24) NOT NULL,
  `Titulo` varchar(64) DEFAULT NULL,
  `Cuerpo` text,
  `Fecha` timestamp NULL DEFAULT NULL,
  `Id_Categoria` int(24) DEFAULT NULL,
  `Estado` int(2) DEFAULT NULL,
  `SEO` varchar(255) DEFAULT NULL COMMENT 'Pequeña descripción para el posicionamiento'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_foto`
--

CREATE TABLE `articulo_foto` (
  `Id_Articulo_Foto` int(64) NOT NULL,
  `Id_Articulo` int(11) NOT NULL,
  `Titulo` varchar(64) DEFAULT NULL,
  `Ruta` varchar(255) DEFAULT NULL,
  `Estado` int(2) DEFAULT NULL COMMENT '0 inactivo, 1 activo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_tag`
--

CREATE TABLE `articulo_tag` (
  `Id_Articulo` int(24) NOT NULL,
  `Id_Tag` int(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `Id_Categoria` int(24) NOT NULL,
  `Categoria` varchar(64) DEFAULT NULL COMMENT 'Categorias'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Posiblemente -Artiiculos -Datos Curiosos -Recetas';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Id_Producto` int(24) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Caducidad` varchar(24) DEFAULT NULL,
  `Ingredientes` varchar(255) DEFAULT NULL,
  `Estado` int(2) DEFAULT NULL COMMENT '0 inactivo, 1 activo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_foto`
--

CREATE TABLE `producto_foto` (
  `Id_Producto_Foto` int(64) NOT NULL,
  `Id_Producto` int(24) NOT NULL,
  `Titulo` varchar(64) DEFAULT NULL,
  `Ruta` varchar(255) DEFAULT NULL COMMENT 'ruta del archivo',
  `Estado` int(2) DEFAULT NULL COMMENT '0 inactivo, 1 activo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_tag`
--

CREATE TABLE `producto_tag` (
  `Id_Producto` int(24) NOT NULL,
  `Id_Tag` int(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='palabras clave para productos';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE `sesion` (
  `Id_Sesion` int(24) NOT NULL,
  `Codigo` varchar(128) DEFAULT NULL,
  `IP` varchar(64) DEFAULT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Estado` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag`
--

CREATE TABLE `tag` (
  `Id_Tag` int(24) NOT NULL,
  `Tag` varchar(64) DEFAULT NULL COMMENT 'El tag es una palabra clave que será usada en Productos, Articulos y recetas'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int(24) NOT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Apellido_P` varchar(255) DEFAULT NULL,
  `Apellido_M` varchar(255) DEFAULT NULL,
  `Correo` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla para almacenar los usuarios';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`Id_Articulo`);

--
-- Indices de la tabla `articulo_foto`
--
ALTER TABLE `articulo_foto`
  ADD PRIMARY KEY (`Id_Articulo_Foto`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`Id_Categoria`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Id_Producto`);

--
-- Indices de la tabla `producto_foto`
--
ALTER TABLE `producto_foto`
  ADD PRIMARY KEY (`Id_Producto_Foto`);

--
-- Indices de la tabla `sesion`
--
ALTER TABLE `sesion`
  ADD PRIMARY KEY (`Id_Sesion`);

--
-- Indices de la tabla `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`Id_Tag`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `Id_Articulo` int(24) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `articulo_foto`
--
ALTER TABLE `articulo_foto`
  MODIFY `Id_Articulo_Foto` int(64) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `Id_Categoria` int(24) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `Id_Producto` int(24) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `producto_foto`
--
ALTER TABLE `producto_foto`
  MODIFY `Id_Producto_Foto` int(64) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sesion`
--
ALTER TABLE `sesion`
  MODIFY `Id_Sesion` int(24) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tag`
--
ALTER TABLE `tag`
  MODIFY `Id_Tag` int(24) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int(24) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
