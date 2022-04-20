-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2022 a las 19:17:42
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
-- Estructura de tabla para la tabla `maquinas`
--

CREATE TABLE `maquinas` (
  `CODM` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `PRECIO/HORA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `maquinas`
--

INSERT INTO `maquinas` (`CODM`, `nombre`, `PRECIO/HORA`) VALUES
('M01', 'EXCAVADORA', '15000'),
('M02', 'HORMIGONERA', '10000'),
('M03', 'VOLQUETE', '11000'),
('M04', 'APISONADORA', '18000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
