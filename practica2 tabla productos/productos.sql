-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 16:18:48
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
-- Base de datos: `tienda2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `marca`, `descripcion`, `cantidad`) VALUES
(1, 'SAMSUNG Galaxy Tab S11 Ultra AI Tablet Gris Wi-FI 256 GB', 15, 'Samsung', 'Mas delgado y ligero que nunca.\r\nDa vida a tus ideas al instante con AI-Sketch.\r\nApuntes inteligentes y sencillos con Wrtting Assist.\r\nImágenes increíblemente envolventes, con un brillo mejorado.\r\nProductividad sin límites con Samsung DeX.', 1),
(2, 'USTIYA USB-C Cargador para Garmin Fenix 8 E 7 7X 7s 6 6s 6X Pro Plus 5 5S 5X 5S Plus Forerunner 165/965/955/945/265/255/245,Vivoactive 3 4 4s 5 6,Venu 3/3S/2/sq2,Epix 2 Smart Watch Cable', 142, 'USTIYA', 'Este es un cargador Tipo C (USB C), no un puerto USB A. Compatibilidad perfecta: diseño perfecto para su preciosa Smart Watch para Garmin Fenix 8 E 7 7x 7s 6 6s 6x Pro Plus 5 5S 5X 5S Plus Forerunner 935 Approach S60 D2 Charlie Quatix 5 Sapphire Vivoactive 3 4 4s 5 6 Nota: Watch son solo para ilustración y no están incluidas. No utilice adaptadores de carga rápida. Si lo conecta al adaptador, la corriente no debe exceder 1A y el voltaje no debe exceder 5V.', 1),
(3, 'Taygeer Mochila de Viaje 10 kg Avion 35L Grande Impermeable para Hombre y Mujer, Compartimento Laptop 15.6 pulgadas, Puerto USB Integrado, Maleta Mano Funcional, Práctica Equipaje Cabinas, Negro', 495.87, 'taygeer', ' mochila de mano grande para mujer con cargador USB incorporado en el exterior y cable de carga incorporado en el interior, esta mochila tipo maleta para viajar le ofrece una manera más conveniente de cargar su teléfono mientras camina. Tenga en cuenta que la mochila para portátil de viaje para mujer no No se alimenta solo y no incluye un banco de energía ni un cable, el puerto de carga USB solo ofrece fácil acceso a la carga', 1),
(4, 'Potencia 1600W, Procesador con Licuadora, Jarra 86oz, 2 Vasos 24oz, Tecnología Auto-IQ, Sistema de Cocina Profesional Multifuncional, Color Negro (Reacondicionado)', 3, 'Ninja', 'El sistema de cocina más grande de Ninja con un 20% más de capacidad de mezcla\r\n7 programas Auto-iQ preestablecidos hacen que la mezcla y el procesamiento de alimentos sean fáciles\r\nLa base del motor de 1600 vatios pico aplasta el hielo a la nieve\r\nMezcla hasta 2.5 libras de masa en el procesador de alimentos de lujo de 9 tazas\r\nLas velocidades bajas, medias y altas dan control de tu mezcla', 3),
(5, 'Apple iPhone 15 Pro (128 GB) - Titanio Azul (Reacondicionado)', 10, 'Apple', 'Diseño en titanio, compacto y resistente.: Destaca por su diseño de titanio aeroespacial, que lo hace increíblemente ligero y resistente. Sus bordes redondeados y el nuevo Botón de Acción ofrecen una experiencia de usuario más cómoda y personalizable. Es la combinación perfecta de elegancia y funcionalidad.', 1),
(6, 'Ninja Blast Licuadora Portatil Recargable para Smoothies,Batidos,Ninja frappe de cable desmontable USB tipo C, vaso licuadora de 532ml(18 oz) (Reacondicionado) (Gris Claro)', 659, 'ninja', 'Base de motor recargable USB-C de 7.4 voltios\r\nMezcla en cualquier lugar: Prepare bebidas perfectamente suaves dondequiera que vaya\r\nGran capacidad: Rinde hasta 532 ml de tus mezclas favoritas\r\nFácil de transportar: Lleva tu bebida mientras viajas con una cómoda asa de transporte\r\nNo incluye tapa de vaso y cubre cuchillas', 1),
(7, 'RUMBO Maleta 20 Pulgadas para Cabina Avión 55 × 40 × 25 con Candado, Carcasa ABS, Ligera y con Ruedas Giratorias; Perfecta como Carry On 10 kg para Viajes Turísticos o de Negocios - Color Azul', 729, 'RUMBO', 'RENDIMIENTO Y COMODIDAD: Bicicleta de montaña rodada 26, con 21 velocidades, ligera y resistente, ideal para recorridos urbanos o caminos de terracería. Su cuadro de aleación metálica (aluminio y acero) te ofrece mayor agilidad y control en cada trayecto.\r\nSUSPENSIÓN DELANTERA: Equipada con una horquilla de suspensión que absorbe impactos en terrenos irregulares. Además, sus frenos de disco te brindan mayor estabilidad, control y seguridad durante tus recorridos.', 1),
(8, 'Juego de Desarmadores de Precisión 115 en 1,Destornilladores de Precision Extraíble Profesional Magnética, para Smartphone, PC, Portátil,Juguetes Laptop, Gafas, Reloj, Destornillador Gafas(Gris).', 209, 'FUNYSUMMER FS PARATODOS', '【Múltiples Usos】El kit de destornilladores preciso 115 en 1permite reparar con precisión y facilidad su iPad, iPhone, tablet, computadora portátil, PC, smartphone, reloj, gafas, cámara y otros dispositivos electrónicos. Con él, podrás intentar reparaciones DIY de manera sencilla.', 1),
(9, 'Lenovo Thinkpad X390 - Portátil FHD de 13,3 pulgadas, Quad-Core i5-8265U hasta 3,9 GHz, 8 GB de RAM, 256 GB SSD, lector de huellas dactilares, HDMI, Windows 11 Pro (reacondicionado)', 4, 'Lenovo', '【Excelente rendimiento】Lenovo ThinkPad X390 es un portátil de rendimiento superior que satisface las demandas de manejo de tareas y disfrute del entretenimiento.\r\nProcesador: Intel Quad Core i5-8265U de 8ª generación, 1,6 GHz hasta 3,9 GHz, ofreciendo una potencia de procesamiento fiable para una amplia gama de tareas, desde la informática diaria hasta la creación de contenido ligero.', 1),
(10, 'Mackie Thump210 Altavoz Alimentado de 1400 vatios y 10', 6, 'Mackie', 'Altavoz alimentado de 1.400 W con mezclador de 2 canales\r\ndriver de compresión de 1 pulgada\r\nModo de ducking (cada uno)\r\nEliminación de comentarios\r\nWoofer de 10\"', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
