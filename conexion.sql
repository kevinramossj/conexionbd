-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2025 a las 19:41:02
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `conexion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT 1,
  `fecha_creado` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombres`, `apellidos`, `dni`, `telefono`, `correo`, `estado`, `fecha_creado`) VALUES
(1, 'Juan', 'Pérez', '12345678', '999999999', 'juan@gmail.com', 1, '2025-05-28 17:21:09'),
(3, 'Juan', 'Pérez', '12345678', '987654321', 'juan@gmail.com', 1, '2025-05-28 17:24:20'),
(4, 'Juan', 'Pérez', '12345678', '987654321', 'juan@gmail.com', 1, '2025-05-28 17:24:41'),
(5, 'Juan', 'Pérez', '12345678', '987654321', 'juan@gmail.com', 1, '2025-05-28 17:24:42'),
(6, 'Juan', 'Pérez', '12345678', '987654321', 'juan@gmail.com', 1, '2025-05-28 17:24:43'),
(7, 'Juan', 'Pérez', '12345678', '987654321', 'juan@gmail.com', 1, '2025-05-28 17:24:43'),
(8, 'Juan', 'Pérez', '12345678', '987654321', 'juan@gmail.com', 1, '2025-05-28 17:24:43'),
(9, 'Juan', 'Pérez', '12345678', '987654321', 'juan@gmail.com', 1, '2025-05-28 17:24:44'),
(10, 'Juan', 'Pérez', '12345678', '987654321', 'juan@gmail.com', 1, '2025-05-28 17:24:44'),
(11, 'Juan', 'Pérez', '12345678', '987654321', 'juan@gmail.com', 1, '2025-05-28 17:29:13'),
(12, 'Juan', 'Pérez', '12345678', '987654321', 'juan@gmail.com', 1, '2025-05-28 17:33:22');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
