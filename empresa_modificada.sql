-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2022 a las 19:35:29
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
-- Base de datos: `empresa modificada`
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
('M03', 'VOLQUETE', '11000');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE `trabajos` (
  `CODC` varchar(30) NOT NULL,
  `CODM` varchar(30) NOT NULL,
  `CODP` varchar(30) NOT NULL,
  `FECHA` varchar(30) NOT NULL,
  `TIEMPO` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajos`
--

INSERT INTO `trabajos` (`CODC`, `CODM`, `CODP`, `FECHA`, `TIEMPO`) VALUES
('C02', 'M03', 'P01', '10-09-02', '100'),
('C03', 'M01', 'P02', '10-09-02', '200'),
('C05', 'M03', 'P02', '10-09-02', '150'),
('C04', 'M03', 'P02', '10-09-02', '90'),
('C01', 'M02', 'P02', '12-09-02', '120'),
('C02', 'M03', 'P03', '13-09-02', '30'),
('C03', 'M01', 'P04', '15-09-02', '300'),
('C02', 'M03', 'P02', '15-09-02', 'null'),
('C01', 'M03', 'P04', '15-09-02', '180'),
('C05', 'M03', 'P04', '15-09-02', '90'),
('C01', 'M02', 'P04', '17-09-02', 'null'),
('C02', 'M03', 'P01', '18-09-02', 'null');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`codc`,`nombre`,`localidad`,`categoria`);

--
-- Indices de la tabla `maquinas`
--
ALTER TABLE `maquinas`
  ADD PRIMARY KEY (`CODM`,`nombre`,`PRECIO/HORA`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`codp`,`descrip`,`localidad`,`cliente`,`telefono`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
