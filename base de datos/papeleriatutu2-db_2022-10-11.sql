-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 11-10-2022 a las 04:26:14
-- Versión del servidor: 8.0.29
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `papeleriatutu2`
--
CREATE DATABASE IF NOT EXISTS `papeleriatutu2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `papeleriatutu2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `categoria_id` int NOT NULL AUTO_INCREMENT,
  `categoria_nombre` varchar(50) NOT NULL,
  `categoria_ubicacion` varchar(20) NOT NULL,
  PRIMARY KEY (`categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_ubicacion`) VALUES
(1, 'Tecnologia', 'Bodega1'),
(2, 'cuadernos', 'bodega1'),
(3, 'escritura', 'bodega1'),
(4, 'papeles ', 'bodega1'),
(5, 'Agendas', 'bodega1'),
(6, 'arte', 'bodega1'),
(7, 'utiles', 'bodega1'),
(8, 'morrales', 'bodega1'),
(9, 'tableros_y_carteleras', 'bodega1'),
(10, 'archivo', 'bodega1'),
(11, 'cintas_y_pegantes', 'bodega1'),
(12, 'libros', 'bodega1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `cliente_id` int NOT NULL AUTO_INCREMENT,
  `cliente_nombre` varchar(40) NOT NULL,
  `cliente_apellido` varchar(40) NOT NULL,
  `cliente_usuario` varchar(20) NOT NULL,
  `cliente_clave` varchar(20) NOT NULL,
  `cliente_documento` bigint NOT NULL,
  `cliente_email` varchar(70) NOT NULL,
  `cliente_direccion` varchar(70) NOT NULL,
  `cliente_telefono` bigint NOT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `cliente_nombre`, `cliente_apellido`, `cliente_usuario`, `cliente_clave`, `cliente_documento`, `cliente_email`, `cliente_direccion`, `cliente_telefono`) VALUES
(3, 'Clientenombre01', 'AREVALO', 'clienteusuario3', '12345', 1111111111, 'karindiosesa@webmail.com', 'direccion001', 3111111111),
(4, 'Clientenombre02', 'AREVALO', 'clienteusuario4', '12346', 1111111112, 'nosveremosenelrio@hotmail.com', 'direccion002', 3111111112),
(5, 'Clientenombre03', 'PADILLA', 'clienteusuario5', '12347', 1111111113, 'karenmontezasaavedra@webmail.com', 'direccion003', 3111111113),
(6, 'Clientenombre04', 'PADILLA', 'clienteusuario6', '12348', 1111111114, 'segolady23@webmail.com', 'direccion004', 3111111114),
(7, 'Clientenombre05', 'RUIZ', 'clienteusuario7', '12349', 1111111115, 'pamzav32pam@webmail.com', 'direccion005', 3111111115),
(8, 'Clientenombre06', 'PADILLA', 'clienteusuario8', '12350', 1111111116, 'nellyvl3003.nv@webmail.com', 'direccion006', 3111111116),
(9, 'Clientenombre07', 'PADILLA', 'clienteusuario9', '12351', 1111111117, 'cindyvasquezceliz85@webmail.com', 'direccion007', 3111111117),
(10, 'Clientenombre08', 'OLIVERA', 'clienteusuario10', '12352', 1111111118, 'maynasruddy8@webmail.com', 'direccion008', 3111111118),
(11, 'Clientenombre09', 'PADILLA', 'clienteusuario11', '12353', 1111111119, 'keliz.090882@webmail.com', 'direccion009', 3111111119),
(12, 'Clientenombre10', 'PADILLA', 'clienteusuario12', '12354', 1111111120, 'reyeszapata@hotmail.com', 'direccion010', 3111111120),
(13, 'Clientenombre11', 'PADILLA', 'clienteusuario13', '12355', 1111111121, 'Luesave35@webmail.com.com', 'direccion011', 3111111121),
(14, 'Clientenombre12', 'VELA', 'clienteusuario14', '12356', 1111111122, 'aaa@nnombre', 'direccion012', 3111111122),
(15, 'Clientenombre13', 'PADILLA', 'clienteusuario15', '12357', 1111111123, 'nixacastilloalayo@webmail.com', 'direccion013', 3111111123),
(16, 'Clientenombre14', 'PADILLA', 'clienteusuario16', '12358', 1111111124, 'katterinemonterofarfan@webmail.com', 'direccion014', 3111111124),
(17, 'Clientenombre15', 'PADILLA', 'clienteusuario17', '12359', 1111111125, 'olga.malcacruz@hotmail.com', 'direccion015', 3111111125),
(18, 'Clientenombre16', 'PADILLA', 'clienteusuario18', '12360', 1111111126, 'vaneu2032@hotmail.com', 'direccion016', 3111111126),
(19, 'Clientenombre17', 'RUIZ', 'clienteusuario19', '12361', 1111111127, 'josefamontufars@webmail.com', 'direccion017', 3111111127),
(20, 'Clientenombre18', 'INACTIVAS', 'clienteusuario20', '12362', 1111111128, 'sandracruz_302208@hotmail.com', 'direccion018', 3111111128),
(21, 'Clientenombre19', 'PADILLA', 'clienteusuario21', '12363', 1111111129, 'brihannarodri@webmail.com', 'direccion019', 3111111129),
(22, 'Clientenombre20', 'PADILLA', 'clienteusuario22', '12364', 1111111130, 'lizal_0533@hotmail.com', 'direccion020', 3111111130),
(23, 'Clientenombre21', 'PADILLA', 'clienteusuario23', '12365', 1111111131, 'superbellotona@hotmail.com', 'direccion021', 3111111131),
(24, 'Clientenombre22', 'RUIZ', 'clienteusuario24', '12366', 1111111132, 'Tiffany_dl30@hotmail.com', 'direccion022', 3111111132),
(25, 'Clientenombre23', 'RUIZ', 'clienteusuario25', '12367', 1111111133, 'rociosanchezt854@webmail.com', 'direccion023', 3111111133),
(26, 'Clientenombre24', 'PADILLA', 'clienteusuario26', '12368', 1111111134, 'zoidelitsaurintanchiva@webmail.com', 'direccion024', 3111111134),
(27, 'Clientenombre25', 'RUIZ', 'clienteusuario27', '12369', 1111111135, 'aloperamiz40@webmail.com', 'direccion025', 3111111135),
(28, 'Clientenombre26', 'PADILLA', 'clienteusuario28', '12370', 1111111136, 'gladysgamboa3899@webmail.com', 'direccion026', 3111111136),
(29, 'Clientenombre27', 'PADILLA', 'clienteusuario29', '12371', 1111111137, 'jimena_picis_35@hotmail.com', 'direccion027', 3111111137),
(30, 'Clientenombre28', 'PADILLA', 'clienteusuario30', '12372', 1111111138, 'Esvita-28-88@hotmail.com', 'direccion028', 3111111138),
(31, 'Clientenombre29', 'BERNA', 'clienteusuario31', '12373', 1111111139, 'florllape_95@hotmail.com', 'direccion029', 3111111139),
(32, 'Clientenombre30', 'PADILLA', 'clienteusuario32', '12374', 1111111140, 'irazoe358.35@webmail.com', 'direccion030', 3111111140),
(33, 'Clientenombre31', 'AREVALO', 'clienteusuario33', '12375', 1111111141, 'Luci_35_08@hotmail.com', 'direccion031', 3111111141),
(34, 'Clientenombre32', 'PADILLA', 'clienteusuario34', '12376', 1111111142, 'rosaflores_3908@hotmail.com', 'direccion032', 3111111142),
(35, 'Clientenombre33', 'AREVALO', 'clienteusuario35', '12377', 1111111143, 'marle28_05@hotmail.com', 'direccion033', 3111111143),
(36, 'Clientenombre34', 'INACTIVAS', 'clienteusuario36', '12378', 1111111144, 'marialeylagt@webmail.com', 'direccion034', 3111111144),
(37, 'Clientenombre35', 'CARDENAS', 'clienteusuario37', '12379', 1111111145, 'avellanedateobaldina@webmail.com', 'direccion035', 3111111145),
(38, 'Clientenombre36', 'CARDENAS', 'clienteusuario38', '12380', 1111111146, 'Torresdiezkarina@webmail.com', 'direccion036', 3111111146),
(39, 'Clientenombre37', 'CARDENAS', 'clienteusuario39', '12381', 1111111147, 'nellyhbazan@webmail.com', 'direccion037', 3111111147),
(40, 'Clientenombre38', 'PADILLA', 'clienteusuario40', '12382', 1111111148, 'yovi20_33@hotmail.com', 'direccion038', 3111111148),
(41, 'Clientenombre39', 'INACTIVAS', 'clienteusuario41', '12383', 1111111149, 'marytaty@yahoo.es', 'direccion039', 3111111149),
(42, 'Clientenombre40', 'PADILLA', 'clienteusuario42', '12384', 1111111150, 'ros283232@hotmail.com', 'direccion040', 3111111150),
(43, 'Clientenombre41', 'PADILLA', 'clienteusuario43', '12385', 1111111151, 'noelialucia.33@webmail.com', 'direccion041', 3111111151),
(44, 'Clientenombre42', 'PADILLA', 'clienteusuario44', '12386', 1111111152, 'Piacita05@webmail.com', 'direccion042', 3111111152),
(45, 'Clientenombre43', 'PADILLA', 'clienteusuario45', '12387', 1111111153, 'LIZMIBAC@HOTMAIL.COM', 'direccion043', 3111111153),
(46, 'Clientenombre44', 'CARDENAS', 'clienteusuario46', '12388', 1111111154, 'rebecaagurto@webmail.com', 'direccion044', 3111111154),
(47, 'Clientenombre45', 'AREVALO', 'clienteusuario47', '12389', 1111111155, 'islitosa@webmail.com', 'direccion045', 3111111155),
(48, 'Clientenombre46', 'PADILLA', 'clienteusuario48', '12390', 1111111156, 'isabelconcha@hotmail.com', 'direccion046', 3111111156),
(49, 'Clientenombre47', 'PADILLA', 'clienteusuario49', '12391', 1111111157, 'Judicita3399@hitmail.com', 'direccion047', 3111111157),
(50, 'Clientenombre48', 'PADILLA', 'clienteusuario50', '12392', 1111111158, 'castillomacedoangy@webmail.com', 'direccion048', 3111111158),
(51, 'Clientenombre49', 'GONZAGA', 'clienteusuario51', '12393', 1111111159, 'nolita_cpc@hotmail.com', 'direccion049', 3111111159),
(52, 'Clientenombre50', 'INACTIVAS', 'clienteusuario52', '12394', 1111111160, 'Suyonnatali05@webmail.com', 'direccion050', 3111111160);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_entrada`
--

DROP TABLE IF EXISTS `pedido_entrada`;
CREATE TABLE IF NOT EXISTS `pedido_entrada` (
  `pedido_entrada_id` int NOT NULL AUTO_INCREMENT,
  `proveedor_id` int NOT NULL,
  `producto_id` int NOT NULL,
  `pedido_entrada_cantidad` double(30,2) NOT NULL,
  PRIMARY KEY (`pedido_entrada_id`),
  KEY `proveedor_id` (`proveedor_id`),
  KEY `producto_id` (`producto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pedido_entrada`
--

INSERT INTO `pedido_entrada` (`pedido_entrada_id`, `proveedor_id`, `producto_id`, `pedido_entrada_cantidad`) VALUES
(2, 1, 75, 45.00),
(3, 1, 69, 45.00),
(4, 1, 75, 34.00),
(5, 1, 84, 12.00),
(6, 1, 90, 1.00),
(7, 1, 98, 16.00),
(8, 1, 105, 41.00),
(9, 1, 111, 33.00),
(10, 1, 115, 21.00),
(11, 2, 131, 41.00),
(12, 3, 454, 39.00),
(13, 3, 458, 15.00),
(14, 3, 459, 7.00),
(15, 3, 461, 38.00),
(16, 3, 462, 49.00),
(17, 3, 465, 41.00),
(18, 2, 470, 37.00),
(19, 2, 505, 27.00),
(20, 2, 506, 30.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_salida`
--

DROP TABLE IF EXISTS `pedido_salida`;
CREATE TABLE IF NOT EXISTS `pedido_salida` (
  `pedido_salida_id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `producto_id` int NOT NULL,
  `pedido_salida_cantidad` double(30,2) NOT NULL,
  PRIMARY KEY (`pedido_salida_id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `producto_id` (`producto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pedido_salida`
--

INSERT INTO `pedido_salida` (`pedido_salida_id`, `cliente_id`, `producto_id`, `pedido_salida_cantidad`) VALUES
(1, 12, 69, 19.00),
(2, 14, 78, 36.00),
(3, 30, 96, 17.00),
(4, 6, 103, 23.00),
(5, 7, 107, 41.00),
(6, 23, 128, 11.00),
(7, 10, 131, 12.00),
(8, 47, 454, 5.00),
(9, 5, 457, 20.00),
(10, 40, 462, 2.00),
(11, 32, 466, 31.00),
(12, 44, 470, 10.00),
(13, 4, 506, 15.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `producto_id` int NOT NULL AUTO_INCREMENT,
  `producto_codigo` int NOT NULL,
  `producto_nombre` varchar(70) NOT NULL,
  `producto_stock` double(30,2) NOT NULL,
  `producto_precioEntrada` double(30,2) NOT NULL,
  `producto_precioSalida` double(30,2) NOT NULL,
  `producto_foto` varchar(500) NOT NULL,
  `categoria_id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `proveedor_id` int NOT NULL,
  PRIMARY KEY (`producto_id`),
  KEY `categoria_id` (`categoria_id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `proveedor_id` (`proveedor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=552 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_stock`, `producto_precioEntrada`, `producto_precioSalida`, `producto_foto`, `categoria_id`, `usuario_id`, `proveedor_id`) VALUES
(68, 100, 'AGENDA 2022', 1.00, 10000.00, 17500.00, 'pendiente', 5, 1, 1),
(69, 4931, 'ARCHIVADOR OFICIO OE-456', 2.00, 10800.00, 17280.00, 'pendiente', 10, 1, 1),
(70, 429, 'BALSO CUADRADO 12*12MM PQ *25', 3.00, 1665.00, 971.00, 'pendiente', 6, 1, 1),
(71, 432, 'BALSO CUADRADO 25*25 MM PQ *25', 4.00, 2160.00, 945.00, 'pendiente', 6, 1, 1),
(72, 435, 'BALSO CUADRADO 8*8 MM PQ *25', 5.00, 1850.00, 648.00, 'pendiente', 6, 1, 1),
(73, 528, 'BISTURI MEDIANO ECONOMICO', 6.00, 2100.00, 980.00, 'pendiente', 7, 1, 1),
(74, 530, 'BISTURI PEQUEÑO ECONOMICO', 7.00, 2100.00, 600.00, 'pendiente', 7, 1, 1),
(75, 581, 'BLOCK CARTA BLANCO NORMA', 8.00, 14800.00, 2997.00, 'pendiente', 4, 1, 1),
(76, 592, 'BLOCK DIN A 4', 9.00, 11250.00, 2188.00, 'pendiente', 4, 1, 1),
(77, 6239, 'BOLIGRAFO OE  GEL ESCARCHADO *6', 10.00, 37200.00, 6510.00, 'pendiente', 3, 1, 1),
(78, 767, 'BOMBA SERPENTEX R 12', 11.00, 2134.00, 340.00, 'pendiente', 6, 1, 1),
(79, 8735, 'BORRADOR OE 124 DE GOMA', 12.00, 5760.00, 802.00, 'pendiente', 7, 1, 1),
(80, 796, 'BORRADOR PELIKAN P Z 60', 13.00, 2990.00, 403.00, 'pendiente', 7, 1, 1),
(81, 1087, 'CARPETA OFICIO CARTON HORIZONTAL', 14.00, 2310.00, 289.00, 'pendiente', 10, 1, 1),
(82, 1308, 'CARTUCHERA ESTAMPADA  ECONOMICA', 15.00, 11400.00, 1520.00, 'pendiente', 8, 1, 1),
(83, 7966, 'CARTUCHERA TRIPLE PARA COLOREAR', 16.00, 84800.00, 8480.00, 'pendiente', 8, 1, 1),
(84, 3198, 'CINTA 48 *20 YARDAS ALGOTEX P*100', 17.00, 10710.00, 1008.00, 'pendiente', 11, 1, 1),
(85, 1478, 'CINTA AISLANTE 18*5 YARDAS ALGOTEX P*10 NEGRO Y COLOR ', 18.00, 12060.00, 1005.00, 'pendiente', 11, 1, 1),
(86, 1488, 'CINTA DE ENMASCARAR 12*20 SOCO', 19.00, 14250.00, 1200.00, 'pendiente', 11, 1, 1),
(87, 1492, 'CINTA DE ENMASCARAR 18*20*20 SOCO', 20.00, 18600.00, 1702.00, 'pendiente', 11, 1, 1),
(88, 1498, 'CINTA DE ENMASCARAR 48*20 SOCO', 21.00, 47250.00, 3938.00, 'pendiente', 11, 1, 1),
(89, 6151, 'COLORES KORES JUMBO UNA PUNTA', 22.00, 171600.00, 13182.00, 'pendiente', 3, 1, 1),
(90, 1653, 'COLORES RECREO BEROL DOBLE PUNTA', 23.00, 106950.00, 5906.00, 'pendiente', 3, 1, 1),
(91, 4926, 'COLORES STAR X 12', 24.00, 48000.00, 3500.00, 'pendiente', 3, 1, 1),
(92, 8295, 'CORRECTOR OE 262 CINTA 10MM', 25.00, 45000.00, 3006.00, 'pendiente', 7, 1, 1),
(93, 1885, 'CUADERNILLO DOBLE  O FABRIFOLD  p280', 26.00, 14300.00, 963.00, 'pendiente', 2, 1, 1),
(94, 1894, 'CUADERNILLO DOBLE  O NORMA Y KIUT JEAN B', 27.00, 29700.00, 1925.00, 'pendiente', 2, 1, 1),
(95, 6376, 'CUADERNILLO VERTICAL EMIS/CRAZY', 28.00, 23800.00, 1488.00, 'pendiente', 2, 1, 1),
(96, 2034, 'CUADERNILLO VERTICAL PASTA DURA LUKYS', 29.00, 84100.00, 4988.00, 'pendiente', 2, 1, 1),
(97, 1959, 'CUADERNO DE DIBUJO ANILLADO', 30.00, 174000.00, 8700.00, 'pendiente', 2, 1, 1),
(98, 8159, 'CUADERNO LINK STIKER 80P', 31.00, 57350.00, 2498.00, 'pendiente', 2, 1, 1),
(99, 1912, 'CUARDERNO ECONOMICO IMÁGENES CUADRO GRANDE', 32.00, 33600.00, 1838.00, 'pendiente', 2, 1, 1),
(100, 2119, 'DIRECTORIO PEQUEÑO', 33.00, 72600.00, 3850.00, 'pendiente', 5, 1, 1),
(101, 6368, 'ESCARCHA LIQUIDA OE 224 35GR', 34.00, 28900.00, 1488.00, 'pendiente', 6, 1, 1),
(102, 2385, 'FORRO ACETATO COSIDO ', 35.00, 10150.00, 508.00, 'pendiente', 7, 1, 1),
(103, 8840, 'LAPIZ CARBONCILLO POINTER ', 36.00, 19080.00, 1272.00, 'pendiente', 3, 1, 1),
(104, 7868, 'LAPIZ YUMBO KORES NEGRO', 37.00, 27750.00, 1313.00, 'pendiente', 3, 1, 1),
(105, 7870, 'LAPIZ YUMBO KORES NEGRO Y ROJO', 38.00, 28500.00, 1313.00, 'pendiente', 3, 1, 1),
(106, 10745, 'MARCADOR DE BILLETES ESFERO', 39.00, 54600.00, 2450.00, 'pendiente', 3, 1, 1),
(107, 2784, 'MARCADOR DE BILLETES PELIKAN', 40.00, 124000.00, 5425.00, 'pendiente', 3, 1, 1),
(108, 2854, 'MICROPUNTA OE NEGRO', 41.00, 24600.00, 1200.00, 'pendiente', 3, 1, 1),
(109, 2860, 'MICROPUNTA PELIKAN', 42.00, 30660.00, 1460.00, 'pendiente', 3, 1, 1),
(110, 2871, 'MINAS 2MM ECONO TUBO', 43.00, 21500.00, 1000.00, 'pendiente', 7, 1, 1),
(111, 4783, 'PAPEL FOTOGRAFICO ONIX 200G', 44.00, 14960.00, 850.00, 'pendiente', 4, 1, 1),
(112, 10315, 'PAPEL FOTOGRAFICO PROPALCORTE 200G', 45.00, 5985.00, 233.00, 'pendiente', 4, 1, 1),
(113, 9290, 'PEGANTE INSTANTANEO OE', 46.00, 35880.00, 1248.00, 'pendiente', 7, 1, 1),
(114, 3655, 'PLASTILINA EN BARRA ', 47.00, 16215.00, 552.00, 'pendiente', 6, 1, 1),
(115, 3688, 'PLUMON OE *12', 48.00, 216000.00, 7875.00, 'pendiente', 3, 1, 1),
(116, 9733, 'PLUMON OE *18', 49.00, 338100.00, 12075.00, 'pendiente', 3, 1, 1),
(117, 3818, 'REGLA 30CMS FLEXIBLE', 50.00, 32000.00, 1120.00, 'pendiente', 7, 1, 1),
(118, 3841, 'REPUESTO ARGOLLADO ESTAMPADO EMIS ', 51.00, 188700.00, 5994.00, 'pendiente', 4, 1, 1),
(119, 3842, 'REPUESTO ARGOLLADO FABRIFOLDER', 52.00, 101400.00, 3218.00, 'pendiente', 4, 1, 1),
(120, 9463, 'TAJALAPIZ CON DEPOSITO 2H *12  8917', 53.00, 26500.00, 875.00, 'pendiente', 7, 1, 1),
(121, 8736, 'TAJALAPIZ CON DEPOSITO CON BORRADOR1H *12 ', 54.00, 29700.00, 1001.00, 'pendiente', 7, 1, 1),
(122, 4312, 'TEMPERA PAYASITO*6', 55.00, 82500.00, 2625.00, 'pendiente', 6, 1, 1),
(123, 1967, 'CUADERNO ARGOLLADO 105 80 H  LUKIS', 56.00, 338800.00, 7865.00, 'pendiente', 2, 1, 1),
(124, 8725, 'CUADERNO ARGOLLADO 105 80 H  PRIMAVERA', 57.00, 330600.00, 7540.00, 'pendiente', 2, 1, 1),
(125, 4669, 'CUADERNO ARGOLLADO 7M 105  LUKAS', 58.00, 864200.00, 20115.00, 'pendiente', 2, 1, 1),
(126, 2855, 'MICROPUNTA OE-70 COLORES X10', 59.00, 324500.00, 8800.00, 'pendiente', 3, 1, 1),
(127, 3363, 'PASTA ARGOLLA 105 CON TAPA ', 60.00, 372000.00, 9052.00, 'pendiente', 10, 1, 1),
(128, 8729, 'REPUESTO ESTAMPADO 105 PRIMAVERA 80H', 61.00, 244000.00, 6000.00, 'pendiente', 4, 1, 1),
(129, 99999932, 'LAPIZ KORES ROJO JUMBO', 62.00, 56420.00, 1593.00, 'pendiente', 3, 1, 1),
(130, 99999933, 'RESMA CARTA REPROGRAF', 63.00, 592200.00, 12370.00, 'pendiente', 4, 1, 2),
(131, 99999934, 'RESMA OFICIO REPROGRAF', 64.00, 672000.00, 14007.00, 'pendiente', 4, 1, 2),
(132, 10634, 'TIJERA ESTAMPADA ESCOLAR  XUAN BO D24', 65.00, 71500.00, 1925.00, 'pendiente', 7, 1, 1),
(133, 5547, 'CUADERNILLO VERTICAL PRIMAVERA 1576 P144', 66.00, 122100.00, 3293.00, 'pendiente', 2, 1, 1),
(134, 1474, 'CINTA DE EMPAQUE 18*40 SOCO', 67.00, 90450.00, 2309.00, 'pendiente', 11, 1, 1),
(135, 1495, 'CINTA DE EMASCARAR 24MM*25MTR', 68.00, 163200.00, 3960.00, 'pendiente', 11, 1, 1),
(136, 6263, 'TIJERA PUNTA ROMA  OE-234', 69.00, 75900.00, 1925.00, 'pendiente', 7, 1, 1),
(137, 4326, 'TIJERA OE-230 OFICINA 8,5¨´', 70.00, 217000.00, 5406.00, 'pendiente', 7, 1, 1),
(138, 8004, 'TIJERA OE-230 OFICINA 6,5¨´', 71.00, 142000.00, 3500.00, 'pendiente', 7, 1, 1),
(139, 5174, 'PORTAMINAS 2MM POINTER BS-1461', 72.00, 57600.00, 2000.00, 'pendiente', 3, 1, 1),
(140, 8721, 'BISTURI OE-114 PUNTA DE LANZA 3 CUCHILLAS P240', 73.00, 211700.00, 5017.00, 'pendiente', 7, 1, 1),
(141, 10299, 'BROCHA BEM 3/4\" MATISSES', 74.00, 170200.00, 4025.00, 'pendiente', 6, 1, 1),
(142, 10494, 'CINTA IMPRESA 15*5MTS SOCO T*96 8800', 75.00, 71250.00, 1520.00, 'pendiente', 11, 1, 1),
(143, 10636, 'COMPAS DE PRECISION*2 CON EXTENSION-607', 76.00, 934800.00, 20910.00, 'pendiente', 7, 1, 1),
(144, 2565, 'JUEGO GEOMETRICO *4 LINEA AZUL SET', 77.00, 127050.00, 2475.00, 'pendiente', 7, 1, 1),
(145, 135, 'ALMOHADILLA OE-560 DACTILAR P144', 78.00, 132600.00, 2720.00, 'pendiente', 7, 1, 1),
(146, 350, 'ATLAS DE COLOMBIA ', 79.00, 122450.00, 3488.00, 'pendiente', 12, 1, 1),
(147, 351, 'ATLAS UNIVERSAL P360', 80.00, 124000.00, 3488.00, 'pendiente', 12, 1, 1),
(148, 10300, 'BROCHA BEM 1\" MATISSES 830', 81.00, 243000.00, 5010.00, 'pendiente', 6, 1, 1),
(149, 10490, 'BROCHA P*3 AR 160', 82.00, 295200.00, 7020.00, 'pendiente', 6, 1, 1),
(150, 9149, 'CARPETA OE-809 LEGAJADOR OFICIO C/G P200', 83.00, 132800.00, 2720.00, 'pendiente', 10, 1, 1),
(151, 11237, 'CARPETA OE-804 SEGURIDAD CON C/GANCHO P200', 84.00, 210000.00, 4175.00, 'pendiente', 10, 1, 1),
(152, 1261, 'CARTON PAJA CREMA 1/2 PLIEGO', 85.00, 54400.00, 1120.00, 'pendiente', 4, 1, 1),
(153, 1266, 'CARTON PAJA PLIEGO', 86.00, 110080.00, 2240.00, 'pendiente', 4, 1, 1),
(154, 1467, 'CINTA 48*20 MTS SOCO PACA*192 4024', 87.00, 68730.00, 1375.00, 'pendiente', 11, 1, 1),
(155, 1788, 'CORRECTOR OE-252 LAPIZ ', 88.00, 66000.00, 1313.00, 'pendiente', 7, 1, 1),
(156, 8872, 'CORRECTOR OE-256 LAPIZ', 89.00, 53400.00, 1050.00, 'pendiente', 7, 1, 1),
(157, 2355, 'FIGURAS FOMY ADHESIVOS 3D', 90.00, 184500.00, 3588.00, 'pendiente', 6, 1, 1),
(158, 8015, 'FOAMY CAUCHO ESPUMA 1/8 NORMAL', 91.00, 26390.00, 551.00, 'pendiente', 4, 1, 1),
(159, 9739, 'LAPIZ OE-149 ROJO OFF-ESCO', 92.00, 31280.00, 816.00, 'pendiente', 3, 1, 1),
(160, 2790, 'MARCADOR GRAFICO 751 ES*10 SURTIDO P 90', 93.00, 1209000.00, 20020.00, 'pendiente', 3, 1, 1),
(161, 8793, 'OJOS MOVILES COLO 780-6100623', 94.00, 4888.00, 104.00, 'pendiente', 6, 1, 1),
(162, 3271, 'PAPEL CRAFT PLIEGO ', 95.00, 11875.00, 500.00, 'pendiente', 4, 1, 1),
(163, 3272, 'PAPEL CREPE PLIEGO ', 96.00, 31200.00, 601.00, 'pendiente', 4, 1, 1),
(164, 3318, 'PAPEL PERIODICO PLIEGO ', 97.00, 10670.00, 250.00, 'pendiente', 4, 1, 1),
(165, 3327, 'PAPEL SEDA PLIEGO', 98.00, 7350.00, 203.00, 'pendiente', 4, 1, 1),
(166, 3434, 'PEGANTE PAYASITO 20GRS', 99.00, 31185.00, 599.00, 'pendiente', 7, 1, 1),
(167, 743, 'BOMBA R-12*50 RUMATEX', 100.00, 16400.00, 238.00, 'pendiente', 6, 1, 1),
(168, 99999935, 'TEMPERA PAYASITO UND', 101.00, 26159.00, 500.00, 'pendiente', 6, 1, 1),
(169, 4475, 'VINILO PAYASITO 80 GRM ', 102.00, 54570.00, 1033.00, 'pendiente', 6, 1, 1),
(170, 10763, 'CINTA  HOLOGRAMICA ADHESIVA 12*15MTR', 103.00, 39140.00, 760.00, 'pendiente', 11, 1, 1),
(171, 10854, 'CARTULINA MAGICA 1/8 ', 104.00, 55848.00, 1020.00, 'pendiente', 4, 1, 1),
(172, 1363, 'JUEGO GEOMETRICO FLEXIBLE ', 105.00, 294000.00, 4508.00, 'pendiente', 7, 1, 1),
(173, 4409, 'TRANSPORTADOR 180 RAPID P600', 106.00, 48230.00, 796.00, 'pendiente', 7, 1, 1),
(174, 4414, 'TRANSPORTADOR 360 RAPID P600', 107.00, 62060.00, 1015.00, 'pendiente', 7, 1, 1),
(175, 3852, 'RESALTADOR  CHANGLI SET*6', 108.00, 550800.00, 8517.00, 'pendiente', 3, 1, 1),
(176, 10825, 'TAJALAPIZ MAPED GLOBE MAPAMUNDI ', 109.00, 305200.00, 4508.00, 'pendiente', 7, 1, 1),
(177, 3313, 'PAPEL PERGAMINO 1/8 180 GRMS', 110.00, 35200.00, 608.00, 'pendiente', 4, 1, 1),
(178, 1124, 'CARPETA OE-820 SEGURIDAD CON MANIJA ', 111.00, 532800.00, 8016.00, 'pendiente', 10, 1, 1),
(179, 8301, 'MARCADOR SHARPIE NEON SET*5', 112.00, 1108800.00, 17028.00, 'pendiente', 3, 1, 1),
(180, 99999936, 'SHARPIE SET * 3', 113.00, 508500.00, 6795.00, 'pendiente', 3, 1, 1),
(181, 2793, 'MARCADOR METALIZADO 752 PELIKAN*10', 114.00, 1482000.00, 20020.00, 'pendiente', 3, 1, 1),
(182, 2349, 'FICHA PARQUES X6', 115.00, 109250.00, 1501.00, 'pendiente', 4, 1, 1),
(183, 3556, 'PINCEL PLANO No 12 FIQUE', 116.00, 133400.00, 2208.00, 'pendiente', 6, 1, 1),
(184, 3561, 'PINCEL REDONDO No 12 FIQUE', 117.00, 134550.00, 2208.00, 'pendiente', 6, 1, 1),
(185, 8048, 'MARCADOR GRAFICO PELIKAN BLANCO ', 118.00, 177000.00, 2505.00, 'pendiente', 3, 1, 1),
(186, 2346, 'FICHA BIBLIOGRAFICA X 100', 119.00, 142800.00, 1800.00, 'pendiente', 4, 1, 1),
(187, 4665, 'PORTAMINAS 11 CAMUFLADO Y AROMA FRUTAS', 120.00, 37200.00, 713.00, 'pendiente', 3, 1, 1),
(188, 3660, 'PLASTILINA TRENSITO *9 CORTA', 121.00, 49005.00, 689.00, 'pendiente', 6, 1, 1),
(189, 3661, 'PLASTILINA TRENSITO*9 LARGA', 122.00, 98820.00, 1296.00, 'pendiente', 6, 1, 1),
(190, 1816, 'COSEDORA MINI TRANSLUCIDA ', 123.00, 332100.00, 4104.00, 'pendiente', 7, 1, 1),
(191, 10900, 'RESALTADOR OE-532 MEDIANO ', 124.00, 83080.00, 1206.00, 'pendiente', 3, 1, 1),
(192, 3292, 'PAPEL FOTOGRAFICO 200 GRM', 125.00, 30000.00, 720.00, 'pendiente', 4, 1, 1),
(193, 4143, 'SOBRE EXPANDIBLE HILO OE-862 CARTA ', 126.00, 132300.00, 1838.00, 'pendiente', 7, 1, 1),
(194, 4145, 'SOBRE EXPANDIBLE HILO OE-864 OFICIO ', 127.00, 114300.00, 1575.00, 'pendiente', 7, 1, 1),
(195, 4244, 'TAJALAPIZ METALICO UNA FUNCION ', 128.00, 23040.00, 400.00, 'pendiente', 7, 1, 1),
(196, 3577, 'PINTUCARITAS MIMO', 129.00, 46311.00, 1005.00, 'pendiente', 6, 1, 1),
(197, 4623, 'PORTA CARNET PLASTICO ', 130.00, 22750.00, 490.00, 'pendiente', 7, 1, 1),
(198, 4666, 'REATA FLA METALICO', 131.00, 40610.00, 620.00, 'pendiente', 7, 1, 1),
(199, 3435, 'PEGANTE PAYASITO DE 240GR', 132.00, 228360.00, 2803.00, 'pendiente', 7, 1, 1),
(200, 3433, 'PEGANTE PAYASITO DE 120', 133.00, 142310.00, 1712.00, 'pendiente', 7, 1, 1),
(201, 1494, 'CINTA DE ENMASCARAR 24*20 SOCO', 134.00, 190280.00, 2469.00, 'pendiente', 11, 1, 1),
(202, 2649, 'LAPIZ NEGRO KORES HB', 135.00, 40500.00, 810.00, 'pendiente', 3, 1, 1),
(203, 3231, 'PALETA ACRILICA ', 136.00, 136000.00, 1700.00, 'pendiente', 6, 1, 1),
(204, 10468, 'PAPEL FOTOGRAFICO ADHESIVO 135 GRM', 137.00, 45210.00, 1023.00, 'pendiente', 4, 1, 1),
(205, 599, 'BLOCK EDAD MEDIA', 138.00, 124200.00, 1620.00, 'pendiente', 4, 1, 1),
(206, 604, 'BLOCK MANTEQUILLA POR 1/8 *25', 139.00, 264100.00, 3420.00, 'pendiente', 4, 1, 1),
(207, 781, 'BORRADOR OE -130 PEQUEÑO', 140.00, 27300.00, 410.00, 'pendiente', 7, 1, 1),
(208, 1364, 'CARTULINA PIEL DE ANGEL 1/8', 141.00, 24816.00, 352.00, 'pendiente', 3, 1, 1),
(209, 1368, 'CARTULINA PIEL DE ANGEL CARTA', 142.00, 21584.00, 304.00, 'pendiente', 3, 1, 1),
(210, 1104, 'CARPETA OE-812 FUELLE 120', 143.00, 457600.00, 5600.00, 'pendiente', 10, 1, 1),
(211, 10594, 'CUADERNO ARGOLLADO 105/80 ECONOMICO ', 144.00, 309600.00, 4085.00, 'pendiente', 2, 1, 1),
(212, 10595, 'CUADERNO ARGOLLADO 85/100 ECONOMICO', 145.00, 217500.00, 2850.00, 'pendiente', 2, 1, 1),
(213, 6533, 'BLOCK ORIGAMI 20*20  20HOJAS', 146.00, 240900.00, 2888.00, 'pendiente', 4, 1, 1),
(214, 585, 'BLOCK DEGRADE 40 HOJAS ', 147.00, 205800.00, 2408.00, 'pendiente', 4, 1, 1),
(215, 3360, 'PASTA 3 TORNILLO CARTA ', 148.00, 370000.00, 4000.00, 'pendiente', 10, 1, 1),
(216, 614, 'BLOCK ORIGAMI 15*15  50HOJAS NESSAN', 149.00, 275650.00, 3330.00, 'pendiente', 4, 1, 1),
(217, 519, 'BILLETE DIDACTICO *100 CON MONEDAS', 150.00, 217500.00, 2494.00, 'pendiente', 7, 1, 1),
(218, 521, 'BILLETE DIDACTICO *24 ', 151.00, 78520.00, 936.00, 'pendiente', 7, 1, 1),
(219, 4130, 'SILICONA LIQUIDA 30 ML', 152.00, 106400.00, 1400.00, 'pendiente', 7, 1, 1),
(220, 4133, 'SILICONA LIQUIDA 60 ML', 153.00, 183600.00, 2400.00, 'pendiente', 7, 1, 1),
(221, 3971, 'SAGANCHOS', 154.00, 184800.00, 2160.00, 'pendiente', 7, 1, 1),
(222, 3815, 'REGLA ESTAMPADA 30CM PRIMAVERA ', 155.00, 232500.00, 2625.00, 'pendiente', 7, 1, 1),
(223, 8763, 'PLUMON EN ACETATO ETUCHE *6 OE-080-6', 156.00, 327600.00, 3675.00, 'pendiente', 3, 1, 1),
(224, 9276, 'LAPIZ SICO BLANCO ', 157.00, 172700.00, 1859.00, 'pendiente', 3, 1, 1),
(225, 4351, 'TIZA MODISTERIA MARCA TREBOL', 158.00, 66360.00, 735.00, 'pendiente', 7, 1, 1),
(226, 4352, 'TIZA MODISTERIA FINA', 159.00, 58830.00, 648.00, 'pendiente', 7, 1, 1),
(227, 4334, 'TINTA CHINA PELIKAN 15ML', 160.00, 416000.00, 4550.00, 'pendiente', 7, 1, 1),
(228, 3670, 'PLUMILLA TINTA CHINA KLOREX', 161.00, 93380.00, 1015.00, 'pendiente', 3, 1, 1),
(229, 10918, 'FOAMY MOLDEABLE POR 6 SURTIDO ', 162.00, 332100.00, 3690.00, 'pendiente', 4, 1, 1),
(230, 81, 'ACETATO FOTOCOPIA ', 163.00, 39935.00, 490.00, 'pendiente', 4, 1, 1),
(231, 111, 'AGUJA CROCHE', 164.00, 102500.00, 1125.00, 'pendiente', 7, 1, 1),
(232, 110, 'AGUJA CAPOTERA ', 165.00, 11550.00, 154.00, 'pendiente', 7, 1, 1),
(233, 112, 'AGUJA #1', 166.00, 32578.00, 393.00, 'pendiente', 7, 1, 1),
(234, 293, 'ARCILLA LIBRA ', 167.00, 66800.00, 720.00, 'pendiente', 6, 1, 1),
(235, 999991, 'CARTON PIEDRA ', 168.00, 74760.00, 801.00, 'pendiente', 4, 1, 1),
(236, 999992, 'BLOCK ORIGAMI 20 X 20 NESAN * 50 HOJAS', 169.00, 676000.00, 7000.00, 'pendiente', 4, 1, 1),
(237, 576, 'BLOCK BOND 28 * 1/8 BLANCO', 170.00, 263500.00, 2713.00, 'pendiente', 4, 1, 1),
(238, 999993, 'CARTON CATULINA 1/2 PLIEGO ', 171.00, 145350.00, 1530.00, 'pendiente', 4, 1, 1),
(239, 999994, 'GURNALDA 2 UNDADES 97 CM', 172.00, 258000.00, 2505.00, 'pendiente', 7, 1, 1),
(240, 999995, 'COLORES KORES JUMBO DOBLE PUNTA', 173.00, 1868400.00, 18144.00, 'pendiente', 3, 1, 1),
(241, 999996, 'COLORES OFFIESCO JUMBO UNA PUNTA', 174.00, 1357200.00, 13104.00, 'pendiente', 3, 1, 1),
(242, 999997, 'BALSO ', 175.00, 288750.00, 2772.00, 'pendiente', 6, 1, 1),
(243, 1548, 'CINTA TRANSPARE. 24*40 SOCO ', 176.00, 179520.00, 1703.00, 'pendiente', 11, 1, 1),
(244, 1656, 'COLOR RECREO*6 BICOLOR P*160 212', 177.00, 371700.00, 2667.00, 'pendiente', 3, 1, 1),
(245, 2628, 'LAPIZ DIBUJO FABER LAPIZ 2B - 6B - 8B', 178.00, 190460.00, 1819.00, 'pendiente', 3, 1, 1),
(246, 780, 'BORRADOR OE-120DEF GRAND COLOR C20 P1000', 179.00, 57280.00, 499.00, 'pendiente', 7, 1, 1),
(247, 7106, 'GANCHO LEGAJAR PLASTICO TRITON B*20 5371', 180.00, 342000.00, 3306.00, 'pendiente', 7, 1, 1),
(248, 10744, 'CINTA DOBLE FAZ 18*2.6 CAMAT D8 P24', 181.00, 131225.00, 1305.00, 'pendiente', 11, 1, 1),
(249, 11136, 'ALMOHADILLA SELLOS PELIKAN PLASTICA No.1', 182.00, 364000.00, 3600.00, 'pendiente', 7, 1, 1),
(250, 11137, 'ALMOHADILLA SELLOS PELIKAN PLASTICA No.2', 183.00, 805200.00, 7524.00, 'pendiente', 7, 1, 1),
(251, 13, '2002FE-RECIBO C/ MENOR FORMA ECON200 P30', 184.00, 616400.00, 5863.00, 'pendiente', 7, 1, 1),
(252, 9797, 'LANA ESCOLAR MASTER KOLOR SURTIDO', 185.00, 94350.00, 1020.00, 'pendiente', 6, 1, 1),
(253, 588, 'BLOCK DIN A3*20H HORIZONTAL BELPA/FUTUR', 186.00, 483600.00, 4680.00, 'pendiente', 4, 1, 1),
(254, 4807, 'VINILO PAYASITO 80 GRM NEON', 187.00, 163625.00, 1750.00, 'pendiente', 6, 1, 1),
(255, 4470, 'VINILO PAYASITO 125 GRM ', 188.00, 158860.00, 1606.00, 'pendiente', 6, 1, 1),
(256, 4472, 'VINILO PAYASITO 33 PERLADO ', 189.00, 141750.00, 1500.00, 'pendiente', 6, 1, 1),
(257, 8025, 'SERPENTINA SATINADA *3 SURTIDA', 190.00, 323000.00, 2499.00, 'pendiente', 7, 1, 1),
(258, 3987, 'SERPENTINA PAQUETE NORMAL', 191.00, 57300.00, 525.00, 'pendiente', 7, 1, 1),
(259, 5900, 'LANA ESCOLAR ', 192.00, 57600.00, 501.00, 'pendiente', 6, 1, 1),
(260, 5144, 'CORRECTOR OE-254 DOBLE SERVICIO ', 193.00, 212300.00, 1925.00, 'pendiente', 7, 1, 1),
(261, 3364, 'PASTA ARGOLLA 105 SIN TAPA ', 194.00, 1067000.00, 8250.00, 'pendiente', 10, 1, 1),
(262, 3362, 'PASTA ARGOLLA CARTON PRIMAVERA ', 195.00, 1755000.00, 13500.00, 'pendiente', 10, 1, 1),
(263, 11376, 'COMPAS DE PRECISION OFFI-ESCO ', 196.00, 1666000.00, 14450.00, 'pendiente', 7, 1, 1),
(264, 11377, 'COMPAS DE PRECISION YT3102/OE-3102', 197.00, 689500.00, 5950.00, 'pendiente', 7, 1, 1),
(265, 11378, 'COMPAS DE PRECISION YT3002/OE-3002', 198.00, 673200.00, 5780.00, 'pendiente', 7, 1, 1),
(266, 11434, 'PORTAMINAS 2MM OE-158', 199.00, 278600.00, 2520.00, 'pendiente', 3, 1, 1),
(267, 1100, 'CARPETA FUELLE ECONOMICA PRIMAVERA', 200.00, 310000.00, 2713.00, 'pendiente', 10, 1, 1),
(268, 4790, 'PEGANTE OE-214 40 GRAMOS PVP D12 P288', 201.00, 381900.00, 3500.00, 'pendiente', 7, 1, 1),
(269, 3422, 'PEGANTE OE- 212 21 GRAMOS PVP D*12 P384', 202.00, 262600.00, 2275.00, 'pendiente', 7, 1, 1),
(270, 4789, 'PEGANTE OE- 210 10 GRAMOS PVP D*24 P384', 203.00, 152250.00, 1313.00, 'pendiente', 7, 1, 1),
(271, 11262, 'COLOR OE-146*24 SENCILLO', 204.00, 1774800.00, 13050.00, 'pendiente', 3, 1, 1),
(272, 11110, 'CARTUCHERA OE-2104 3 BOLSILLO P 180', 205.00, 1906500.00, 14880.00, 'pendiente', 8, 1, 1),
(273, 1649, 'COLOR CLIPMARK*12 BICOLOR P144 GIGO', 206.00, 360500.00, 4025.00, 'pendiente', 3, 1, 1),
(274, 11049, 'COLOR KIUT*15C/CARTON 2170 P24', 207.00, 2028600.00, 16072.00, 'pendiente', 3, 1, 1),
(275, 1642, 'COLOR NORMA*12 BICOLOR 21032', 208.00, 2392000.00, 18400.00, 'pendiente', 3, 1, 1),
(276, 9634, 'COLOR PELIKAN *24 LARGO 2129', 209.00, 1943700.00, 14880.00, 'pendiente', 3, 1, 1),
(277, 11184, 'PLASTIFOAMMY BOLSA * 6', 210.00, 525000.00, 4300.00, 'pendiente', 6, 1, 1),
(278, 2782, 'MARCADOR PELIKAN 420', 211.00, 177240.00, 1499.00, 'pendiente', 3, 1, 1),
(279, 9738, 'LAIZ BICOLOR OE-148', 212.00, 63600.00, 798.00, 'pendiente', 3, 1, 1),
(280, 3856, 'RESALTADOR OE-540 OFFI-ESCO ', 213.00, 213000.00, 1800.00, 'pendiente', 3, 1, 1),
(281, 10485, 'TAJALAPIZ 2H 8132', 214.00, 160500.00, 1200.00, 'pendiente', 7, 1, 1),
(282, 4800, 'TAJALAPIZ MAPED 2H BOOGY 114', 215.00, 301000.00, 2240.00, 'pendiente', 7, 1, 1),
(283, 8125, 'TAJALAPIZ MAPED 2H SHAKER DEPOS', 216.00, 270000.00, 2125.00, 'pendiente', 7, 1, 1),
(284, 4210, 'TAJALAPIZ MAPED 2H IGLOO ', 217.00, 292950.00, 2295.00, 'pendiente', 7, 1, 1),
(285, 3751, 'PORTAMINAS 0,5 PELIKAN', 218.00, 132980.00, 1202.00, 'pendiente', 3, 1, 1),
(286, 11122, 'CARTUCHERA OE-2116 3 BOLSILLO', 219.00, 1752000.00, 12000.00, 'pendiente', 8, 1, 1),
(287, 3843, 'REPUESTO ARGOLLA 105-2 NORMA 8305 100', 220.00, 473000.00, 3655.00, 'pendiente', 4, 1, 1),
(288, 2570, 'JUEGO GEOMETRICO OE-240 4 PIEZAS', 221.00, 663000.00, 4800.00, 'pendiente', 7, 1, 1),
(289, 2760, 'MALETIN PORTACARPETA ESTAMPADO PRIMAVERA ', 222.00, 2042400.00, 14076.00, 'pendiente', 10, 1, 1),
(290, 795, 'BORRADOR PELIKAN P Z 20', 223.00, 82510.00, 629.00, 'pendiente', 7, 1, 1),
(291, 4152, 'SOBRE MANILA CARTA', 224.00, 11872.00, 201.00, 'pendiente', 7, 1, 1),
(292, 8028, 'SOBRE MANILA OFICIO ', 225.00, 13500.00, 300.00, 'pendiente', 7, 1, 1),
(293, 9289, 'BOLIGRAFO OE-050 RT SEMI GEL 0,7', 226.00, 108480.00, 1008.00, 'pendiente', 3, 1, 1),
(294, 1820, 'COSEDORA OE-330 PEQUEÑA METALICA ', 227.00, 1066900.00, 7050.00, 'pendiente', 7, 1, 1),
(295, 9838, 'PINCEL REDONDO UNICOLOR *5 BM-A0106', 228.00, 1048800.00, 7820.00, 'pendiente', 6, 1, 1),
(296, 4833, 'PINCEL BENSSINI BS-1460 P*12', 229.00, 1694600.00, 12580.00, 'pendiente', 6, 1, 1),
(297, 10294, 'PINCEL MATISSE EST*3 ABANICO 8150', 230.00, 1564000.00, 11084.00, 'pendiente', 6, 1, 1),
(298, 7605, 'COMPAS OE-280 METAL P/LAPIZ', 231.00, 623700.00, 4050.00, 'pendiente', 7, 1, 1),
(299, 9290, 'PEGANTE OE-218 INTA ULTRA  GLUE 2,5', 232.00, 162400.00, 1204.00, 'pendiente', 7, 1, 1),
(300, 534, 'BISTURI PUNTA LANZA C/R WLXY 078 POINTER', 233.00, 605800.00, 4420.00, 'pendiente', 7, 1, 1),
(301, 1457, 'CHINCHON WEIB E*50 DL833/WB-9023 OL8215', 234.00, 210600.00, 1575.00, 'pendiente', 7, 1, 1),
(302, 1455, 'CHINCHES PLASTIFICADO TRITON C50 P1000', 235.00, 169200.00, 1202.00, 'pendiente', 7, 1, 1),
(303, 10672, 'MINAS 0,5 KORES  HB', 236.00, 106200.00, 900.00, 'pendiente', 7, 1, 1),
(304, 10673, 'MINAS 0,7 KORES  HB', 237.00, 132720.00, 1120.00, 'pendiente', 7, 1, 1),
(305, 2109, 'DICCIONARIO ESPAÑOL BASICO', 238.00, 404600.00, 3060.00, 'pendiente', 12, 1, 1),
(306, 2108, 'DICCIONARIO INGLES CHICAGO ', 239.00, 406300.00, 3060.00, 'pendiente', 12, 1, 1),
(307, 1773, 'CORRECTOR DE CINTA *6MTR OFFIESCO ', 240.00, 360000.00, 2400.00, 'pendiente', 7, 1, 1),
(308, 11188, 'LAPIZ PRIMAVERA METALIZADO', 241.00, 77120.00, 800.00, 'pendiente', 3, 1, 1),
(309, 11542, 'SILICONA LIQUIDA *100ML', 242.00, 411400.00, 3400.00, 'pendiente', 7, 1, 1),
(310, 2830, 'SHARPIE UNIDAD', 243.00, 376650.00, 2000.00, 'pendiente', 3, 1, 1),
(311, 11109, 'SHARPIE METALIZADO', 244.00, 549000.00, 2903.00, 'pendiente', 3, 1, 1),
(312, 3483, 'PERFORADORA OE-342 PEQUEÑA TRANSLUCIDA ', 245.00, 1372000.00, 8400.00, 'pendiente', 7, 1, 1),
(313, 11344, 'BOLIGRAFO OE-030 GEL ', 246.00, 123000.00, 1000.00, 'pendiente', 3, 1, 1),
(314, 10840, 'BOLIGRAFO OE074/OE034 GEL', 247.00, 247000.00, 2000.00, 'pendiente', 3, 1, 1),
(315, 540, 'BISTURI DE PERILLA ', 248.00, 719200.00, 5075.00, 'pendiente', 3, 1, 1),
(316, 10613, 'PISTOLA PEQUEÑA SILICONA', 249.00, 2066700.00, 14525.00, 'pendiente', 7, 1, 1),
(317, 11561, 'CINTA DE ENMASCARAR DE COLORES PATEL / NORMAL', 250.00, 145250.00, 1200.00, 'pendiente', 11, 1, 1),
(318, 10314, 'PISTOLA DE SILICONA GRANDE', 251.00, 3765000.00, 24000.00, 'pendiente', 7, 1, 1),
(319, 130, 'ALGODÓN MOTA COLORES 35GR', 252.00, 428400.00, 3060.00, 'pendiente', 7, 1, 1),
(320, 134, 'ALGODÓN *50GR MK', 253.00, 303600.00, 2160.00, 'pendiente', 7, 1, 1),
(321, 600, 'BLOCK IRIS CARTA PRIMAVERA *40', 254.00, 533400.00, 3570.00, 'pendiente', 3, 1, 1),
(322, 607, 'BLOCK MILIMETRADO OFICIO *35', 255.00, 372300.00, 2628.00, 'pendiente', 3, 1, 1),
(323, 617, 'BLOCK PERGAMINO 1/8 90GRM *25H', 256.00, 832000.00, 5525.00, 'pendiente', 3, 1, 1),
(324, 283, 'ARCHIVADOR TIPO CHEQUE OE-446', 257.00, 1233600.00, 8160.00, 'pendiente', 10, 1, 1),
(325, 4212, 'TAJALAPIZ 2H 325 ', 258.00, 180600.00, 1201.00, 'pendiente', 7, 1, 1),
(326, 1900, 'CUADERNILLO PRIMAVERA CUADROS (LIBRETA)', 259.00, 297850.00, 2013.00, 'pendiente', 2, 1, 1),
(327, 11177, 'CUADERNILLO MINI PRIMAVERA CUADROS (LIBRETA)', 260.00, 166400.00, 960.00, 'pendiente', 2, 1, 1),
(328, 583, 'BLOCK CARTA CUADRICULADO NORMA 80H', 261.00, 501120.00, 3110.00, 'pendiente', 4, 1, 1),
(329, 608, 'BLOCK OFICIO BLANCO 80H NORMA', 262.00, 563300.00, 3505.00, 'pendiente', 4, 1, 1),
(330, 3805, 'REGLA DE 30 CM FABER', 263.00, 228810.00, 1523.00, 'pendiente', 7, 1, 1),
(331, 3164, 'NAIPE ESPAÑOL CAJA CARTON', 264.00, 224400.00, 2000.00, 'pendiente', 7, 1, 1),
(332, 4172, 'SOBRE OFICIO BLANCO ', 265.00, 10070.00, 100.00, 'pendiente', 7, 1, 1),
(333, 8036, 'CLIP COLOR CAJA X100', 266.00, 226100.00, 1505.00, 'pendiente', 7, 1, 1),
(334, 3753, 'PORTAMINAS TRITON 2MM', 267.00, 261660.00, 1715.00, 'pendiente', 3, 1, 1),
(335, 9486, 'ACUARELA TRENCITO X12 COLORES PALETA', 268.00, 723600.00, 4725.00, 'pendiente', 6, 1, 1),
(336, 2074, 'CURVIGRAFO N2', 269.00, 247480.00, 1610.00, 'pendiente', 7, 1, 1),
(337, 2075, 'CURVIGRAFO N3', 270.00, 270000.00, 1800.00, 'pendiente', 7, 1, 1),
(338, 2076, 'CURVIGRAFO N14', 271.00, 420050.00, 2713.00, 'pendiente', 7, 1, 1),
(339, 10293, 'ESTUCHE DE PINCELES MATISSE X6 AB/6/AR0004', 272.00, 1142400.00, 7350.00, 'pendiente', 6, 1, 1),
(340, 3889, 'PAPEL CONTAC TRANSPARENTE METRO', 273.00, 805350.00, 4484.00, 'pendiente', 4, 1, 1),
(341, 6105, 'CAIMAN METALICO PEQUEÑO 25MM', 274.00, 34250.00, 300.00, 'pendiente', 7, 1, 1),
(342, 4473, 'VINILO PAYASITO 33 GRM', 275.00, 93500.00, 595.00, 'pendiente', 6, 1, 1),
(343, 7660, 'SOBRE LLUVIA DE SOBRES ', 276.00, 103500.00, 1013.00, 'pendiente', 7, 1, 1),
(344, 9287, 'FOAMY ESCARCHADO ', 277.00, 180050.00, 1105.00, 'pendiente', 3, 1, 1),
(345, 5210, 'ESPATULA METALICA ESTUCHE POR 6', 278.00, 3058000.00, 19250.00, 'pendiente', 6, 1, 1),
(346, 4997, 'PINCEL BROCHA POINTER BK021', 279.00, 1506600.00, 9180.00, 'pendiente', 6, 1, 1),
(347, 4992, 'PINCEL LENGUA DE GATO POINTER AB 184-6', 280.00, 3164000.00, 19210.00, 'pendiente', 6, 1, 1),
(348, 11246, 'PINCEL UNICOLOR SURTIDO BMJ-A0080E SET X 5', 281.00, 1264500.00, 7650.00, 'pendiente', 6, 1, 1),
(349, 9836, 'PINCEL LENGUA DE GATO UNICOLOR SET X5 BM-A0104', 282.00, 1297200.00, 7820.00, 'pendiente', 6, 1, 1),
(350, 85, 'ACETATO PROYECCION  CARTA  PQ*12', 283.00, 73297.00, 500.00, 'pendiente', 4, 1, 1),
(351, 11190, 'BLOCK PRIMAVERA CUADROS *70 ESTAMPADOS P160', 284.00, 908800.00, 5440.00, 'pendiente', 4, 1, 1),
(352, 11149, 'COMPAS DE PRECISION GRAFIKO KORES  P80', 285.00, 3277500.00, 19550.00, 'pendiente', 7, 1, 1),
(353, 2146, 'DVD', 286.00, 137280.00, 1008.00, 'pendiente', 7, 1, 1),
(354, 6147, 'TAJALAPIZ MAPED DEPOS 2H CROCRO T18 P216', 287.00, 817950.00, 4503.00, 'pendiente', 7, 1, 1),
(355, 5137, 'MINAS 0,5 FABER CASTELL', 288.00, 236160.00, 1402.00, 'pendiente', 7, 1, 1),
(356, 2868, 'MINAS 0,7 FABER CASTELL', 289.00, 236980.00, 1402.00, 'pendiente', 7, 1, 1),
(357, 9455, 'BORRADOR NEGRO FABER CASTELL - C20', 290.00, 136300.00, 799.00, 'pendiente', 7, 1, 1),
(358, 3232, 'PALILLO REDONDO CAJA ', 291.00, 151320.00, 900.00, 'pendiente', 7, 1, 1),
(359, 11540, 'SILICONA LIQUIDA OE-190 30ML', 292.00, 242360.00, 1411.00, 'pendiente', 7, 1, 1),
(360, 11541, 'SILICONA LIQUIDA OE-191 60ML', 293.00, 366250.00, 2125.00, 'pendiente', 7, 1, 1),
(361, 11542, 'SILICONA LIQUIDA OE-192 100ML', 294.00, 499800.00, 2890.00, 'pendiente', 7, 1, 1),
(362, 11435, 'BOLIGRAFO BORRABLE GEL OFIESSCO 0,7', 295.00, 649000.00, 2706.00, 'pendiente', 3, 1, 1),
(363, 10885, 'PORCELANICROM CERAMICA FRIA 250 GR', 296.00, 1776000.00, 9000.00, 'pendiente', 6, 1, 1),
(364, 3716, 'PORTAPLANOS SET*2', 297.00, 7425000.00, 35000.00, 'pendiente', 10, 1, 1),
(365, 4341, 'TINTA PARA SELLOS STUD/POINT', 298.00, 283100.00, 1805.00, 'pendiente', 7, 1, 1),
(366, 1825, 'COSEDORA OE-308', 299.00, 1076400.00, 5400.00, 'pendiente', 7, 1, 1),
(367, 1465, 'CINTA PARA EMPAQUE 48*90 MTS SOCO', 300.00, 810000.00, 4501.00, 'pendiente', 11, 1, 1),
(368, 1468, 'CINTA PARA EMPAQUE 48*180 MTS SOCO', 301.00, 1535100.00, 8502.00, 'pendiente', 11, 1, 1),
(369, 11747, 'CORRECTOR DE CINTA *12MTR 5MM', 302.00, 634200.00, 3465.00, 'pendiente', 7, 1, 1),
(370, 3445, 'PEGANTE SUPER BONDER 3 GRM', 303.00, 757500.00, 4275.00, 'pendiente', 7, 1, 1),
(371, 3236, 'PALO DE PALETA COLORES *50', 304.00, 297920.00, 1637.00, 'pendiente', 6, 1, 1),
(372, 3801, 'REGLA DE 20 CM PLASTICA TRANSLUCIDA', 305.00, 207400.00, 1197.00, 'pendiente', 7, 1, 1),
(373, 2432, 'GANCHO LEGAJADOR METALICO ', 306.00, 413100.00, 2309.00, 'pendiente', 7, 1, 1),
(374, 8750, 'MICROPUNTAS OE-069 *6 ', 307.00, 1105200.00, 5760.00, 'pendiente', 3, 1, 1),
(375, 4547, 'ARCHIVADOR CHEQUE CORDON OE-448', 308.00, 1416800.00, 7360.00, 'pendiente', 10, 1, 1),
(376, 3620, 'PLANTILLA CROQUIS TRANSLUCIDO DE COLOMBIA', 309.00, 355350.00, 2001.00, 'pendiente', 7, 1, 1),
(377, 3621, 'PLANTILLA CROQUIS DE CUNDINAMARCA', 310.00, 294500.00, 1701.00, 'pendiente', 7, 1, 1),
(378, 3622, 'PLANTILLA CROQUIS MAPA DE AMERICA', 311.00, 295450.00, 1701.00, 'pendiente', 7, 1, 1),
(379, 3630, 'PLANTILLA MAPA POLITICO DE COLOMBIA', 312.00, 358800.00, 2001.00, 'pendiente', 7, 1, 1),
(380, 2077, 'DADO GRANDE PAR', 313.00, 131460.00, 802.00, 'pendiente', 7, 1, 1),
(381, 2078, 'DADO PEQUEÑO PAR ', 314.00, 106760.00, 602.00, 'pendiente', 7, 1, 1),
(382, 2324, 'FECHADOR STUD/POIN/MERLET', 315.00, 724500.00, 3680.00, 'pendiente', 7, 1, 1),
(383, 3310, 'PAPEL PERGAMINO 1/8 90GMS', 316.00, 45504.00, 302.00, 'pendiente', 4, 1, 1),
(384, 12053, 'FOAMY MOLDEABLE GRANULADO 60GR', 317.00, 570600.00, 2520.00, 'pendiente', 4, 1, 1),
(385, 1499, 'CINTA DE ENMASCARAR 48*25 TESA', 318.00, 1605900.00, 8333.00, 'pendiente', 11, 1, 1),
(386, 1493, 'CINTA DE ENMASCARAR 18*25 TESA', 319.00, 590150.00, 3053.00, 'pendiente', 11, 1, 1),
(387, 11613, 'COLORES CORES TRIANGULAR *12+2LAPIZ+1BORRA+1TAJA', 320.00, 1440000.00, 7502.00, 'pendiente', 3, 1, 1),
(388, 9691, 'COLORES FABER CASTEL*36 TRIANGULAR ', 321.00, 4590300.00, 22880.00, 'pendiente', 3, 1, 1),
(389, 8719, 'BISTURI OFFIESCO 112', 322.00, 418600.00, 2080.00, 'pendiente', 7, 1, 1),
(390, 1880, 'CREYON JUMBO TRENSITO *10', 323.00, 1227400.00, 6080.00, 'pendiente', 3, 1, 1),
(391, 1119, 'CARPETA PRESENTACION CARTA BLANCA', 324.00, 43740.00, 297.00, 'pendiente', 10, 1, 1),
(392, 11229, 'CARPETA LEGAJADOR OFICIO OE-809', 325.00, 487500.00, 2490.00, 'pendiente', 10, 1, 1),
(393, 3365, 'PASTA ARGOLLA 105 LUKIS ', 326.00, 2673200.00, 11480.00, 'pendiente', 10, 1, 1),
(394, 9467, 'TAJALAPIZ 2H 317 XLE/XINLE', 327.00, 245250.00, 1200.00, 'pendiente', 7, 1, 1),
(395, 243, 'BLOCK ORIGAMI 20X20 INPAPELES 20H', 328.00, 432960.00, 2310.00, 'pendiente', 4, 1, 1),
(396, 242, 'BLOCK ORIGAMI 15X15 20H NESSAN', 329.00, 391510.00, 2083.00, 'pendiente', 4, 1, 1),
(397, 10889, 'CD CON FUNDA', 330.00, 154440.00, 1000.00, 'pendiente', 7, 1, 1),
(398, 2362, 'FLAUTA TRANSLUCIDA', 331.00, 1158500.00, 5600.00, 'pendiente', 6, 1, 1),
(399, 8102, 'BOLIGRAFO OE-076F SEMI GEL 0,7', 332.00, 109560.00, 799.00, 'pendiente', 3, 1, 1),
(400, 2053, 'ESQUELAS ESCARCHADA PQ', 333.00, 226440.00, 1190.00, 'pendiente', 4, 1, 1),
(401, 602, 'BLOCK IRIS OFICIO FINO', 334.00, 701400.00, 3570.00, 'pendiente', 4, 1, 1),
(402, 2683, 'LIBRO DE CONTABILIDAD 100 FOLIOS ', 335.00, 2144000.00, 10880.00, 'pendiente', 2, 1, 1),
(403, 10343, 'FESTON GUIRNALDA ', 336.00, 537600.00, 2480.00, 'pendiente', 7, 1, 1),
(404, 8784, 'CINTA TRANSPARENTE 12*5 SOCO ', 337.00, 40440.00, 300.00, 'pendiente', 11, 1, 1),
(405, 10645, 'CINTA 48*20 MTS CELLUX', 338.00, 202800.00, 1200.00, 'pendiente', 11, 1, 1),
(406, 1497, 'CINTA DE ENMASCARAR 36*20 SOCO ', 339.00, 576300.00, 3001.00, 'pendiente', 11, 1, 1),
(407, 11588, 'CINTA DOBLE FAZ 18*2 MTR ECOMATIC', 340.00, 476000.00, 2408.00, 'pendiente', 11, 1, 1),
(408, 7876, 'PLUMON OE-086 BICOLOR JUMBO *6', 341.00, 1875500.00, 9405.00, 'pendiente', 3, 1, 1),
(409, 800, 'BORRADOR DE TABLERO FOAMY', 342.00, 290700.00, 1505.00, 'pendiente', 7, 1, 1),
(410, 9637, 'TEMPERA CAROSELLO *6', 343.00, 469910.00, 2398.00, 'pendiente', 6, 1, 1),
(411, 13119, 'COLOR CANDY POP*15 ', 344.00, 3990400.00, 15080.00, 'pendiente', 3, 1, 1),
(412, 6150, 'COLORES KORES DOBLE PUNTA *12 ', 345.00, 1863000.00, 8699.00, 'pendiente', 3, 1, 1),
(413, 11218, 'SCRIBE DOBLE PUNTA *26', 346.00, 3148600.00, 15015.00, 'pendiente', 3, 1, 1),
(414, 13085, 'CARTUCHERA OE-2130 CORAZON', 347.00, 2359600.00, 9003.00, 'pendiente', 8, 1, 1),
(415, 13097, 'CARTUCHERA OE-2130 DINOSAURIO', 348.00, 1983600.00, 9006.00, 'pendiente', 8, 1, 1),
(416, 13089, 'CARTUCHERA OE-2134', 349.00, 1989300.00, 9006.00, 'pendiente', 8, 1, 1),
(417, 1126, 'CARPETA ECONOMICA PRIMAVERA', 350.00, 490000.00, 2408.00, 'pendiente', 10, 1, 1),
(418, 13362, 'PLANILLERO CON TAPA OE-836', 351.00, 1755000.00, 8000.00, 'pendiente', 7, 1, 1),
(419, 1105, 'CARPETA FUELLE PLASTICA PRIMAVERA ', 352.00, 1760000.00, 8000.00, 'pendiente', 10, 1, 1),
(420, 1122, 'CARPETA OE-805 TIPO SEGURIDAD', 353.00, 1235500.00, 5600.00, 'pendiente', 10, 1, 1),
(421, 4959, 'ARCHIVADOR OE-462 BICOLOR', 354.00, 4248000.00, 19200.00, 'pendiente', 10, 1, 1),
(422, 11366, 'JUEGO DE CARTAS UNO RESISTENTE AL AGUA ', 355.00, 4189000.00, 18054.00, 'pendiente', 7, 1, 1),
(423, 3241, 'PALO DE PINCHO', 356.00, 996800.00, 4060.00, 'pendiente', 7, 1, 1),
(424, 1117, 'CARPETA LOMO OFICIO TRANSPARENTE ', 357.00, 116025.00, 699.00, 'pendiente', 10, 1, 1),
(425, 3375, 'PASTA ARGOLLA CATALOGO BLANCA ECONOMICA ', 358.00, 1897400.00, 8003.00, 'pendiente', 10, 1, 1),
(426, 13299, 'BOLIGRAFO OE 076F-10 SEMIGEL 0,7 ESTUCHE *10', 359.00, 1421640.00, 7524.00, 'pendiente', 3, 1, 1),
(427, 132, 'ALGODÓN 15G HIGIENEX MK ', 360.00, 144000.00, 700.00, 'pendiente', 7, 1, 1),
(428, 2113, 'DICCIONARIO SINONIMOS Y ANTONIMOS ', 361.00, 902500.00, 4375.00, 'pendiente', 12, 1, 1),
(429, 10702, 'REGLA 30 CM FLEXIBLE PRIMAVERA 652', 362.00, 343900.00, 1710.00, 'pendiente', 7, 1, 1),
(430, 6319, 'COPITOS TARRO*80', 363.00, 326700.00, 1503.00, 'pendiente', 7, 1, 1),
(431, 1874, 'CREYON TRENSITO *12', 364.00, 491400.00, 2120.00, 'pendiente', 3, 1, 1),
(432, 2032, 'CUADERNO MUSICA PQ NESSAN ', 365.00, 328500.00, 1530.00, 'pendiente', 2, 1, 1),
(433, 3964, 'ROTULOS REFUERZO ENGOMADO ', 366.00, 384300.00, 1806.00, 'pendiente', 7, 1, 1),
(434, 3187, 'NYLON N,25 ', 367.00, 686290.00, 2805.00, 'pendiente', 7, 1, 1),
(435, 13211, 'BLOCK CARTA RAYADO 70H IMÁGENES', 368.00, 533600.00, 2538.00, 'pendiente', 4, 1, 1),
(436, 3505, 'PERFORADORA OE-340 1 HUECO P192', 369.00, 1217700.00, 4950.00, 'pendiente', 7, 1, 1),
(437, 3659, 'PLASTILINA TRENCITO *13 LARGA', 370.00, 518000.00, 2212.00, 'pendiente', 6, 1, 1),
(438, 2260, 'BOLIGRAFO OE-168 GEL *6 INKREIBLE', 371.00, 1725150.00, 6045.00, 'pendiente', 3, 1, 1),
(439, 13499, 'POKER FINO *2 CAJA METALICA ', 372.00, 3720000.00, 18000.00, 'pendiente', 7, 1, 1),
(440, 13100, 'TEMPERA PAYASITO NEON *6', 373.00, 1137650.00, 5033.00, 'pendiente', 6, 1, 1),
(441, 10146, 'CARTULINA CALIPSO ', 374.00, 41140.00, 297.00, 'pendiente', 4, 1, 1),
(442, 1271, 'CARTON PRENSADO 1/8 *10 CARTON PIEDRA ', 375.00, 166875.00, 801.00, 'pendiente', 4, 1, 1),
(443, 5003, 'CARTULINA 1/8 IRIS CAFÉ ', 376.00, 90240.00, 398.00, 'pendiente', 4, 1, 1),
(444, 13213, 'BLOCK OFICIO CUADROS 70H IMÁGENES ', 377.00, 716300.00, 3040.00, 'pendiente', 4, 1, 1),
(445, 13231, 'REPUESTO OE-540 PARA BOLIGRAFO BORRABLE ', 378.00, 415800.00, 1500.00, 'pendiente', 7, 1, 1),
(446, 578, 'BLOCK BOND 28 * 1/8 FORMATO HORIZONTAL', 379.00, 587450.00, 2713.00, 'pendiente', 4, 1, 1),
(447, 8013, 'FOAMY TAMAÑO 4 CARTAS ', 380.00, 300200.00, 1201.00, 'pendiente', 4, 1, 1),
(448, 11857, 'FOAMY MOLDEABLE 60GR BOLSA', 381.00, 571500.00, 2400.00, 'pendiente', 4, 1, 1),
(449, 1722, 'OJOS MOVILES POINTER', 382.00, 61120.00, 400.00, 'pendiente', 6, 1, 1),
(450, 3269, 'PAPEL CELOFAN EXTRAFINO ', 383.00, 114900.00, 501.00, 'pendiente', 4, 1, 1),
(451, 300214, 'KILOMETRICO  MINI 100RT CANDY SURTIDO *10', 384.00, 2323200.00, 8047.00, 'pendiente', 3, 1, 1),
(452, 999998, 'CARGADOR TIPO C ECO', 385.00, 2117500.00, 0.00, 'pendiente', 1, 1, 3),
(453, 999999, 'CARGADOR V 8 ECO', 386.00, 2123000.00, 0.00, 'pendiente', 1, 1, 3),
(454, 9999910, 'CARGADOR TIPO C ZOOM', 387.00, 3483000.00, 0.00, 'pendiente', 1, 1, 3),
(455, 9999911, 'CARGADOR 2 GIT V8', 388.00, 3492000.00, 0.00, 'pendiente', 1, 1, 3),
(456, 9999912, 'CARGADOR 2 GIT TIPOC', 389.00, 3890000.00, 0.00, 'pendiente', 1, 1, 3),
(457, 9999913, 'CABLE YOYO 3 EN 1', 390.00, 1950000.00, 0.00, 'pendiente', 1, 1, 3),
(458, 9999914, 'CABLE U 8', 391.00, 977500.00, 0.00, 'pendiente', 1, 1, 3),
(459, 9999915, 'CABLE TIPO C', 392.00, 1097600.00, 0.00, 'pendiente', 1, 1, 3),
(460, 9999916, 'ML 56', 393.00, 864600.00, 0.00, 'pendiente', 1, 1, 3),
(461, 9999917, 'ML 55', 394.00, 788000.00, 0.00, 'pendiente', 1, 1, 3),
(462, 9999918, 'ML OCZU', 395.00, 1106000.00, 0.00, 'pendiente', 1, 1, 3),
(463, 9999919, 'ML JBC', 396.00, 1504800.00, 0.00, 'pendiente', 1, 1, 3),
(464, 9999920, 'ML CAJA COLOR', 397.00, 1588000.00, 0.00, 'pendiente', 1, 1, 3),
(465, 9999921, 'UNIVERSAL', 398.00, 1393000.00, 0.00, 'pendiente', 1, 1, 3),
(466, 9999922, 'ML XIAMI MI', 399.00, 2194500.00, 0.00, 'pendiente', 1, 1, 3),
(467, 9999923, 'BALACAS ', 400.00, 11200000.00, 0.00, 'pendiente', 1, 1, 3),
(468, 9999924, 'HILO CAJA X 10', 401.00, 2606500.00, 0.00, 'pendiente', 7, 1, 2),
(469, 9999925, 'MARCADOR POSTERMAN', 402.00, 3055200.00, 0.00, 'pendiente', 3, 1, 2),
(470, 9999926, 'REPUESTO BITURI PUNTA DE LANZA X 10', 403.00, 1007500.00, 0.00, 'pendiente', 7, 1, 2),
(471, 9999927, 'BOLSA ', 404.00, 1212000.00, 0.00, 'pendiente', 7, 1, 2),
(472, 9999928, 'BOLSA ', 405.00, 1417500.00, 0.00, 'pendiente', 7, 1, 2),
(473, 13401, 'C A R P E T A O E -809 PASTEL OFICIO C/G P200 SURTIDO PASTEL', 406.00, 730800.00, 2700.00, 'pendiente', 10, 1, 1),
(474, 1246, 'C A R T I L L A L ECTURA INICIAL NACHO P160', 407.00, 1424500.00, 5999.00, 'pendiente', 12, 1, 1),
(475, 11364, 'C AR T I L L A L E CTURA INICIAL COQUITO CLASICO', 408.00, 1448400.00, 6000.00, 'pendiente', 12, 1, 1),
(476, 4937, 'C O L O R F A B ER CASTEL*10 METALLIC 410G P120', 409.00, 3190200.00, 12090.00, 'pendiente', 3, 1, 1),
(477, 10671, 'C O L O R K O R ES TRIANGULAR*50 3MM P24 93350', 410.00, 7790000.00, 30400.00, 'pendiente', 3, 1, 1),
(478, 2068, 'C U E N T O S C LASICO LEER Y COLORE INFAN EDIL', 411.00, 390450.00, 2005.00, 'pendiente', 12, 1, 1),
(479, 11138, 'M A N D A L A * 16 PAGINAS', 412.00, 473800.00, 2300.00, 'pendiente', 12, 1, 1),
(480, 536, 'B I S T U R I R I EL RJ-2008/A-100 RUNJI P480', 413.00, 619500.00, 2505.00, 'pendiente', 7, 1, 1),
(481, 2857, 'M I C R O P O R E CUREBAND 1*3 YARDAS CJ*12', 414.00, 1573200.00, 5510.00, 'pendiente', 11, 1, 1),
(482, 7662, 'COLOR OE-142*12 4MM BICOLOR ', 415.00, 1929750.00, 7440.00, 'pendiente', 3, 1, 1),
(483, 9544, 'CINTA TRANSPARENTE 12*20', 416.00, 120640.00, 502.00, 'pendiente', 11, 1, 1),
(484, 13595, 'MARCADOR VINILO RECARGABLE 15MM', 417.00, 5838000.00, 20020.00, 'pendiente', 3, 1, 1),
(485, 7869, 'LAPIZ JUMBO ROJO KORES ', 418.00, 397100.00, 1520.00, 'pendiente', 3, 1, 1),
(486, 13234, 'MARCADOR PERMANDENTE OE-522-8', 419.00, 4692800.00, 16016.00, 'pendiente', 3, 1, 1),
(487, 13236, 'MARCADOR MULTE-TRAZO PERMANENTE OE-525', 420.00, 5796000.00, 20010.00, 'pendiente', 3, 1, 1),
(488, 3604, 'PISTOLA DE SILICONA FINA ', 421.00, 4125800.00, 14700.00, 'pendiente', 7, 1, 1),
(489, 13441, 'RESALTADOR PASTEL OE-530 ESTUCHE*6', 422.00, 1721760.00, 6801.00, 'pendiente', 3, 1, 1),
(490, 4308, 'TEJA PARA MAQUETA *90', 423.00, 549900.00, 2275.00, 'pendiente', 6, 1, 1),
(491, 2586, 'LADRILLO TOLETE *100', 424.00, 487600.00, 2013.00, 'pendiente', 6, 1, 1),
(492, 3286, 'PAPEL FILIGRANA 5MM ', 425.00, 276250.00, 1203.00, 'pendiente', 4, 1, 1),
(493, 3287, 'PAPEL FILIGRANA 8MM', 426.00, 404700.00, 1710.00, 'pendiente', 4, 1, 1),
(494, 13316, 'PINCEL AH ROYAL *6', 427.00, 3971100.00, 15996.00, 'pendiente', 6, 1, 1),
(495, 13577, 'PINCEL QUICK P1469 *7', 428.00, 4280000.00, 17200.00, 'pendiente', 6, 1, 1),
(496, 13578, 'PINCEL QUICK P1469B *5', 429.00, 2960100.00, 11868.00, 'pendiente', 6, 1, 1),
(497, 12063, 'PINCEL UNICOLOR *6  1080', 430.00, 3225000.00, 12900.00, 'pendiente', 6, 1, 1),
(498, 3544, 'PINCEL PLANO PQ12 FIQUE ', 431.00, 3879000.00, 15480.00, 'pendiente', 6, 1, 1),
(499, 3557, 'PINCEL REDONDO PQ12 FIQUE ', 432.00, 3888000.00, 15480.00, 'pendiente', 6, 1, 1),
(500, 8797, 'BOMBA RUMBATEX R9', 433.00, 24248.00, 151.00, 'pendiente', 6, 1, 1),
(501, 462, 'BANDERITAS OE-372 5 COLORES ', 434.00, 520800.00, 2004.00, 'pendiente', 7, 1, 1),
(502, 131, 'ALGODÓN*5G HIGIETEX', 435.00, 126150.00, 508.00, 'pendiente', 7, 1, 1),
(503, 628, 'BLOQUE PQ* 100 ', 436.00, 959200.00, 3850.00, 'pendiente', 6, 1, 1),
(504, 646, 'BOLA MARA ', 437.00, 24472.00, 100.00, 'pendiente', 7, 1, 1),
(505, 9999929, 'TIJERA DE DOBLAR', 438.00, 248784.00, 994.00, 'pendiente', 7, 1, 2),
(506, 99999930, 'BLOCK CUADRICULADO MARFIL 70h', 439.00, 772640.00, 2851.00, 'pendiente', 4, 1, 2),
(507, 13235, 'COLOR OE-141 4MM*18 6 METALIZADOS ', 440.00, 3036000.00, 11040.00, 'pendiente', 3, 1, 1),
(508, 13922, 'CINTA AISLANTE 18*18M ', 441.00, 705600.00, 2800.00, 'pendiente', 11, 1, 1),
(509, 1881, 'CREYON JUMBO TRENSITO*6', 442.00, 1259700.00, 4503.00, 'pendiente', 3, 1, 1),
(510, 1875, 'CREYON ESCOLAR TRENSITO *6', 443.00, 332250.00, 1200.00, 'pendiente', 3, 1, 1),
(511, 590, 'BLOCK DIN A4 SIN FORMATO ', 444.00, 555000.00, 2000.00, 'pendiente', 4, 1, 1),
(512, 802, 'BORRADOR TINTA LAPIZ E-250', 445.00, 480600.00, 1836.00, 'pendiente', 7, 1, 1),
(513, 3647, 'PLASTILINA TRENCITO *12 JUMBO', 446.00, 869700.00, 3198.00, 'pendiente', 6, 1, 1),
(514, 13874, 'CHELINES GAMUZADOS', 447.00, 804600.00, 3150.00, 'pendiente', 7, 1, 1),
(515, 4550, 'CHELINES METALIZADOS ', 448.00, 896000.00, 3500.00, 'pendiente', 7, 1, 1),
(516, 13985, 'TAJALAPIZ TS2915-2 2H DEPOSITO ', 449.00, 359200.00, 1400.00, 'pendiente', 7, 1, 1),
(517, 11502, 'COLOR FABER CASTEL*12+6 NEON', 450.00, 4140000.00, 14996.00, 'pendiente', 3, 1, 1),
(518, 3284, 'PAPEL FILIGRANA 10MM', 451.00, 563750.00, 2200.00, 'pendiente', 6, 1, 1),
(519, 3285, 'PAPEL FILIGRANA 3MM', 452.00, 271200.00, 1020.00, 'pendiente', 6, 1, 1),
(520, 2326, 'CORTINA METALIZADA 6089-2', 453.00, 2853900.00, 10080.00, 'pendiente', 7, 1, 1),
(521, 11642, 'CORTINA METALIZADA DE CORAZON ', 454.00, 3677400.00, 12960.00, 'pendiente', 7, 1, 1),
(522, 12010, 'CORTINA METALIZADA SC-6014', 455.00, 1274000.00, 4480.00, 'pendiente', 7, 1, 1),
(523, 11662, 'numeros metalizados grandes 50 cm', 456.00, 296400.00, 1008.00, 'pendiente', 6, 1, 1),
(524, 11661, 'numeros metalizados pequeños 20 cm', 457.00, 228500.00, 775.00, 'pendiente', 6, 1, 1),
(525, 4827, 'GANCHO ESCARAPELA YOYO', 458.00, 283960.00, 1085.00, 'pendiente', 7, 1, 1),
(526, 1975, 'CUADERNO LUKIS 5 MATERIAS ', 459.00, 5232600.00, 15390.00, 'pendiente', 2, 1, 1),
(527, 7991, 'CUADERNO PRIMAVERA 5 MATERIAS', 460.00, 4922000.00, 14445.00, 'pendiente', 2, 1, 1),
(528, 7992, 'CUADENO PRIMAVERA 7 MATERIAS', 461.00, 5900800.00, 17280.00, 'pendiente', 2, 1, 1),
(529, 14131, 'COLOR ROJO JUMBO OE-161', 462.00, 369600.00, 1400.00, 'pendiente', 3, 1, 1),
(530, 13160, 'PASTA ARGOLLA 105 CARTON DISNEY', 463.00, 4305900.00, 13020.00, 'pendiente', 10, 1, 1),
(531, 286, 'ARCHIVADOR OE-455 MANIJA ', 464.00, 5475200.00, 18880.00, 'pendiente', 10, 1, 1),
(532, 720, 'BOLSILLO CATALOGO CARTA ', 465.00, 113460.00, 500.00, 'pendiente', 10, 1, 1),
(533, 723, 'BOLSILLO CATALOGO OFICIO ', 466.00, 135140.00, 499.00, 'pendiente', 10, 1, 1),
(534, 1250, 'CARTON CARTULINA PLIEGO ', 467.00, 490350.00, 1806.00, 'pendiente', 4, 1, 1),
(535, 1885, 'CUADERNO DOBLE O FABRIFOLDER', 468.00, 266760.00, 998.00, 'pendiente', 2, 1, 1),
(536, 2178, 'ESCARAPELA 1050 ', 469.00, 40334.00, 301.00, 'pendiente', 7, 1, 1),
(537, 14130, 'LAPIZ JUMBO NEGRO OE-160', 470.00, 352500.00, 1500.00, 'pendiente', 3, 1, 1),
(538, 14200, 'LIBRETA MINIBOLSILLO', 471.00, 329700.00, 973.00, 'pendiente', 5, 1, 1),
(539, 14287, 'MARCADOR OE-526 FANCI C12 PUNTAFINA P432', 472.00, 566400.00, 2040.00, 'pendiente', 3, 1, 1),
(540, 3243, 'PALO DE PINCHO DE 30 CM * 100', 473.00, 8514.00, 504.00, 'pendiente', 7, 1, 1),
(541, 3298, 'PAPEL MANIFOL PLIEGO - TRAZO ', 474.00, 90060.00, 340.00, 'pendiente', 4, 1, 1),
(542, 3322, 'PAPEL REGALO TODA OCACION ', 475.00, 87875.00, 305.00, 'pendiente', 4, 1, 1),
(543, 14151, 'PLUMON PUNTA FINA / PUNTA PINCEL * 12', 476.00, 4855200.00, 17442.00, 'pendiente', 3, 1, 1),
(544, 8756, 'PORTA CARNET OE-205 GANCHO ', 477.00, 333900.00, 1197.00, 'pendiente', 7, 1, 1),
(545, 3855, 'RESALTADOR OE-530 ESTUCHE*6', 478.00, 2151000.00, 7650.00, 'pendiente', 3, 1, 1),
(546, 13458, 'RESALTADOR OE-532 P PATEL ', 479.00, 306560.00, 1216.00, 'pendiente', 3, 1, 1),
(547, 10358, 'SEPARADOR PRIMAVERA 105*5', 480.00, 1056000.00, 3806.00, 'pendiente', 10, 1, 1),
(548, 4122, 'SILICONA BARRA DELGADA ', 481.00, 84175.00, 350.00, 'pendiente', 7, 1, 1),
(549, 4125, 'SILICONA BARRA GRUESA ', 482.00, 144600.00, 600.00, 'pendiente', 7, 1, 1),
(550, 4171, 'SOBRE OE-870 MINI HORIZONTAL BROCHE ', 483.00, 265650.00, 968.00, 'pendiente', 7, 1, 1),
(551, 99999931, 'TIJERA ESCOLAR ESTAMPADA PRIMAVERA ', 484.00, 822800.00, 2805.00, 'pendiente', 7, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE IF NOT EXISTS `proveedor` (
  `proveedor_id` int NOT NULL AUTO_INCREMENT,
  `proveedor_nombre` varchar(40) NOT NULL,
  `proveedor_documento` bigint NOT NULL,
  `proveedor_email` varchar(70) NOT NULL,
  `proveedor_direccion` varchar(70) NOT NULL,
  `proveedor_telefono` bigint NOT NULL,
  PRIMARY KEY (`proveedor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`proveedor_id`, `proveedor_nombre`, `proveedor_documento`, `proveedor_email`, `proveedor_direccion`, `proveedor_telefono`) VALUES
(1, 'Inversiones Vadisa', 9003789667, 'siesafe@siesa.com', 'Calle 10 # 20 - 19 ', 3143841241),
(2, 'Papeleria la ocacion Jo S.A.S', 9004374559, 'pendiente@pendiente.com', 'Carrera 12 a #10-53', 3229057105),
(3, 'proveedor tecnologia', 9999999999, 'pendiente2@pendiente.com', 'pendiente direccion', 1234567890);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario_id` int NOT NULL AUTO_INCREMENT,
  `usuario_nombre` varchar(40) NOT NULL,
  `usuario_apellido` varchar(40) NOT NULL,
  `usuario_usuario` varchar(20) NOT NULL,
  `usuario_clave` varchar(20) NOT NULL,
  `usuario_documento` bigint NOT NULL,
  `usuario_email` varchar(70) NOT NULL,
  `usuario_direccion` varchar(70) NOT NULL,
  `usuario_telefono` bigint NOT NULL,
  PRIMARY KEY (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_apellido`, `usuario_usuario`, `usuario_clave`, `usuario_documento`, `usuario_email`, `usuario_direccion`, `usuario_telefono`) VALUES
(1, 'Allison', 'Tejada', 'Samael2009', '123456789', 52857996, 'sionreptil@yahoo.com.ar', 'Calle 12 \" 1-17 este', 3107695594);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedido_entrada`
--
ALTER TABLE `pedido_entrada`
  ADD CONSTRAINT `pedido_entrada_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`proveedor_id`),
  ADD CONSTRAINT `pedido_entrada_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`);

--
-- Filtros para la tabla `pedido_salida`
--
ALTER TABLE `pedido_salida`
  ADD CONSTRAINT `pedido_salida_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`),
  ADD CONSTRAINT `pedido_salida_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`),
  ADD CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`proveedor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
