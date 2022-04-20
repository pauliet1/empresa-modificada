-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2022 a las 19:35:00
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
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `codc` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `localidad` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`codc`, `nombre`, `localidad`, `categoria`) VALUES
('C01', 'JOSE SANCHEZ', 'ARGANDA', '18'),
('C02', 'MANUEL DIAZ', 'ARGANDA', '15'),
('C03', 'JUAN PEREZ', 'RIVAS', '20'),
('C04', 'LUIS ORTIZ', 'ARGANDA', '18'),
('C05', 'JAVIER MARTIN', 'LOECHES', '12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`codc`,`nombre`,`localidad`,`categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
