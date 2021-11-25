-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2021 a las 04:16:05
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `londonbridgepub`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `idCalificacion` int(11) NOT NULL,
  `idFactura` int(11) NOT NULL,
  `opinion` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `valor` int(11) NOT NULL,
  `idPersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `idPedido` int(11) NOT NULL,
  `idMesa` int(11) NOT NULL,
  `idPersona` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `nombreProducto` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cantidadProducto` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `totalVP` int(11) NOT NULL,
  `estadoPedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_factura`
--

CREATE TABLE `estado_factura` (
  `idEstadoFactura` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_pedido`
--

CREATE TABLE `estado_pedido` (
  `idEstadoPedido` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_reserva`
--

CREATE TABLE `estado_reserva` (
  `idEstadoReserva` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_pedido`
--

CREATE TABLE `factura_pedido` (
  `idFactura` int(11) NOT NULL,
  `consecutivo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `totalVP` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  `estadoFactura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `idMesa` int(11) NOT NULL,
  `idPersona` int(11) NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_usuario`
--

CREATE TABLE `persona_usuario` (
  `idPersona` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `tipoDocumento` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `documento` varchar(12) COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contraseña` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `rolUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `persona_usuario`
--

INSERT INTO `persona_usuario` (`idPersona`, `nombre`, `apellido`, `tipoDocumento`, `documento`, `telefono`, `direccion`, `fechaNacimiento`, `email`, `contraseña`, `rolUsuario`) VALUES
(1, 'Junior Yoel', 'Castilla Osorio', 'cc', '1092942510', '3124828696', 'Av. 32 30-16 LA Divina Pastora', '2000-03-01', 'Osoriojunioryoelc@ufps.edu.co', 'Nymeria11!', 1),
(2, 'Mario Antonio', 'Acosta Esparza', 'cc', '0123456789', '3506279077', 'En la casa de él', '1999-10-12', 'elcorreodemario@gmail.com', 'MarioAcosta', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_menu`
--

CREATE TABLE `producto_menu` (
  `idProducto_menu` int(11) NOT NULL,
  `nombreProducto` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `url_imagen` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `categoriaProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `idReserva` int(11) NOT NULL,
  `idPersona` int(11) NOT NULL,
  `idMesa` int(11) NOT NULL,
  `idEstadoReserva` int(11) NOT NULL,
  `numeroPersonas` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_usuario`
--

CREATE TABLE `rol_usuario` (
  `idRol` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `rol_usuario`
--

INSERT INTO `rol_usuario` (`idRol`, `nombre`, `descripcion`) VALUES
(1, 'Cliente', 'Rol perteneciente a los clientes del Bar London Bridge Pub'),
(2, 'Mesero', 'Rol correspondiente a los empleados meseros de bar London Bridge Pub'),
(3, 'Administrador', 'Corresponde al rol de Administrador de London Bridge Pub, quien puede agregar usuarios y tiene permi');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`idCalificacion`),
  ADD KEY `fk_calificacion_personaUsuario_id` (`idPersona`),
  ADD KEY `fk_calificacion_facturaPedido_id` (`idFactura`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `fk_detallePedido_mesa_id` (`idMesa`),
  ADD KEY `fk_detallePedido_mesa_personaUsuario_id` (`idPersona`),
  ADD KEY `fk_detallePedido_productoMenu_id` (`idProducto`);

--
-- Indices de la tabla `estado_factura`
--
ALTER TABLE `estado_factura`
  ADD PRIMARY KEY (`idEstadoFactura`);

--
-- Indices de la tabla `estado_pedido`
--
ALTER TABLE `estado_pedido`
  ADD PRIMARY KEY (`idEstadoPedido`);

--
-- Indices de la tabla `estado_reserva`
--
ALTER TABLE `estado_reserva`
  ADD PRIMARY KEY (`idEstadoReserva`);

--
-- Indices de la tabla `factura_pedido`
--
ALTER TABLE `factura_pedido`
  ADD PRIMARY KEY (`idFactura`,`consecutivo`),
  ADD KEY `fk_facturaPedido_detallePedido_id` (`idPedido`),
  ADD KEY `fk_facturaPedido_estadoFactura_id` (`estadoFactura`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`idMesa`),
  ADD KEY `fk_mesa_personaUsuario_id` (`idPersona`);

--
-- Indices de la tabla `persona_usuario`
--
ALTER TABLE `persona_usuario`
  ADD PRIMARY KEY (`idPersona`),
  ADD UNIQUE KEY `contraseña` (`contraseña`),
  ADD KEY `fk_persona_usuario_rolUsuario_id` (`rolUsuario`);

--
-- Indices de la tabla `producto_menu`
--
ALTER TABLE `producto_menu`
  ADD PRIMARY KEY (`idProducto_menu`,`nombreProducto`),
  ADD KEY `fk_producto_menu_categoria_id` (`categoriaProducto`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `fk_reserva_personaUsuario_id` (`idPersona`),
  ADD KEY `fk_reserva_mesa` (`idMesa`),
  ADD KEY `fk_reserva_estadoReserva_id` (`idEstadoReserva`);

--
-- Indices de la tabla `rol_usuario`
--
ALTER TABLE `rol_usuario`
  ADD PRIMARY KEY (`idRol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `idCalificacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura_pedido`
--
ALTER TABLE `factura_pedido`
  MODIFY `idFactura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona_usuario`
--
ALTER TABLE `persona_usuario`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto_menu`
--
ALTER TABLE `producto_menu`
  MODIFY `idProducto_menu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idReserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `fk_calificacion_facturaPedido_id` FOREIGN KEY (`idFactura`) REFERENCES `factura_pedido` (`idFactura`),
  ADD CONSTRAINT `fk_calificacion_personaUsuario_id` FOREIGN KEY (`idPersona`) REFERENCES `persona_usuario` (`idPersona`);

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `fk_detallePedido_mesa_id` FOREIGN KEY (`idMesa`) REFERENCES `mesa` (`idMesa`),
  ADD CONSTRAINT `fk_detallePedido_mesa_personaUsuario_id` FOREIGN KEY (`idPersona`) REFERENCES `mesa` (`idPersona`),
  ADD CONSTRAINT `fk_detallePedido_productoMenu_id` FOREIGN KEY (`idProducto`) REFERENCES `producto_menu` (`idProducto_menu`);

--
-- Filtros para la tabla `factura_pedido`
--
ALTER TABLE `factura_pedido`
  ADD CONSTRAINT `fk_facturaPedido_detallePedido_id` FOREIGN KEY (`idPedido`) REFERENCES `detalle_pedido` (`idPedido`),
  ADD CONSTRAINT `fk_facturaPedido_estadoFactura_id` FOREIGN KEY (`estadoFactura`) REFERENCES `estado_factura` (`idEstadoFactura`);

--
-- Filtros para la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD CONSTRAINT `fk_mesa_personaUsuario_id` FOREIGN KEY (`idPersona`) REFERENCES `persona_usuario` (`idPersona`);

--
-- Filtros para la tabla `persona_usuario`
--
ALTER TABLE `persona_usuario`
  ADD CONSTRAINT `fk_persona_usuario_rolUsuario_id` FOREIGN KEY (`rolUsuario`) REFERENCES `rol_usuario` (`idRol`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto_menu`
--
ALTER TABLE `producto_menu`
  ADD CONSTRAINT `fk_producto_menu_categoria_id` FOREIGN KEY (`categoriaProducto`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `fk_reserva_estadoReserva_id` FOREIGN KEY (`idEstadoReserva`) REFERENCES `estado_reserva` (`idEstadoReserva`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reserva_mesa` FOREIGN KEY (`idMesa`) REFERENCES `mesa` (`idMesa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reserva_personaUsuario_id` FOREIGN KEY (`idPersona`) REFERENCES `persona_usuario` (`idPersona`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
