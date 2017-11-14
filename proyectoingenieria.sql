-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2017 a las 02:31:27
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoingenieria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_user`
--

CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL,
  `sso_id` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(150) NOT NULL,
  `Rut` varchar(150) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `id_viña` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `app_user`
--

INSERT INTO `app_user` (`id`, `sso_id`, `password`, `first_name`, `last_name`, `email`, `Rut`, `telefono`, `direccion`, `id_viña`) VALUES
(15, 'juan', '$2a$10$gs2C7YLW1gw3FXYC91vOMuAPALkQNDCoqNwkw1qvAh1NaLrd1SQ2.', 'pedrin', 'contrerin', 'pecontr@alumnos.ubiobio.cl', '181992948', '+56993982206', 'villa padre hurtado block B-202', 0),
(21, 'pedrin', '$2a$10$7pQzGOwDrd6Q48EpDCdBBenizJwEJFX4/fjvEPxkxAA6/wXoCu6oy', 'pedro', 'contreras', 'pecontr@alumnos.ubiobio.cl', '181992948', '+56993982206', 'villa padre hurtado block B-202', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_user_user_profile`
--

CREATE TABLE `app_user_user_profile` (
  `user_id` bigint(20) NOT NULL,
  `user_profile_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `app_user_user_profile`
--

INSERT INTO `app_user_user_profile` (`user_id`, `user_profile_id`) VALUES
(15, 2),
(21, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persistent_logins`
--

CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_profile`
--

CREATE TABLE `user_profile` (
  `id` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_profile`
--

INSERT INTO `user_profile` (`id`, `type`) VALUES
(2, 'ADMIN'),
(3, 'DBA'),
(1, 'USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viña`
--

CREATE TABLE `viña` (
  `id_viña` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `comuna` varchar(25) NOT NULL,
  `ciudad` varchar(25) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `variedad` varchar(20) NOT NULL,
  `descripcion` varchar(320) NOT NULL,
  `email` varchar(150) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `viña`
--

INSERT INTO `viña` (`id_viña`, `name`, `rut`, `comuna`, `ciudad`, `direccion`, `latitud`, `longitud`, `variedad`, `descripcion`, `email`, `user_id`) VALUES
(1, 'viña', '181992948', 'bulnes', 'bulnes', 'villa padre hurtado', 23, 89, 'vino tinto', 'viña san pedrin ', 'pc.jssk@gmail.com', 21),
(7, 'viña el origen', '88445445-8', 'chillan', 'chillan', 'andres bello n° 3356', 220.14, 253.022, 'vino tinto', 'muy buena calidad de vino', 'pecontr@alumnos.ubiobio.cl', 21);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sso_id` (`sso_id`);

--
-- Indices de la tabla `app_user_user_profile`
--
ALTER TABLE `app_user_user_profile`
  ADD PRIMARY KEY (`user_id`,`user_profile_id`),
  ADD KEY `FK_USER_PROFILE` (`user_profile_id`);

--
-- Indices de la tabla `persistent_logins`
--
ALTER TABLE `persistent_logins`
  ADD PRIMARY KEY (`series`);

--
-- Indices de la tabla `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indices de la tabla `viña`
--
ALTER TABLE `viña`
  ADD PRIMARY KEY (`id_viña`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `viña`
--
ALTER TABLE `viña`
  MODIFY `id_viña` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `app_user_user_profile`
--
ALTER TABLE `app_user_user_profile`
  ADD CONSTRAINT `FK_APP_USER` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`),
  ADD CONSTRAINT `FK_USER_PROFILE` FOREIGN KEY (`user_profile_id`) REFERENCES `user_profile` (`id`);

--
-- Filtros para la tabla `viña`
--
ALTER TABLE `viña`
  ADD CONSTRAINT `viña_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
