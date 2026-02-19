-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-02-2026 a las 16:22:23
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
-- Base de datos: `hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atencion`
--

CREATE TABLE `atencion` (
  `id_atencion` int(11) NOT NULL,
  `id_reserva` int(11) NOT NULL,
  `id_empleados` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `nota` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `atencion`
--

INSERT INTO `atencion` (`id_atencion`, `id_reserva`, `id_empleados`, `fecha`, `nota`) VALUES
(1, 6, 1, '2026-01-07', 'no le abrio la puerta al cliente'),
(2, 7, 2, '2000-05-02', 'el solicito mas comida'),
(3, 8, 3, '2026-02-09', 'el cliente solicito toallas'),
(4, 9, 4, '2026-02-01', 'se solicita que limpie la habitacion'),
(5, 10, 5, '1940-03-05', 'el cliente pidio salir');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `email`, `telefono`, `fecha_registro`) VALUES
(1, 'juan', 'juan@gmail.com', '667 246 3201', '2026-02-16'),
(2, 'matias gerardo sazueta', 'matiasjose@gmail.com', '667 469 4379', '2020-05-08'),
(3, 'sans', 'mortadela@gmail.com', '667 745 6853', '2026-02-18'),
(4, 'jose luiz marquez', 'luisangel@gmail.com', '667 578 2764', '2026-02-02'),
(5, 'son goku', 'gokulegana@gmail.com', '6672463467', '2024-02-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleados` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleados`, `id_hotel`, `nombre`, `puesto`, `email`) VALUES
(1, 1, 'jose luis', 'portero', 'joseluis@gmail.com'),
(2, 2, 'juan', 'cocinero', 'juan@gmail.com'),
(3, 3, 'carlos wario', 'recepsionista', 'carlo@gmail.com'),
(4, 1, 'leopoldo lopez moreno', 'conserje', 'leopoldolopez@gmail.com'),
(5, 2, 'raul gomez quiros', 'recepsionista', 'raulgomez@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `id_habitacion` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `precio_noche` double NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`id_habitacion`, `id_hotel`, `numero`, `tipo`, `precio_noche`, `estado`) VALUES
(0, 2, 268, 'solo', 600, 'desocupada'),
(1, 1, 309, 'doble', 1200, 'ocupada'),
(3, 3, 340, 'triple', 1800, 'ocupada'),
(4, 1, 406, 'cuadruple', 2400, 'desocupada'),
(5, 2, 2, 'solo', 600, 'ocupada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `id_hotel` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `nombre`, `ciudad`, `telefono`) VALUES
(1, 'Hotel San Luis lindavista', 'culiacan', '(667) 759 2000'),
(2, 'Hotel Lucerna Culiacán:', 'culiacan', '667) 759 0000'),
(3, 'Ramada Hola Culiacán: ', 'culiacan', ' (667) 716 5850');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id_reser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago2`
--

CREATE TABLE `pago2` (
  `id_pago` int(11) NOT NULL,
  `id_reserva` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `monto` double NOT NULL,
  `metodo` varchar(100) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `estado_pago` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago2`
--

INSERT INTO `pago2` (`id_pago`, `id_reserva`, `fecha_pago`, `monto`, `metodo`, `referencia`, `estado_pago`) VALUES
(1, 1, '2000-01-12', 5726400, 'efectivo', 'DEP-HTL-0001', 'PAGADO'),
(2, 2, '2025-07-07', 7300, 'tarjeta', 'TAR-HTL-0001', 'pendiente'),
(3, 2, '2025-07-07', 136800, 'tarjeta', 'TAR-HTL-0001', 'cancelada'),
(4, 4, '2026-01-01', 28000, 'efectivo', 'EFE-HTL-0001', 'pendiente'),
(5, 5, '2025-08-13', 119400, 'tarjeta', 'TAR-HTL-0001', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `num_huespedes` int(11) NOT NULL,
  `estado_reserva` varchar(20) NOT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `id_cliente`, `id_habitacion`, `fecha_entrada`, `fecha_salida`, `num_huespedes`, `estado_reserva`, `fecha_creacion`) VALUES
(1, 1, 0, '2000-01-12', '2026-02-28', 1, 'vigente', '2026-02-18'),
(2, 2, 1, '2025-07-07', '2025-11-07', 2, 'vencida', '2026-02-18'),
(3, 3, 5, '2025-02-01', '2031-04-30', 1, 'cancelada', '2026-02-18'),
(4, 4, 3, '2026-01-01', '2026-02-18', 4, 'vigente', '2026-02-18'),
(5, 5, 4, '2025-08-13', '2026-02-28', 4, 'vigente', '2026-02-18'),
(6, 4, 5, '2026-01-07', '2026-02-26', 1, 'vigente', '2026-02-18'),
(7, 1, 4, '2000-05-02', '2045-05-01', 1, 'vigente', '2026-02-18'),
(8, 2, 3, '2026-02-09', '2026-02-28', 3, 'vigente', '2026-02-18'),
(9, 3, 0, '2026-02-01', '2026-04-09', 1, 'cancelada', '2026-02-18'),
(10, 5, 1, '0000-01-01', '2026-02-18', 1, 'vigente', '2026-02-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva_servicio`
--

CREATE TABLE `reserva_servicio` (
  `id_reserva` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva_servicio`
--

INSERT INTO `reserva_servicio` (`id_reserva`, `id_servicio`, `cantidad`, `precio`) VALUES
(1, 2, 4, 120),
(2, 3, 2, 120),
(3, 5, 3, 120),
(4, 1, 5, 250),
(5, 4, 3, 240),
(6, 1, 6, 300),
(7, 2, 7, 210),
(8, 3, 3, 180),
(9, 4, 2, 120),
(10, 5, 1, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio_base` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `nombre`, `precio_base`) VALUES
(1, 'lavanderia', 50),
(2, 'desayuno', 30),
(3, 'estacionamiento/por dia', 60),
(4, 'sala de cine', 80),
(5, 'gimnacio', 40);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD PRIMARY KEY (`id_atencion`),
  ADD KEY `id_reserva` (`id_reserva`),
  ADD KEY `id_empleados` (`id_empleados`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleados`),
  ADD KEY `id_empleados` (`id_empleados`,`id_hotel`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`id_habitacion`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indices de la tabla `pago2`
--
ALTER TABLE `pago2`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `id_reserva` (`id_reserva`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_habitacion` (`id_habitacion`);

--
-- Indices de la tabla `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atencion`
--
ALTER TABLE `atencion`
  MODIFY `id_atencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pago2`
--
ALTER TABLE `pago2`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD CONSTRAINT `atencion_ibfk_1` FOREIGN KEY (`id_empleados`) REFERENCES `empleados` (`id_empleados`),
  ADD CONSTRAINT `atencion_ibfk_2` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`);

--
-- Filtros para la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `habitacion_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`);

--
-- Filtros para la tabla `pago2`
--
ALTER TABLE `pago2`
  ADD CONSTRAINT `pago2_ibfk_1` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_habitacion`) REFERENCES `habitacion` (`id_habitacion`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD CONSTRAINT `reserva_servicio_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
