-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-08-2017 a las 15:08:44
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendaonlinespring`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account`
--

CREATE TABLE `account` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `account`
--

INSERT INTO `account` (`username`, `password`, `fullname`, `email`) VALUES
('', '', '', ''),
('ancel', '1234', 'ula', 'ancelmoul@gmail.com'),
('ancelmo', '123', 'Ulloa Lanazca', 'hnosulloa_11@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Ubiquiti Network'),
(2, 'Mikrotik'),
(3, 'Cisco'),
(4, 'D-Link');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `datecreation` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordersdetail`
--

CREATE TABLE `ordersdetail` (
  `productid` int(11) NOT NULL,
  `ordersid` int(11) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partner`
--

CREATE TABLE `partner` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `partner`
--

INSERT INTO `partner` (`id`, `name`) VALUES
(1, 'Partner 1'),
(2, 'Partner 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `feature` tinyint(1) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `partnerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `quantity`, `description`, `photo`, `feature`, `categoryid`, `partnerid`) VALUES
(1, 'Ubiquiti NanoLoco.M2', '187.00', 20, 'NanoStation Loco M2 - AIRMAX\r\n• 2X2 MIMO  • 23dBm, Antena integrada 8dBi\r\n• 150+Mbps  • Inyector PoE PoE 24v incluido\r\n• Un puerto Ethernet 10/100 Mbps', '1.jpg', 1, 1, 1),
(2, 'Ubiquiti NanoLoco.M5', '230.00', 15, 'Procesador Atheros MIPS 24KC, 400MHz\r\nMemoria 32MB SDRAM, 8MB Flash\r\nInterface de Red 1 X 10/100 BASE-TX (Cat. 5, RJ-45) Interface Etherne', '2.jpg', 1, 1, 1),
(3, 'Ubiquiti NanoStation.M2', '350.00', 20, 'Más de 150 Mbps reales de rendimiento en exterior y un alcance superior a 15km. Gracias a la tecnología 2x2 MIMO que utiliza\r\nel nuevo NanoStation, los enlaces son significativamente más rápidos y a una distancia superior que nunca antes.\r\nAislamiento de polarización cruzada optimizada y un diseño muy compacto.', '3.jpg', 1, 1, 1),
(4, 'Ubiquiti Bullet.5', '270.00', 10, 'Ubiquiti Networks UBIQUITI BULLET5 Ubiquiti Bullet5 5 GHz. 100 mW\r\nNo incluye fuente de alimentación, es necesaria la referencia POE-15 para alimentarlo', '4.jpg', 1, 1, 1),
(5, 'Ubiquiti PicoStationM2HP', '320.00', 20, 'Ubiquiti Networks M2H 2.4 GHz. MIMO Airmax 802.11GBN 630mW antena omni 6 dBi', '5.jpg', 0, 1, 1),
(6, 'Ubiquiti RocketM2', '345.00', 15, 'Rocket es la nueva Estación Base de Ubiquiti Networks, es un sistema robusto, muy potente\r\ny estable,  sus 2x2 radios MIMO ofrecen un gran rendimiento en la recepción. Se caracteriza\r\npor su increible alcance (+50km) y rendimiento (+150Mbps real TCPI/IP)', '6.jpg', 0, 1, 1),
(7, 'Ubiquiti AG.5GHP23', '205.00', 20, 'Ubiquiti Networks AG-5GHP23 AirGrid M Series, 5GHz, 23dBi 300 mW', '7.jpg', 0, 1, 1),
(8, 'Ubiquiti PBE.5AC.500', '645.00', 20, 'PowerBeam 5GHz AC - AIRMAX • Hasta 450Mbps+nuevo SO airOS7,con 256QAM • MIMO2x2, 802.11ac 22dBm, • Antena dish 27dBi, • Puerto de red 10/100/1000Mbps. • Incluye PoE de 24V, 0.5A GigE , Kit de montaje y radome.', '8.jpg', 0, 1, 1),
(9, 'UBIQUITI PBE.5AC.400', '395.00', 30, 'Ubiquiti Networks UBIQUITI PBE-5AC-400 5 GHz PowerBeam ac, 400 mm\r\nUsando tecnología airMAX ac, la PowerBeam soporta hasta 450 Mbps reales TCP/IP. Tiene una antena que ofrece 25 dBi de ganancia, opera en el intervalo de frecuencia de 5150 – 5875 MHz. Cuenta con un procesador Atheros MIPS 74KC a 560 MHz y 64MB de RAM, además de 16 MB de Flash. También tiene un puerto Gigabit Ethernet 10/100/1000.', '9.jpg', 1, 1, 1),
(10, 'Mikrotik RB/750r2', '162.00', 20, 'MIKROTIK  RB/750r2 (RB750r2 Hex Lite) 750 RouterBOARD CPU AR7240, 32 MB de RAM, 5 puertos LAN,\r\nRouterOS L4, caja de plástico, fuente de alimentación', 'm1.jpg', 0, 2, 2),
(11, 'Mikrotik RB/450G - KIT COMPLETO', '445.00', 50, 'RouterBOARD 450G COMPLETO CPU 680Mhz, 256 MB de RAM, 5 puertos LAN GIGA, RouterOS L5, \r\nRB/450G   (Presentacion Completo Incluye Case y Adaptador POE de 24V)', 'm2.jpeg', 0, 2, 2),
(12, 'Mikrotik SXT LITE5', '215.00', 60, 'MikroTik RB/SXT Lite5 16dBi 27dbm, 500mW  5.8GHz Dual-Polarity CPE SXT5nDr2\r\nCPE Completo ALTA POTENCIA 5GHz, 802.11n, 16dBi, Polarización Dual\r\nSXT es un 5GHz CPE Lite5 con 16dBi doble polaridad de la antena integrada,\r\nCPU de 600 MHz, RAM de 64 MB y L3 RouterOS instalado.', 'm3.jpg', 1, 2, 1),
(13, 'Mikrotik MTAD-5G-30D3-PA', '580.00', 20, 'mANT30 es una clase de 5 GHz 30dBi antena de plato profesional, construida con los más altos estándares de la industria. Construido para dar cabida a la perfección nuestros productos de la serie Basebox, pero puede ser utilizado para cualquier dispositivo inalámbrico montado en un poste debido a la longitud adecuada del cable FlexGuide incluido.', 'm4.jpg', 0, 2, 2),
(14, 'Cisco Linksys X-1000', '261.00', 30, 'Módem router ADSL2+ doméstico inalámbrico N  300mbps Funcionamiento Optimo para un mejor accesoa Internet', 'c1.jpg', 1, 3, 1),
(15, 'Cisco Linksys E1200', '210.00', 10, 'Recomendado para:\r\nCasas de tamaño medio, apartamentos y dormitorios; para navegar por Internet, correo electrónico e impresión inalámbrica; y para conectar varios dispositivos', 'c2.png', 0, 3, 1),
(16, 'D-Link DCS.930L', '203.00', 100, 'La cámara de vigilancia IP DCS-930L de D-Link proporciona una solución de vigilancia versátil y única tanto para la pequeña oficina como el hogar. \r\nA diferencia de una cámara conectada a Internet estándar, la cámara IP DCS-930L es un sistema completo de seguridad y vigilancia ya que incorpora\r\nuna CPU interna y un servidor web que transmite imágenes de vídeo de alta calidad entregando en sus manos la posibilidad de mantener ambientes \r\ntotalmente vigilados durante las 24 horas del día', 'd1.jpg', 1, 4, 2),
(17, 'D-Link DCS.6113', '840.00', 50, 'DLINK IP CAMERA DOME HD MODO NOCTURNO\r\nD-Link DCS-6113', 'd2.jpg', 0, 4, 2),
(18, 'D-Link DES.1016A', '98.00', 45, 'El DES-1016A es un Switch No Administrable de 16 puertos Fast Ethernet 10/100BASE-TX.\r\nNo requiere de configuración y su instalación es fácil y rápida. Soporta MDI/MDI-X en todos sus puertos. Diseño libre de ventilador que proporciona un funcionamiento sin ruido.', 'd3.jpg', 0, 4, 2),
(19, 'D-Link DCS.942L', '500.00', 60, 'La Cámara de Día / Noche Enhanced Wireless N es una solución de vigilancia versátil para su hogar o pequeña oficina.\r\nA diferencia de una cámara tradicional, la cámara transmite y graba imágenes de alta calidad de vídeo y audio durante 7 días de forma continua,\r\nincluso en completa oscuridad gracias a los LED infrarrojos incorporados.', 'd4.jpg', 0, 4, 2),
(20, 'D-Link DES.1005A', '30.00', 20, 'El DES-1005A es un Switch No Administrable de 5 puertos Fast Ethernet 10/100BASE-TX.\r\nNo requiere de configuración y su instalación es fácil y rápida. Soporta MDI/MDI-X en todos sus puertos.', 'd5.jpg', 0, 4, 1),
(21, 'D-Link DSL.2730e', '95.00', 50, 'Es un Router ADSL+2 150Mbps  con 4 puertos ethernet, es un router de alto rendimiento\r\nversatil para el hogar y la oficina. Con ADSL2/2+ integrado, soporta con velocidades de hasta 24mbps\r\nprotecion de firewall, calidad de servicio (QoS). Lan inalambrica rapida 4 puertos de comunicacion \r\nEthernet. Este router proporciona todas las funciones que un hogar o pequeña oficina necesita\r\npara establecer una segura conexion de lata velocidad a internet.', 'd6.jpg', 0, 4, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indices de la tabla `ordersdetail`
--
ALTER TABLE `ordersdetail`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `ordersid` (`ordersid`);

--
-- Indices de la tabla `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryid` (`categoryid`),
  ADD KEY `partnerid` (`partnerid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Filtros para la tabla `ordersdetail`
--
ALTER TABLE `ordersdetail`
  ADD CONSTRAINT `ordersid` FOREIGN KEY (`ordersid`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `productid` FOREIGN KEY (`productid`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `categoryid` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `partnerid` FOREIGN KEY (`partnerid`) REFERENCES `partner` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
