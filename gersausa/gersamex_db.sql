-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-07-2026 a las 23:46:37
-- Versión del servidor: 8.4.7
-- Versión de PHP: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gersamex_db`
--
CREATE DATABASE IF NOT EXISTS `gersamex_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `gersamex_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mas_vendidos`
--

DROP TABLE IF EXISTS `mas_vendidos`;
CREATE TABLE IF NOT EXISTS `mas_vendidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descuento` varchar(100) DEFAULT NULL,
  `estrellas` tinyint DEFAULT '5',
  `precio` decimal(10,2) NOT NULL,
  `precio_descuento` decimal(10,2) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `mas_vendidos`
--

INSERT INTO `mas_vendidos` (`id`, `imagen`, `titulo`, `descuento`, `estrellas`, `precio`, `precio_descuento`, `link`) VALUES
(3, 'img/temp/1785275740_Poderus09.png', 'Calentador Calorex de Paso PODERUS 09 G2 LP', '22% OFF', 5, 508.04, 396.27, 'https://www.gersamex.com/calentador-calorex-de-paso-poderus-09-g2-lp/p'),
(4, 'img/temp/1785275893_intervitro.png', 'Pega Intervitro Supertotal 20 Kg Intervitro', '5% OFF', 5, 9.62, 9.14, 'https://www.gersamex.com/pega-intervitro-supertotal-20-kg-intervitro/p'),
(5, 'img/temp/1785277240_Regadera_cuadrada.png', 'Regadera Cuadrada 10\" Con Brazo Y Chapeton Cromo HEL-H-3303', '25% OFF', 5, 230.22, 172.67, 'https://www.gersamex.com/regadera-cuadrada-10--con-brazo-y-chapeton-cromo-hel-h-3303/p'),
(9, 'img/temp/1785277417_5000lts.png', 'Cisterna 5000 Litros con sensor de Nivel Rotoplas Sin Equipo', '', 4, 1396.15, 0.00, 'https://www.gersamex.com/cisterna-5000-lts-sin-equipo/p'),
(10, 'img/temp/1785279427_toscananegro.png', 'One Piece Toscana Negro Tendenzza', '', 3, 193.40, 0.00, 'https://www.gersamex.com/one-piece-toscana-negro-tendenzza/p'),
(11, 'img/temp/1785279561_cabina.png', 'Cabina de Cristal Templado - Modelo Roma', '30% OFF', 3, 360.27, 252.19, 'https://www.gersamex.com/cabina-cristal-roma/p'),
(12, 'img/temp/1785279678_lavabonegro.png', '   Lavabo Bari Negro Tendenzza', '', 4, 91.45, 0.00, 'https://www.gersamex.com/lavabo-bari-negro-tendenzza/p'),
(13, 'img/temp/1785279770_mingitorio.png', '  Mingitorio Negev Seco Sistema Tds 2 Blanco HEL-MGNEGEVTDS2', '25% OFF', 5, 633.19, 474.89, 'https://www.gersamex.com/mingitorio-negev-seco-sistema-tds-2-blanco/p'),
(14, 'img/temp/1785280452_tarja.png', 'Kit Fregadero con Escurridor Izquierdo Eb Técnica EB-COMBOM-101', '5% OFF', 3, 76.76, 72.92, 'https://www.gersamex.com/kit-fregadero-con-escurridor-izquierdo-eb-tecnica-eb-combom-101/p'),
(15, 'img/temp/1785280697_vertical.png', 'Tinaco Vertical 1000 Lts Rotoplas', '', 5, 271.56, 0.00, 'https://www.gersamex.com/tinaco-vertical-1100-lts-rotoplas/p'),
(16, 'img/temp/1785280811_mezcladora.png', 'Monomando para fregadero Helvex E-305', '25% OFF', 5, 890.38, 667.79, 'https://www.gersamex.com/monando-fregadero-gourmet/p'),
(17, 'img/temp/1785280898_galaxy.png', 'Loseta Galaxy Gris 33.6X33.6 | $118 m2 por metro', '', 5, 10.08, 0.00, 'https://www.gersamex.com/loseta-galaxy-gris-33-6-x-33-6/p');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

DROP TABLE IF EXISTS `promociones`;
CREATE TABLE IF NOT EXISTS `promociones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text,
  `descuento` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `promociones`
--

INSERT INTO `promociones` (`id`, `imagen`, `titulo`, `descripcion`, `descuento`) VALUES
(1, 'img/temp/1785281080_verano.png', 'OFERTAS DE VERANO', 'Aprovecha nuestras promociones especiales en calentadores.', 'Hasta 25% OFF'),
(2, 'img/temp/1785281220_helvex_(1).png', 'WC PREMIUM HELVEX', 'Exclusivo para modelos OP Capri Plus, OP Rivoli Plus, WC Murano', '50% OFF'),
(3, 'img/temp/1785281910_pisos.png', 'PISOS Y AZULEJOS PARA TI', 'Tenemos los mejores pisos y azulejos, asesórate y cotiza con nosotros.', '000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
