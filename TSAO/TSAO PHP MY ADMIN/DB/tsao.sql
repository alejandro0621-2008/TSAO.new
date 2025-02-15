-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-02-2025 a las 22:54:31
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tsao`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acudientes`
--

CREATE TABLE `acudientes` (
  `Id_acu` int(11) NOT NULL,
  `Nombre_acu` varchar(255) NOT NULL,
  `Id_user_acu` int(11) NOT NULL,
  `Apellido_acu` varchar(255) NOT NULL,
  `Genero_acu` enum('Masculino','Femenino') NOT NULL,
  `Correo_acu` varchar(255) NOT NULL,
  `Telefono_acu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `acudientes`
--

INSERT INTO `acudientes` (`Id_acu`, `Nombre_acu`, `Id_user_acu`, `Apellido_acu`, `Genero_acu`, `Correo_acu`, `Telefono_acu`) VALUES
(40, 'Isabella', 69, 'Villegas Rosero', 'Femenino', 'iabella.villegas@gmail.com', '3214532798'),
(41, 'juliana', 70, 'cuadros castanade', 'Femenino', 'juli@gamil.com', '345728454'),
(42, 'cristian ', 68, 'gonzales gonzales', 'Masculino', 'cristian.gonz@gmail.com', '231456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `Nombre_Asis` varchar(225) NOT NULL,
  `Id_Asis` int(11) NOT NULL,
  `Fecha_Asis` date NOT NULL,
  `Hora_Entrada` time NOT NULL,
  `Hora_Salida` time DEFAULT NULL,
  `Estado_Asis` enum('Asistió','Ausente','Tardanza') NOT NULL,
  `Id_estud4` int(11) NOT NULL,
  `Curso2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`Nombre_Asis`, `Id_Asis`, `Fecha_Asis`, `Hora_Entrada`, `Hora_Salida`, `Estado_Asis`, `Id_estud4`, `Curso2`) VALUES
('helloo', 27, '2025-02-14', '16:27:46', NULL, 'Ausente', 24, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `Id_curso` int(11) NOT NULL,
  `Nombre_cur` text NOT NULL,
  `Nivel_Academic` varchar(25) NOT NULL,
  `Tipo_curso` enum('Clases normal','media tecnica','Sena','') DEFAULT NULL,
  `id_Asis2` int(11) DEFAULT NULL,
  `id_Inasis3` int(11) DEFAULT NULL,
  `Grado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`Id_curso`, `Nombre_cur`, `Nivel_Academic`, `Tipo_curso`, `id_Asis2`, `id_Inasis3`, `Grado`) VALUES
(1, '10-4', 'Educación Primaria', 'Clases normal', NULL, NULL, 10),
(2, '9-3', 'Educación Primaria', 'media tecnica', NULL, NULL, 9),
(3, '8-2', 'Educación Primaria', 'Sena', NULL, NULL, 8),
(4, '7-1', 'Educación Primaria', '', NULL, NULL, 7),
(5, '11-5', 'Bachillerato', 'Clases normal', NULL, NULL, 11),
(6, '12-1', 'Bachillerato', 'media tecnica', NULL, NULL, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `Id_estud` int(11) NOT NULL,
  `Id_curso2` int(11) NOT NULL,
  `Id_acudiente2` int(11) NOT NULL,
  `Id_user_estu` int(11) NOT NULL,
  `Nombre_estud` varchar(255) NOT NULL,
  `Apellido_estud` varchar(255) NOT NULL,
  `FechaDNaci_estud` date NOT NULL,
  `Genero_estud` enum('Masculino','Femenino') NOT NULL,
  `Telefono_estud` varchar(255) NOT NULL,
  `Correo_estud` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`Id_estud`, `Id_curso2`, `Id_acudiente2`, `Id_user_estu`, `Nombre_estud`, `Apellido_estud`, `FechaDNaci_estud`, `Genero_estud`, `Telefono_estud`, `Correo_estud`) VALUES
(24, 1, 40, 73, 'Santiago', 'Valencia', '2008-08-14', 'Masculino', '3117227580', 'wjhfekjhe@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inasistencias`
--

CREATE TABLE `inasistencias` (
  `Id_inasistencia` int(11) NOT NULL,
  `Id_estud` int(11) NOT NULL,
  `Motivo_inasistencia` varchar(255) DEFAULT NULL,
  `Dias_inasistencia` int(25) NOT NULL,
  `Incapacidad_ina` enum('Incapacidad Psicológica','Incapacidad  Médica','Permiso','') DEFAULT NULL,
  `id_curso3` int(11) DEFAULT NULL,
  `fecha_ina` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inasistencias`
--

INSERT INTO `inasistencias` (`Id_inasistencia`, `Id_estud`, `Motivo_inasistencia`, `Dias_inasistencia`, `Incapacidad_ina`, `id_curso3`, `fecha_ina`) VALUES
(104, 24, 'estaba lloviendo muy fuerte', 1, '', 1, '2025-02-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id_profesor` int(11) NOT NULL,
  `nombre_pro` varchar(25) NOT NULL,
  `apellido_pro` varchar(25) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_contratacion` date DEFAULT NULL,
  `asignatura` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id_profesor`, `nombre_pro`, `apellido_pro`, `id_usuario`, `fecha_contratacion`, `asignatura`) VALUES
(14, '', '', 73, '2023-08-14', 'Matematicas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `Id_Rol` int(11) NOT NULL,
  `Nombre_rol` varchar(25) NOT NULL,
  `Descrip_R` varchar(255) NOT NULL,
  `NVL_acceso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`Id_Rol`, `Nombre_rol`, `Descrip_R`, `NVL_acceso`) VALUES
(1, 'Administrador', 'Acceso completo a todas las funciones', 3),
(2, 'Profesor', 'Acceso a funciones relacionadas con estudiantes y clases', 2),
(3, 'Estudiante', 'Acceso limitado a funciones académicas', 1),
(4, 'Acudiente', 'Acceso a la asistencia y el rendimiento de su hijo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_user` int(11) NOT NULL,
  `Correo_user` varchar(25) NOT NULL,
  `Telefono_user` int(255) NOT NULL,
  `Contraseña_user` varchar(60) NOT NULL,
  `Id_rol2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_user`, `Correo_user`, `Telefono_user`, `Contraseña_user`, `Id_rol2`) VALUES
(68, 'papepe@gmail.com', 24244424, 'peloteuwu', 4),
(69, 'isabella@gmail.com', 2321824, '$2b$12$JWE0Rwt7L8Y9KvxUTgqaEun7RM8KcZqnbtWXMqaFgK/aGELafKZz.', 4),
(70, 'juliana@gmail.com', 312234567, 'juli234', 4),
(71, 'agustin@gmail.com', 1234567, 'thebest56', 4),
(72, 'pkilisos@gmail.com', 987654, 'pkilous34', 4),
(73, 'saracav@gmail.com', 67890543, 'saraville1', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acudientes`
--
ALTER TABLE `acudientes`
  ADD PRIMARY KEY (`Id_acu`),
  ADD UNIQUE KEY `Id_user_acu_2` (`Id_user_acu`),
  ADD KEY `Id_user_acu` (`Id_user_acu`);

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`Id_Asis`),
  ADD KEY `Id_estud4` (`Id_estud4`),
  ADD KEY `Curso2` (`Curso2`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`Id_curso`),
  ADD KEY `fk_id_curso2` (`id_Asis2`),
  ADD KEY `fk_id_curso3` (`id_Inasis3`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`Id_estud`),
  ADD UNIQUE KEY `Id_user_estu_2` (`Id_user_estu`),
  ADD KEY `Id_acudiente2` (`Id_acudiente2`),
  ADD KEY `Id_curso2` (`Id_curso2`),
  ADD KEY `Id_user_estu` (`Id_user_estu`);

--
-- Indices de la tabla `inasistencias`
--
ALTER TABLE `inasistencias`
  ADD PRIMARY KEY (`Id_inasistencia`),
  ADD KEY `id_curso3` (`id_curso3`),
  ADD KEY `Id_estud` (`Id_estud`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id_profesor`),
  ADD UNIQUE KEY `id_usuario_2` (`id_usuario`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`Id_Rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_user`),
  ADD KEY `Id_rol2` (`Id_rol2`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acudientes`
--
ALTER TABLE `acudientes`
  MODIFY `Id_acu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `Id_Asis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `Id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `Id_estud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `inasistencias`
--
ALTER TABLE `inasistencias`
  MODIFY `Id_inasistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `Id_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acudientes`
--
ALTER TABLE `acudientes`
  ADD CONSTRAINT `acudientes_ibfk_1` FOREIGN KEY (`Id_user_acu`) REFERENCES `usuario` (`Id_user`);

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_ibfk_3` FOREIGN KEY (`Curso2`) REFERENCES `curso` (`Id_curso`),
  ADD CONSTRAINT `asistencias_ibfk_4` FOREIGN KEY (`Id_estud4`) REFERENCES `estudiantes` (`Id_estud`);

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_2` FOREIGN KEY (`Id_acudiente2`) REFERENCES `acudientes` (`Id_acu`),
  ADD CONSTRAINT `estudiantes_ibfk_3` FOREIGN KEY (`Id_curso2`) REFERENCES `curso` (`Id_curso`),
  ADD CONSTRAINT `estudiantes_ibfk_4` FOREIGN KEY (`Id_user_estu`) REFERENCES `usuario` (`Id_user`);

--
-- Filtros para la tabla `inasistencias`
--
ALTER TABLE `inasistencias`
  ADD CONSTRAINT `inasistencias_ibfk_1` FOREIGN KEY (`id_curso3`) REFERENCES `curso` (`Id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inasistencias_ibfk_2` FOREIGN KEY (`Id_estud`) REFERENCES `estudiantes` (`Id_estud`);

--
-- Filtros para la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD CONSTRAINT `profesores_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`Id_user`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id_rol2`) REFERENCES `rol` (`Id_Rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
