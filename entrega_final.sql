-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2021 a las 15:30:40
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `entrega_final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) NOT NULL,
  `nombre_categorias` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre_categorias`) VALUES
(1, 'almacen '),
(2, 'bebidas'),
(3, 'lacteos'),
(4, 'frutasVerduras'),
(5, 'veganos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `id_categoria` int(10) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `alt` varchar(100) DEFAULT NULL,
  `precio` double NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `existencia` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `id_categoria`, `imagen`, `alt`, `precio`, `descripcion`, `existencia`) VALUES
(1, 'ACEITE DE OLIVA', 1, 'imagenes\\ingrediente-aceite-oliva-2.jpg', 'aceite de oliva', 900, 'Aceite Organico marca Polo 500cc', 100),
(2, 'QUINOA ORGANICA', 1, 'imagenes\\quinoa.jpg', 'QUINOA', 500, 'Quinoa 1Kg', 100),
(3, 'MIEL ORGANICA', 1, 'imagenes\\aportes-miel.jpg', 'IMAGEN_MIEL', 450, 'Miel organica marca La Abejita 500cc', 100),
(6, 'GRANOLA ORGANICA', 1, 'imagenes\\granola_casera_sin_azucar_71834_600_square.jpg', 'Granola Orgánica', 900, 'Granola Orgánica 500g Marca Polo', 100),
(7, 'Nueces ', 1, 'imagenes\\nueces.jfif', 'Nueces_SinPiel', 900, 'Nueces sin Piel presentacion de 1 kg', 100),
(8, 'ALMENDRAS', 1, 'imagenes/almendras.jfif', 'Almendras', 900, 'Almendra presentacion de 500g', 100),
(9, 'SEMILLAS DE CHIA', 1, 'imagenes/chia.jfif', 'SEMILLAS_CHIA', 900, 'Semillas de CHIA presentación de 1 kg', 100),
(10, 'CREATINA', 1, 'imagenes/creatina.jpg', 'Creatina', 2000, 'creatina Micronizada Marca ENA 300g', 100),
(11, 'TE VERDE Y TE NEGRO', 1, 'imagenes/teverde_negro.jpg', 'Hebras_te', 1500, 'Te Verde y Te negro En hebras 500gr', 100),
(12, 'YOGURT GRIEGO ORGANICO', 3, 'imagenes/yogur-griego.jpg', 'YOGURT GRIEGO ORGANICO', 400, 'Yogurt Griego Organico sin Endulzantes ni Edulcorantes marca Polo 500cc', 100),
(13, 'QUESO GRIEGO', 3, 'imagenes/quesoGriego.jpg', 'QUESO_GRIEGO', 600, 'Queso Griego Organico 500g.', 10),
(14, 'JUGO DE ARANDANOS ', 2, 'imagenes/jugoArandanos.webp', 'jugo_arandanos', 300, 'Jugo de Arándanos 1 Litro', 10),
(15, 'MILANESAS DE SEITAN', 5, 'imagenes/milaSeitan.jpg', 'MilaSeitan', 750, 'Milanesas de Seitan / Kilo', 10),
(16, 'ChoriVegano', 5, 'imagenes/choriVegano.jfif', 'choriVegano', 900, 'Chorizo Vegano /Kg', 10),
(17, 'Empanadas de Soja ', 5, 'imagenes/EmpanadaSoja.jfif', 'EmpanadasSoja', 1000, 'Empanadas de Soja la Docena(12unid)', 10),
(18, 'Arandanos', 4, 'imagenes/arandanos.jpg', 'Arandanos', 500, 'Arandanos 500g', 10),
(19, 'FRUTOS ROJOS CONGELADOS', 4, 'imagenes/frutosRojos.jpg', 'FrutosRojos', 1000, 'Frutos Rojos Congelados 500gr', 10),
(20, 'Frutillas Congeladas', 4, 'imagenes/frutillasCongeladas.jpg', 'FrutillasCongeladas', 900, 'Frutillas congeladas marca Karinat 500g', 100),
(21, 'FRUTOS DE CAFE', 4, 'imagenes/frutosCafe.jpg', 'Frutos_Cafe', 300, 'Frutos de Cafe / KG', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id5` int(5) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id5`, `nombre`, `apellido`, `genero`, `correo`, `direccion`, `telefono`) VALUES
(1, 'dsadsa', 'dsadsa', 'M', 'dsads@gmil.com', 'dsasad', '111111');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id5`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id5` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
