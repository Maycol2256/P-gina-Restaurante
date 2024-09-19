-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-09-2024 a las 04:04:35
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriaproducto`
--

CREATE TABLE `categoriaproducto` (
  `CategoriaProducto_ID` int(10) NOT NULL,
  `CategoriaProducto_Nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoriaproducto`
--

INSERT INTO `categoriaproducto` (`CategoriaProducto_ID`, `CategoriaProducto_Nombre`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL),
(5, NULL),
(6, NULL),
(7, NULL),
(8, NULL),
(9, NULL),
(10, NULL),
(11, NULL),
(16, NULL),
(17, NULL),
(18, NULL),
(19, NULL),
(20, NULL),
(21, NULL),
(22, NULL),
(23, NULL),
(24, NULL),
(25, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `Mesa_ID` int(10) NOT NULL,
  `Mesa_Nombre` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`Mesa_ID`, `Mesa_Nombre`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL),
(5, NULL),
(6, NULL),
(7, NULL),
(8, NULL),
(9, NULL),
(10, NULL),
(11, NULL),
(12, NULL),
(13, NULL),
(14, NULL),
(15, NULL),
(16, NULL),
(17, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesero`
--

CREATE TABLE `mesero` (
  `Mesero_ID` int(10) NOT NULL,
  `Mesero_Nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mesero`
--

INSERT INTO `mesero` (`Mesero_ID`, `Mesero_Nombre`) VALUES
(1, 'Alejandro\r'),
(2, 'Ernesto\r'),
(3, 'Joel\r'),
(4, 'Mariana\r'),
(5, 'Mauricio\r'),
(6, 'Omar\r'),
(7, 'Rodolfo\r'),
(8, 'Saul\r'),
(9, 'Valentina\r');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `Orden_ID` int(10) NOT NULL,
  `Orden_Fecha` datetime DEFAULT NULL,
  `Orden_Propina` decimal(5,2) DEFAULT NULL,
  `Mesas_ID` int(10) DEFAULT NULL,
  `Meseros_ID` int(10) DEFAULT NULL,
  `TiCliente_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`Orden_ID`, `Orden_Fecha`, `Orden_Propina`, `Mesas_ID`, `Meseros_ID`, `TiCliente_ID`) VALUES
(1, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL),
(2, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL),
(3, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `Pedido_ID` int(10) NOT NULL,
  `Ord_ID` int(10) DEFAULT NULL,
  `Prod_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`Pedido_ID`, `Ord_ID`, `Prod_ID`) VALUES
(3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Producto_ID` int(10) NOT NULL,
  `Producto_Nombre` varchar(20) DEFAULT NULL,
  `Producto_Costo` decimal(5,2) DEFAULT NULL,
  `Producto_Precio` decimal(5,2) DEFAULT NULL,
  `CatProducto_ID` int(10) DEFAULT NULL,
  `TipProducto_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`Producto_ID`, `Producto_Nombre`, `Producto_Costo`, `Producto_Precio`, `CatProducto_ID`, `TipProducto_ID`) VALUES
(1, '\"Arrachera del chef;', NULL, NULL, NULL, NULL),
(2, '\"Arrachera del chef;', NULL, NULL, NULL, NULL),
(3, '\"Arrachera del chef;', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cliente`
--

CREATE TABLE `tipo_cliente` (
  `TipoCliente_ID` int(10) NOT NULL,
  `TipoCliente_Tipo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_cliente`
--

INSERT INTO `tipo_cliente` (`TipoCliente_ID`, `TipoCliente_Tipo`) VALUES
(1, 'Cliente Nuevo\r'),
(2, 'Cliente Repetido\r');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto`
--

CREATE TABLE `tipo_producto` (
  `TipoProducto_ID` int(10) NOT NULL,
  `TipoProducto_Nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_producto`
--

INSERT INTO `tipo_producto` (`TipoProducto_ID`, `TipoProducto_Nombre`) VALUES
(1, 'Bebida\r'),
(2, 'Comida\r');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoriaproducto`
--
ALTER TABLE `categoriaproducto`
  ADD PRIMARY KEY (`CategoriaProducto_ID`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`Mesa_ID`);

--
-- Indices de la tabla `mesero`
--
ALTER TABLE `mesero`
  ADD PRIMARY KEY (`Mesero_ID`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`Orden_ID`),
  ADD KEY `Mesas_ID` (`Mesas_ID`),
  ADD KEY `Meseros_ID` (`Meseros_ID`),
  ADD KEY `TiCliente_ID` (`TiCliente_ID`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`Pedido_ID`),
  ADD KEY `Ord_ID` (`Ord_ID`),
  ADD KEY `Prod_ID` (`Prod_ID`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Producto_ID`),
  ADD KEY `CatProducto_ID` (`CatProducto_ID`),
  ADD KEY `TipProducto_ID` (`TipProducto_ID`);

--
-- Indices de la tabla `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  ADD PRIMARY KEY (`TipoCliente_ID`);

--
-- Indices de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  ADD PRIMARY KEY (`TipoProducto_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoriaproducto`
--
ALTER TABLE `categoriaproducto`
  MODIFY `CategoriaProducto_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `Mesa_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `mesero`
--
ALTER TABLE `mesero`
  MODIFY `Mesero_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `Orden_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `Pedido_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `Producto_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  MODIFY `TipoCliente_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  MODIFY `TipoProducto_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`Mesas_ID`) REFERENCES `mesas` (`Mesa_ID`),
  ADD CONSTRAINT `orden_ibfk_2` FOREIGN KEY (`Meseros_ID`) REFERENCES `mesero` (`Mesero_ID`),
  ADD CONSTRAINT `orden_ibfk_3` FOREIGN KEY (`TiCliente_ID`) REFERENCES `tipo_cliente` (`TipoCliente_ID`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`Ord_ID`) REFERENCES `orden` (`Orden_ID`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`Prod_ID`) REFERENCES `producto` (`Producto_ID`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`CatProducto_ID`) REFERENCES `categoriaproducto` (`CategoriaProducto_ID`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`TipProducto_ID`) REFERENCES `tipo_producto` (`TipoProducto_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
