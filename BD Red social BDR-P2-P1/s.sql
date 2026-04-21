-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2026 a las 16:21:06
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
-- Base de datos: `s`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `comentario_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`comentario_id`, `pub_id`, `usuario_id`, `texto`, `fecha`) VALUES
(1, 4, 1, 'adios', '2026-04-17 16:32:59'),
(2, 6, 3, 'sean amigps porfa', '2028-04-29 07:33:30'),
(3, 3, 1, 'hola', '2026-04-17 16:38:34'),
(4, 2, 2, 'me lo pase muy bien', '2026-04-17 16:38:50'),
(5, 5, 3, 'son muy divertidos', '2026-04-17 16:39:16'),
(6, 1, 4, 'se ve muy divertido', '2026-04-17 16:39:35'),
(7, 9, 3, 'porque no?', '2026-04-17 16:40:04'),
(8, 7, 2, 'muy bonito el carro', '2026-04-17 16:40:41'),
(9, 8, 5, 'se ve bien', '2026-04-17 16:41:00'),
(10, 2, 4, 'fue muy divertido', '2026-04-17 16:41:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashtags`
--

CREATE TABLE `hashtags` (
  `hashtag_id` int(11) NOT NULL,
  `etiqueta` varchar(60) NOT NULL,
  `creado_en` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `hashtags`
--

INSERT INTO `hashtags` (`hashtag_id`, `etiqueta`, `creado_en`) VALUES
(1, '#gaming', '2026-04-30'),
(2, '#gamerlife', '2026-04-30'),
(3, '#feliz', '2026-04-30'),
(4, '#amigos', '2026-04-30'),
(5, '#lluvia', '2026-04-30'),
(6, '#comida', '2026-04-30'),
(7, '#carro', '2026-04-30'),
(8, '#hola', '2026-04-30'),
(9, '#juegos', '2026-04-30'),
(10, '#metal', '2077-04-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `imagen_url` varchar(255) NOT NULL,
  `fecha_pub` datetime NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`pub_id`, `usuario_id`, `contenido`, `imagen_url`, `fecha_pub`, `likes`) VALUES
(1, 2, 'miren nomas este nuevo juego que tengo', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQ0v4Tws92ZIMzx05XdAK1E5vJ-bcxJsjKwWKcl8NI2qwzR97vQDELxUb314IrKnuH8MjDNpawAfbJHgqJRPnSiqGGYlYqdI-0Uh4AohzJTikIdLpWKq4K1CfeXJdgKiaZP0e48Ug&usqp=CAc', '2026-04-30 07:56:05', 3),
(2, 2, 'jugando con amigos', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxQSEhUTExMWFhUXFxoYGBcYGBcaFxoYGBcXGRcYFxceHSggGBolHRgVITIhJSkrLi4uGCAzODUtNygtLisBCgoKDg0OGxAQGy0mHyUtLS0tLS0tLS0tLS8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAMIBAwMBEQACEQEDEQH/', '2026-04-30 07:57:31', 1),
(3, 1, 'hola', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAXYAAACHCAMAAAA1OYJfAAAAkFBMVEXMAAD////LAADZYmLdcHDrsLD45ub01dX88PDYWVnTRUX++/vqra3IAAD44+PoqqrQLCzmnJzPCwviiYnaaGjklpbhhITtuLjkkpL+9/f12trno6PYXl7TPj7WT0/ffn7uvb3XVFTww8PPGRnyy8vQJyfddnbTNzf01tbQLy/UQ0PnoKDQH', '1567-04-16 17:02:07', 4),
(4, 1, 'adios', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSERMWFRUVGBgVFhYXFRcVFRcXGBgWGRUYFhcYHSggGholGxUWITEhJSkrLi4uGiAzODMsNygtLisBCgoKDg0OGhAQGy0gHyMtLS0tLS0tLS0tKy8tLS0tLS0vLS4tLS0tLTAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOkA2AMBIgACEQEDEQH/', '2026-04-16 17:09:24', 3),
(5, 3, 'me gustan los juegos', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSEhMVFhUXFRUVGBcXFRUYFRcYFxUWFhUXFxgYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGy0lICUtLS0tLS0tLS0tLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBEQACEQEDEQH/', '2030-04-16 17:10:00', 1),
(6, 3, 'alguien paraser amigos', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUTEhIWFhUVFxgZGBcXGBgYFxcVHRgYFxgaGBcYHSggGBolGxgXIjEhJSorLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGy8lICUtMDIyLSstLS0vLS0vLS8tLy0tLS8tLTUtLS0tLS0tLS0vLS0vKy0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/', '2040-04-16 17:13:57', 1),
(7, 4, 'que buen auto encontre', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFhUXFRUXFRcYGRcXFxUYFRUXFxUXFxUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQGisdHR0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKgBLAMBIgACEQEDEQH/', '2026-04-30 08:14:39', 3),
(8, 4, 'que buen carro', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxIQEA8PDxIQFQ8PDw0NDw8PFQ8PDw8PFREWFhURFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OFQ8QFy0dHR0tLS0tKy0tLS0tLSstLSstLSstKy0tLSstKy0tLS0tLS0tKy0rLSstLS0tLS0tLSstLf/AABEIAKgBLAMBIgACEQEDEQH/', '2026-04-30 08:15:57', 3),
(9, 5, 'no me gusta esta torre', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxIQEBUQEBMVFRUVFRUWFRUVFRUVFRUVFhYXFhUWFhUYHSkgGBolHRUWITEhJSkrLi4uFx8zODUtNygwLisBCgoKDg0OGhAQGi0lHyUtLS0tLS0tLS0tLS0tLy0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLSstL//AABEIARMAtwMBIgACEQEDEQH/', '2077-08-20 08:17:12', 4),
(10, 3, 'sean mis amigos', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEhIVFRUWFRYVFRcVFhUVFRcXFRYWFxUXFRUYHSggGBolHRUXITEhJSkrLi4uFyAzODMtNygtLisBCgoKDg0OGhAQGisdHh0tKystLSstLS0tLS0rLS0tLS0rLS0tLS0tLSstLS0tLS0tLS0tLS0tLTctLSstLS0tK//AABEIAKkBKgMBIgACEQEDEQH/', '2027-05-27 07:43:20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_hashtags`
--

CREATE TABLE `pub_hashtags` (
  `pub_id` int(11) NOT NULL,
  `hashtag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `pub_hashtags`
--

INSERT INTO `pub_hashtags` (`pub_id`, `hashtag_id`) VALUES
(4, 3),
(6, 4),
(3, 3),
(2, 4),
(5, 9),
(1, 9),
(9, 10),
(7, 7),
(8, 7),
(10, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_likes`
--

CREATE TABLE `pub_likes` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_like` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `pub_likes`
--

INSERT INTO `pub_likes` (`pub_id`, `usuario_id`, `fecha_like`) VALUES
(4, 2, '2026-04-17 16:24:04'),
(6, 3, '2026-04-17 16:24:12'),
(3, 5, '2026-04-17 16:24:24'),
(2, 2, '2026-04-17 16:24:34'),
(5, 3, '2026-04-17 16:26:48'),
(1, 1, '2026-04-17 16:26:56'),
(9, 5, '2026-04-17 16:27:03'),
(8, 4, '2026-04-17 16:31:53'),
(7, 4, '2026-04-17 16:32:11'),
(3, 2, '2026-04-17 16:32:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `seguidor_id` int(11) NOT NULL,
  `seguido_id` int(11) NOT NULL,
  `fecha_follow` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `seguidores`
--

INSERT INTO `seguidores` (`seguidor_id`, `seguido_id`, `fecha_follow`) VALUES
(2, 1, '2026-04-30'),
(1, 2, '2026-04-29'),
(3, 4, '2026-04-30'),
(4, 3, '2028-02-29'),
(5, 1, '2025-10-01'),
(5, 2, '2027-04-30'),
(4, 1, '2026-04-30'),
(1, 5, '2026-04-28'),
(2, 3, '2036-04-30'),
(1, 4, '1996-04-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `username`, `email`, `bio`, `fecha_reg`) VALUES
(1, 'juan', 'juan@gmail.com', 'juan', '0000-00-00'),
(2, 'ana', 'anaplays@gmail.com', 'me gusta jugar juegos de mesa', '2026-04-01'),
(3, 'luis', 'luispro67@gmail.com', 'hola me gustan losvideojuegos', '2026-05-01'),
(4, 'pedro', 'pedrocars@gmail.com', 'me gustan los carros', '2026-04-01'),
(5, 'valeri', 'valeri@gmail.com', 'quiero ser alguien', '2077-09-15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hashtag_id`),
  ADD UNIQUE KEY `etiqueta` (`etiqueta`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD KEY `hashtag_id` (`hashtag_id`),
  ADD KEY `pub_id` (`pub_id`);

--
-- Indices de la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD KEY `seguidor_id` (`seguidor_id`),
  ADD KEY `seguido_id` (`seguido_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `comentario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `hashtag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD CONSTRAINT `pub_hashtags_ibfk_1` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`hashtag_id`),
  ADD CONSTRAINT `pub_hashtags_ibfk_2` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`);

--
-- Filtros para la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD CONSTRAINT `pub_likes_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `pub_likes_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD CONSTRAINT `seguidores_ibfk_1` FOREIGN KEY (`seguidor_id`) REFERENCES `usuarios` (`usuario_id`),
  ADD CONSTRAINT `seguidores_ibfk_2` FOREIGN KEY (`seguido_id`) REFERENCES `usuarios` (`usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
