-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2022 a las 19:32:04
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `codp` varchar(30) NOT NULL,
  `descrip` varchar(30) NOT NULL,
  `localidad` varchar(30) NOT NULL,
  `cliente` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`codp`, `descrip`, `localidad`, `cliente`, `telefono`) VALUES
('P01', 'GARAJE', 'ARGANDA', 'FELIPE SOL', '600111111'),
('P02', 'SOLADO', 'RIVAS', 'JOSE PEREZ', '912222222'),
('P03', 'GARAJE', 'ARGANDA', 'ROSA LOPEZ', '666999666'),
('P04', 'TECHADO', 'LOECHES', 'JOSE PEREZ', '913333333');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`codp`,`descrip`,`localidad`,`cliente`,`telefono`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
