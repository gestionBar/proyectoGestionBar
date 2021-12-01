-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2021 a las 14:17:50
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

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Cocteles a Base de Baileys', 'Línea de cocteles  a base de Bayleys'),
(2, 'Cocteles a Base de Ginebra', 'Corresponde a la categoría los cocteles a base de Ginebra'),
(3, 'Cocteles a Base de Ron', 'Corresponde a la categoría de cocteles a base de Ron'),
(4, 'Cocteles a Base de Tequila', 'Corresponde a los cocteles a base de Tequila'),
(5, 'Cocteles a Base de Vodka', 'Corresponde a los cocteles a base de Vodka'),
(6, 'Cocteles a Base de Whisky', 'Corresponde a los cocteles con base de whisky'),
(7, 'Peceras', 'Corresponde a la categoría de peceras '),
(8, 'Frappes y Limonadas', 'Corresponde a la categoria de los frappes y  limonadas'),
(9, 'Vinos', 'Corresponde a la categoría de los vinos '),
(10, 'Cervezas Nacionales', 'Corresponde a la categoría de las cerevezas nacionales'),
(11, 'Cervezas Internacionales', 'Corresponde a la categoría de las cervezas internacionales'),
(12, 'Licores', 'Corresponde a la ctegoría de aguardiente, ron, whisky y otros licores'),
(13, 'Hamburguesas', 'Categoría correspondiente a las hamburguesas '),
(14, 'HotDogs', 'Corresponde a la categoría de los hotdogs'),
(15, 'Salchipapas', 'Corresponde a la categoría de salchipapas, salchipollos y otros productos');

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
(3, 'Jhon Alezander', 'Castilla Florez', 'CC', '1092942510', '3124828696', 'Av. 32 30-16 Divina Pastora', '2002-05-20', 'yoelcastilla@gmail.com', '12345', 1),
(4, 'MArio Antonio', 'Acosta Esparza', 'CC', '98838382343', '3124828696', 'Av. 32 30-16 Divina Pastora', '1999-10-12', 'yoelcastilla@gmail.com', 'Mario3456', 1),
(5, 'Hermenegildo', 'Hernandez', 'CE', '2345654321', '3124828696', 'Av. 32 30-16 Divina Pastora', '2000-05-20', 'stivenserrano@gmail.com', 'ContraseñaDeEmpleado', 2),
(7, 'Eduardo José', 'Escalante', 'CC', '1092942510', '3138669985', 'Cúcuta', '2003-02-04', 'jcastillaosorio@gmail.com', 'Contraseña', 2),
(8, 'Sebas', 'Arias', 'CC', '186253421', '3138669985', 'Los Patios', '2001-12-12', 'matildealexandraal@ufps.edu.co', 'Another', 2);

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

--
-- Volcado de datos para la tabla `producto_menu`
--

INSERT INTO `producto_menu` (`idProducto_menu`, `nombreProducto`, `descripcion`, `precio`, `url_imagen`, `categoriaProducto`) VALUES
(1, 'Pecera Blue', 'Hielo, Ginger, Vodka Azul, Curasao Azul, Licor de Melón, Goma de Pescado, Curasao Triple Seco', 25000, 'https://cdn2.cocinadelirante.com/sites/default/files/images/2017/04/fishbowls.jpg', 7),
(2, 'Pecera Loca', 'Vodka, Ginger, Gomitas, Agua Tónica, Ron de Coco, Curasao Azul', 25000, 'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/pecera_claisica_-_tablespoon.jpg', 7),
(3, 'Pecera Tropical', 'Tequila, Corona, Jugo de Piña, Ron de Coco, Jugo de Limon, Licor de Melón, Rodaja de Limón, Naranja ', 30000, 'https://i.pinimg.com/236x/6a/54/dd/6a54dd6b5a7c35600d88dee39d84f98a.jpg', 7),
(5, 'Ron Viejo de Caldas ', 'Ron viejo de Caldas presentación 750 ml ', 70000, 'https://exitocol.vtexassets.com/arquivos/ids/9608868/Ron-Viejo-De-Caldas-Botella-X-750ml-721457_a.jpg?v=637662716825900000', 12),
(6, 'Ron Medellín', 'Ron Medellín en presentación de 750 ml ', 70000, 'https://exitocol.vtexassets.com/arquivos/ids/2053348/Ron-Medellin-Anejo-X750ml-32201_a.jpg?v=637270335863470000', 12),
(7, 'Aguardiente Antioqueño', 'Aguardiente antioqueño en presentación de 750 ml', 70000, 'https://exitocol.vtexassets.com/arquivos/ids/5432724/Aguardiente-Antioqueno-Sin-Azucar-En-Botella-X-750ml-371060_a.jpg?v=637444008559800000', 12),
(8, 'Whisky Old Parr', 'Whisky Old Parr presentación de 750 ml', 180000, 'https://barranquilla.gruposotillo.com/wp-content/uploads/2016/12/rzd_whisky_old_parr_12_an%C2%A6aos_75ml.jpg', 12),
(9, 'Whisky Buchanan\'s', 'Whisky Buchanan\'s en presentación de 750 ml', 180000, 'https://exitocol.vtexassets.com/arquivos/ids/1973523/Whisky-Buchanans-Deluxe-750-ml-24334_a.png?v=637258925881570000', 12),
(10, 'Tequila Jose Cuervo', 'Tequila Jose Cuervo en presentación de 750 ml ', 110000, 'https://barranquilla.gruposotillo.com/wp-content/uploads/2014/08/tequila_jose_cuervo_especial_gold_dorado_750ml_imagen1.jpg', 12),
(11, 'Vodka Absolut', 'Vodka Absolut en presentación de 750 ml', 120000, 'https://wongfood.vteximg.com.br/arquivos/ids/386941-1000-1000/10549-1.jpg?v=637385126870200000', 12),
(12, 'Bayles', 'Bayles en presentación de 750 ml ', 90000, 'https://wongfood.vteximg.com.br/arquivos/ids/463480-750-750/577138-01-137665.jpg?v=637649367213630000', 12),
(13, 'Ron Viejo de Caldas Media', 'Ron Viejo de Caldas en presentación 375 ml', 40000, 'https://lafogata.com.co/wp-content/uploads/2020/08/RON-VIEJO-DE-CALDAS-MEDIA.jpg', 12),
(14, 'Ron Medellín Media', 'Ron Medellín en presentación de 375 ml', 40000, 'https://exitocol.vtexassets.com/arquivos/ids/2053347/Ron-Medellin-Anejo-X375ml-32191_a.jpg?v=637270335741700000', 12),
(15, 'Aguardiente Antioqueño Media', 'Aguardiente Antioqueño en presentación de 375 ml', 40000, 'https://www.lalicoreradelanoche.com/wp-content/uploads/2020/08/antioque%C3%B1o-azul-de-375-ml-1.png', 12),
(16, 'Whisky Old Parr Media', 'Whisky Old Parr en presentación de 500ml', 120000, 'https://amarilla.co/images/amarilla/products/8687/cervezas-y-licores-a-domicilio-guatemala-grand-old-parr-12years-500-1200x1200.jpg', 12),
(17, 'Whisky Buchanan\'s Media', 'Whisky Buchanan\'s en presentación 375', 120000, 'https://jumbocolombiafood.vteximg.com.br/arquivos/ids/3502296-1000-1000/50196395.jpg?v=637245464466570000', 12),
(18, 'Tequila Jose Cuervo Media', 'Tequila Jose Cuervo  en presentación de 375 ml', 70000, 'https://http2.mlstatic.com/D_NQ_NP_861824-MCO43147010881_082020-O.webp', 12),
(19, 'Vodka Smirnoff', 'Vodka Smirnoff en presentación de 750 ml', 120000, 'https://www.cavadelduero.com/wp-content/uploads/2021/02/27381.png', 12),
(20, 'Peroni', 'Cerveza Peroni tamaño personal ', 80000, 'https://lalicorera.com/img/products/Peroni.png', 11),
(21, 'Stella Artois', 'Cerveza Stella Artois en tamaño personal', 8000, 'https://bevgo.com.co/wp-content/uploads/2020/12/1369-2.jpg', 11),
(22, 'Heineken', 'Cerveza Heineken en tamaño personal', 8000, 'https://www.heineken.com/media-us/01pfxdqq/heineken-original-bottle.png?quality=85', 11),
(23, 'Sminrnoff Ice', 'Cerveza Smirnoff Ice en tamaño personal', 8000, 'https://static.merqueo.com/images/products/large/0983773a-a620-4c7b-85a2-206bfa2c04c7.jpg', 11),
(24, 'Grolsch', 'Cerveza Grolsch en tamaño personal', 80000, 'https://lalicorera.com/img/products/cerveza-grolsch.png', 11),
(25, 'Corona', 'Cerveza Corona en tamaño personal', 8000, 'https://lacasserole.com.co/wp-content/uploads/2021/03/CERVEZA-CORONA-335-DE-500-X-500.jpg', 11),
(26, 'Budweiser', 'Cerveza Budweiser de tamaño personal', 8000, 'https://mistiendas.com.co/2380-large_default/cerveza-budweiser-nr.jpg', 11),
(27, 'Buckler Sin Alcohol', 'Cerveza Buckler Sin Alcohol en tamaño personal', 8000, 'https://osolemio.com.co/82/cerveza-buckler-sin-alcohol.jpg', 11),
(28, 'Miller Draft', 'Cervza Miller Draft en tamaño personal', 8000, 'https://habibdroguerias.com/wp-content/uploads/2021/05/71352.jpg', 11),
(29, 'Erdinger Pikantus', 'Cerveza internacional Erdinger Pikantus', 18000, 'https://almacen.do/wp-content/uploads/2018/08/Cerveza-Erdinger-Pikantus-16.9-oz-Front.jpg', 11),
(30, 'Águila Light ', 'Cerveza Águila Light de tamaño personal', 5000, 'http://cdn.shopify.com/s/files/1/0335/3663/9116/products/CERVEZAAGUILALIGHT330.png?v=1603476583', 10),
(31, 'Redds', 'Cerveza Redds en tamaño personal', 50000, 'https://www.tuslicores.com/wp-content/uploads/2020/04/reddslata.png', 10),
(32, 'Club Colombia Negra', 'Cerveza Club Colombia Negra de tamaño personal', 6000, 'https://licoresdelasabana.com/wp-content/uploads/2019/08/Cerveza-Club-Colombia-negra-1.jpg', 10),
(33, 'Club Colombia Roja', 'Cerveza Club Colombia Roja en tamaño personal', 5000, 'https://lavialactea1979.com/wp-content/uploads/2020/09/rzd_cerveza_club_colombia_roja_und_330ml.jpg', 10),
(34, 'Pilsen', 'Cerveza Pilsen de tamaño personal', 5000, 'https://www.tuslicores.com/wp-content/uploads/2020/04/pilsenlata.png', 10),
(35, 'Miller Lite', 'Cerveza Miller Lite tamaño personal', 5000, 'https://licoreralasixtina.com/wp-content/uploads/2020/11/Cerveza-Miller-Lite-de-Lata.jpg', 10),
(36, 'Club Colombia Rubia', 'Cerveza Club Colombia Dorada tamaño personal', 5000, 'https://distrilicoresdeltolima.com/wp-content/uploads/2020/06/cerveza-club-colombia-lata-330.png', 10),
(37, 'Águila Cero', 'Cerveza Águila Cero de tamaño personal', 5000, 'https://www.tulicorera.online/wp-content/uploads/2019/09/5.AGUILA-CERO.jpg', 10),
(38, 'Botella Gato Negro ', 'Vino Gato Negro en presentación de Botella', 55000, 'https://jumbocolombiafood.vteximg.com.br/arquivos/ids/3536989-750-750/7804300010638.jpg?v=637341419074970000', 9),
(39, 'Botella Santa Rita', 'Vino Santa Rita en presentación de botella', 60000, 'https://jumbocolombiafood.vteximg.com.br/arquivos/ids/3711393-750-750/7804330984060.jpg?v=637545363305500000', 9),
(40, 'Botella Casillero del Diablo', 'Vino Casillero del Diablo presentación botella', 70000, 'https://jumbocolombiafood.vteximg.com.br/arquivos/ids/3512273-1000-1000/7804320985633.jpg?v=637274217095600000', 9),
(41, 'Botella Undurraga', 'Vino Undurragda presentación de botella', 65000, 'https://jumbocolombiafood.vteximg.com.br/arquivos/ids/179137-1000-1000/7804315304807.jpg?v=636124972781900000', 9),
(42, 'Botella J.P Chenet ', 'Vino J.P Chenet en presentación de botella', 65000, 'https://dislicores.vteximg.com.br/arquivos/ids/155702-1000-1000/Vinos-espumoso_106027_1.jpg?v=637074676100200000', 9),
(43, 'Botella De La Huerta', 'Vino De la Huerta en presentación de botella', 55000, 'https://dislicores.vteximg.com.br/arquivos/ids/156106-1000-1000/Vinos-tinto_100135_1.jpg?v=637085600201730000', 9),
(44, 'Media Gato Negro', 'Vino Gato Negro en presentación de media botella ', 35000, 'https://surtilicor.com/wp-content/uploads/2020/10/GATO-NEGRO-CABERNET-SAUVIGNON-PIBA-SOLA.jpg', 9),
(45, 'Media Santa Rita', 'Vino Santa Rita en presentación de media botella', 40000, 'https://exitocol.vtexassets.com/arquivos/ids/1973959-800-auto?v=637258964949730000&width=800&height=auto&aspect=true', 9),
(46, 'Media Casillero del Diablo', 'Vino Casillero del Diablo en presentación de media botella ', 45000, 'https://mercaldas.vteximg.com.br/arquivos/ids/183894-1300-1300/Vino-CASILLERO-DEL-DIABLO-375-Tinto-Cabernet-Sa.jpg?v=637012185946570000', 9),
(47, 'Media Undurraga', 'Vino Undurraga en presentación de media botella', 35000, 'https://jumbocolombiafood.vteximg.com.br/arquivos/ids/200074-1000-1000/7804315101567.jpg?v=636262153131870000', 9),
(48, 'Media J.P Chenet', 'Vino J.P Chenet en presentación de media botella', 35000, 'https://http2.mlstatic.com/D_NQ_NP_981986-MCO44743872024_012021-O.webp', 9),
(49, 'Media De La Huerta', 'Vino De la Huerta en presentación de media botella', 35000, 'https://s.cornershopapp.com/product-images/1068422.jpg?versionId=5cPaJcfnhpO1.ZSA.YJGBZvrHuEA9C.8', 9),
(50, 'Frappé de Mandarina', 'Frappé de Mandarina', 6000, 'https://cdn2.cocinadelirante.com/sites/default/files/images/2016/06/mandarina_0.jpg', 8),
(51, 'Frappé de Naranja', 'Frappé de Naranja', 6000, 'https://1.bp.blogspot.com/-Jjna9mz30b0/YGH4jsHdFtI/AAAAAAAB6DE/iyaPZpbseY0x2nSna8IQgKXYm5RZMemTQCLcBGAsYHQ/s1280/jugo_naranja2_1.jpg', 8),
(52, 'Frappé de Limón', 'Frappé de Limón', 6000, 'https://pbs.twimg.com/media/DpaW5A4WkAAzyQD.jpg', 8),
(53, 'Limonada de Cereza', 'Limonada de Cereza', 6000, 'https://juegoscocinarpasteleria.org/wp-content/uploads/2020/02/Limonada-de-cereza-espumosa.jpg', 8),
(54, 'Limonada de Coco', 'Limonada de Coco', 6000, 'https://p4maestrospaelleros.com/wp-content/uploads/2020/05/coco-min.jpg', 8),
(55, 'Limonada de Hierbabuena', 'Limonada de Hierbabuena', 8000, 'https://cdn.kiwilimon.com/articuloimagen/30479/28971.jpg', 8),
(56, 'Pecera Loca', 'Vodka, Ginger, Gomitas, Agua Tónica, Ron de Coco, Curasao Azul', 25000, 'https://cdn.chefclub.tools/uploads/recipes/cover-thumbnail/bf2404f2-bd5b-4281-8694-4e90d8c2469d_Kve9OIB.jpg', 7),
(57, 'Pecera Tropical', 'Tequila, Corona, Jugo de Piña, Ron de Coco, Jugo de Limón, Licor de Melón, Rodaja de Limón, Naranja ', 30000, 'https://static.wixstatic.com/media/4ab3ef_a7800e14243b45599839035c11042831~mv2.jpg/v1/fill/w_300,h_300,fp_0.50_0.50,q_90/4ab3ef_a7800e14243b45599839035c11042831~mv2.jpg', 7),
(59, 'BlackThorn', 'Whisky, Angostura, Vermut Seco, Piel de Limón', 15000, 'https://3.bp.blogspot.com/-fwxu_PjGru8/XC5A6-kutvI/AAAAAAAAFsk/-q7NeeZ88msC2cBuy_NZev4EVOp2y9XlwCLcBGAs/s1600/Blackthorn-Cocktail-018-websize-x500.jpg', 6),
(60, 'Old- Fashioned', 'Whisky, Azúcar, Guinda, Angostura, Piel de Naranja, Agua Mineral sin Gas', 15000, 'https://www.losvinos.com.ar/wp-content/uploads/2019/05/Old-Fashioned-5-914x1024.jpg', 6),
(61, 'Churchill', 'Whisky, Vermut Rojo, Zumo de Lima, Curasao Triple', 15000, 'https://recetasfacilesok.com/wp-content/uploads/2021/07/Receta-Facil-Manhattan-Como-preparar-Manhattan..jpg', 6),
(62, 'Rob-Roy', 'Whisky, Guinda, Angostura, Vermut Rojo', 15000, 'https://4.bp.blogspot.com/_uMgUQLeitak/S2h8VVwkXlI/AAAAAAAABag/V1nV8sDu7yw/s280/rob+roy+2.jpg', 6),
(63, 'GasLight', 'Whisky, Vermut Rojo, Piel de Naranja, Curasao Naranja', 15000, 'https://images.absolutdrinks.com/drink-images/Raw/Absolut/e5dcb701-8193-4674-9d2b-1ce4ab4bfd51.jpg?impolicy=drinkcrop&aspect=fit&height=1150&y=225', 6),
(64, 'Scoff-Law', 'Wisky, Angostura, Granadina, Vermut Seco, Zumo de Limón', 15000, 'https://st4.depositphotos.com/1692343/40027/i/600/depositphotos_400279560-stock-photo-boozy-refreshing-rye-scofflaw-cocktail.jpg', 6),
(65, 'White Russian', 'Vodka, Nata Líquida, Licor de Café', 15000, 'https://img-global.cpcdn.com/recipes/ec7edfbe2a6d56cb/400x400cq70/photo.jpg', 5),
(66, 'Delirio Azul', 'Ron, Vodka, Seven Up, Curasao Azul, Licor de Melocotón', 15000, 'https://4.bp.blogspot.com/-bTU4TvSHTyQ/WabjJsy3IaI/AAAAAAAAc30/m_LfkirndlEDGaY4NGzN3ar1OrEgowppgCLcBGAs/s1600/delirio-azul-coctel.jpg', 5),
(67, 'Coco Loco', 'Vodka, Ron Blanco, Jugo de Limón, Crema de Coco, Tequila Blanco', 15000, 'https://3.bp.blogspot.com/-1zq4F3jCkls/WV0uSfxchII/AAAAAAAAcvU/JsIrvv4n1F8Z4Er9GnNto1H-P3MoIokcgCLcBGAs/s1600/coco-loco.jpg', 5),
(68, 'Pecera Fantasía', 'Pecera Fantasía', 25000, 'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/pecera_de_mezcal_y_cerveza_-_reddit2.jpg', 7);

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
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `producto_menu`
--
ALTER TABLE `producto_menu`
  MODIFY `idProducto_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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
