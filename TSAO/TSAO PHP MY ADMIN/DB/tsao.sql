-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-02-2025 a las 15:32:30
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `TSAO`
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
(1, 'Carlos', 0, 'Pérez', 'Masculino', 'carlos.perez@example.com', '3001234567'),
(2, 'María', 0, 'González', 'Femenino', 'maria.gonzalez@example.com', '3012345678'),
(3, 'Jorge', 0, 'Martínez', 'Masculino', 'jorge.martinez@example.com', '3023456789'),
(4, 'Ana', 0, 'Rodríguez', 'Femenino', 'ana.rodriguez@example.com', '3034567890'),
(5, 'Luis', 0, 'Hernández', 'Masculino', 'luis.hernandez@example.com', '3045678901'),
(6, 'Sofía', 0, 'López', 'Femenino', 'sofia.lopez@example.com', '3056789012'),
(7, 'Miguel', 0, 'Ramírez', 'Masculino', 'miguel.ramirez@example.com', '3067890123'),
(8, 'Laura', 0, 'Torres', 'Femenino', 'laura.torres@example.com', '3078901234'),
(9, 'Andrés', 0, 'Vargas', 'Masculino', 'andres.vargas@example.com', '3089012345'),
(10, 'Carolina', 0, 'Morales', 'Femenino', 'carolina.morales@example.com', '3090123456'),
(31, 'Juan', 0, 'Pérez', 'Masculino', 'juan.perez@example.com', '555-1234'),
(32, 'Josesito', 0, 'Alvaroto', 'Masculino', 'jose@gmail.com', '3117227580'),
(33, 'Nanita', 0, 'Lopez', 'Femenino', 'holauwu@gmai.com', '3226580429'),
(34, 'juan camilo', 0, 'quintana', 'Femenino', 'juanca@gmail.com', '321303098882'),
(35, 'kskkss', 9, 'kskss', 'Femenino', 'jdjjs@dsds', '28338383'),
(36, 'Luz ', 1, 'Darly', 'Femenino', 'Luzdarly@gmail.com', '343424343'),
(37, 'Estanillo', 0, 'Prada', 'Femenino', 'msmsmsmsms@gmail.com', '445454453636');

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
('1', 17, '2025-01-31', '17:24:34', NULL, 'Ausente', 20, 1),
('1', 18, '2025-01-31', '17:43:29', NULL, 'Ausente', 21, 1),
('', 19, '2025-02-04', '13:50:39', NULL, 'Asistió', 1, 1),
('', 20, '2025-02-04', '13:53:11', NULL, 'Ausente', 10, 4),
('hola\\', 21, '2025-02-04', '14:04:48', NULL, 'Ausente', 18, 1),
('', 22, '2025-02-04', '15:51:41', NULL, 'Asistió', 22, 2),
('hola', 23, '2025-02-05', '15:31:32', NULL, 'Asistió', 18, 1),
('', 24, '2025-02-05', '15:45:33', NULL, 'Asistió', 20, 1),
('tarde', 25, '2025-02-05', '15:58:41', NULL, 'Ausente', 17, 1);

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
(1, 1, 1, 6, 'Juan', 'Pérez', '2010-05-15', 'Masculino', '123456789', 'juan.perez@example.com'),
(2, 2, 2, 7, 'Ana', 'García', '2011-08-22', 'Femenino', '987654321', 'ana.garcia@example.com'),
(3, 3, 3, 8, 'Luis', 'Martínez', '2009-12-30', 'Masculino', '456789123', 'luis.martinez@example.com'),
(4, 4, 4, 9, 'María', 'Rodríguez', '2012-03-10', 'Femenino', '321654987', 'maria.rodriguez@example.com'),
(5, 1, 5, 10, 'Pedro', 'López', '2011-11-05', 'Masculino', '654321789', 'pedro.lopez@example.com'),
(6, 2, 6, 11, 'Isabella', 'Hernández', '2010-09-18', 'Femenino', '789456123', 'isabella.hernandez@example.com'),
(7, 5, 7, 12, 'José', 'Gómez', '2008-06-25', 'Masculino', '852963741', 'jose.gomez@example.com'),
(8, 3, 8, 13, 'Valentina', 'Morales', '2012-01-30', 'Femenino', '147258369', 'valentina.morales@example.com'),
(9, 3, 9, 14, 'Andrés', 'Ramírez', '2009-07-14', 'Masculino', '963852741', 'andres.ramirez@example.com'),
(10, 4, 10, 15, 'Sofía', 'Castro', '2011-10-02', 'Femenino', '741852963', 'sofia.castro@example.com'),
(17, 1, 1, 0, 'uwuw', 'wss', '2010-03-04', 'Masculino', '3117227580', 'odsodsodq@gmail.com'),
(18, 1, 3, 6, 'Fernando', 'Klaus', '1993-09-30', 'Masculino', '3434', 'dkdkd@gmail.com'),
(19, 5, 8, 1, 'Geradiño', 'Acustiñar', '2008-06-06', 'Masculino', '3382828823', 'gogogogo@ghotmail.com'),
(20, 1, 36, 7, 'Pepelote', 'Lote', '2008-06-09', 'Masculino', '322323232', 'pepelote@gmail.com'),
(21, 1, 2, 3, 'Andres', 'Jonh ', '1995-07-02', 'Masculino', '42424242', 'jsapassss2@gmail.com'),
(22, 2, 31, 12, 'Jose ', 'Dame', '2008-08-20', 'Masculino', '223232233', 'sksksk@hotmail.com');

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
(97, 20, 'no tenia transporte', 1, '', 1, '2025-01-31'),
(98, 20, 'se le pincho la bicicleta', 1, '', 1, '2025-01-31'),
(99, 21, 'perro comio tarea', 1, '', 1, '2025-01-31'),
(100, 18, 'hola', 1, '', 1, '2025-02-05'),
(101, 20, 'se le pincho la bici', 1, '', 1, '2025-02-05'),
(102, 17, 'se quedo dormido', 1, '', 1, '2025-02-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id_profesor` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_contratacion` date DEFAULT NULL,
  `asignatura` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id_profesor`, `id_usuario`, `fecha_contratacion`, `asignatura`) VALUES
(1, 1, '2021-08-15', 'Matemáticas'),
(2, 2, '2020-09-20', 'Lengua Española'),
(3, 3, '2019-07-05', 'Ciencias Sociales'),
(4, 4, '2022-01-12', 'Educación Física'),
(5, 5, '2018-03-30', 'Inglés'),
(11, 9, '1993-03-03', 'Matematica'),
(12, 1, '2021-06-10', 'Matematicas'),
(13, 1, '1993-08-03', 'Ciencias econimicas');

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
  `Id_Rol2` int(11) NOT NULL,
  `Nombre_user` varchar(25) NOT NULL,
  `Apellido_user` varchar(25) NOT NULL,
  `Correo_user` varchar(25) NOT NULL,
  `Telefono_user` int(255) NOT NULL,
  `Contraseña_user` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_user`, `Id_Rol2`, `Nombre_user`, `Apellido_user`, `Correo_user`, `Telefono_user`, `Contraseña_user`) VALUES
(0, 4, 'Carlos', 'Pérez', 'carlos.perez@example.com', 2147483647, 'passwordCarlos'),
(1, 2, 'Juan', 'Pérez', 'juan.perez@example.com', 2147483647, 'contrasena123'),
(2, 3, 'María', 'Gómez', 'maria.gomez@example.com', 2147483647, '$2b$12$w8ZYWjhVVde6FNzExtJxquV33bmaS6K7fc1KPjr2uBM22Jxk/Y2ES'),
(3, 1, 'Carlos', 'Rodríguez', 'carlos.rodriguez@example.', 2147483647, '$2b$12$sCBZ.DL6SBb8fJ6qvONU7O6SlByd.yHPXYQZ2l/YpdxUxMq9zGUJS'),
(4, 2, 'Ana', 'Martínez', 'ana.martinez@example.com', 2147483647, '$2b$12$L2twRjC64v5pY6MmJkITQObDDwX7UcZ34Um8fVXjPIz3KZvE5nQqW'),
(5, 4, 'Luis', 'Torres', 'luis.torres@example.com', 2147483647, 'acudiente111'),
(6, 4, 'Juan', 'Pérez', 'juan.perez@example.com', 123456789, 'passwordJuan'),
(7, 4, 'Ana', 'García', 'ana.garcia@example.com', 987654321, 'passwordAna'),
(8, 4, 'Luis', 'Martínez', 'luis.martinez@example.com', 456789123, 'passwordLuis'),
(9, 4, 'María', 'Rodríguez', 'maria.rodriguez@example.c', 321654987, '$2b$12$w8ZYWjhVVde6FNzExtJxquV33bmaS6K7fc1KPjr2uBM22Jxk/Y2ES'),
(10, 4, 'Pedro', 'López', 'pedro.lopez@example.com', 654321789, 'passwordPedro'),
(11, 4, 'Isabella', 'Hernández', 'isabella.hernandez@exampl', 789456123, 'passwordIsabella'),
(12, 4, 'José', 'Gómez', 'jose.gomez@example.com', 852963741, 'passwordJose'),
(13, 4, 'Valentina', 'Morales', 'valentina.morales@example', 147258369, '$2b$12$z3Rt77iCk55vpm4SIX2zUuGPLfes0fx/ItuRzgVmSMuL0f.0Qj3sm'),
(14, 4, 'Andrés', 'Ramírez', 'andres.ramirez@example.co', 963852741, 'passwordAndres'),
(15, 4, 'Sofía', 'Castro', 'sofia.castro@example.com', 741852963, 'passwordSofia'),
(17, 4, 'María', 'González', 'maria.gonzalez@example.co', 2147483647, '$2b$12$w8ZYWjhVVde6FNzExtJxquV33bmaS6K7fc1KPjr2uBM22Jxk/Y2ES'),
(18, 4, 'Jorge', 'Martínez', 'jorge.martinez@example.co', 2147483647, 'passwordJorge'),
(19, 4, 'Ana', 'Rodríguez', 'ana.rodriguez@example.com', 2147483647, 'passwordAna'),
(20, 4, 'Luis', 'Hernández', 'luis.hernandez@example.co', 2147483647, 'passwordLuis'),
(21, 4, 'Sofía', 'López', 'sofia.lopez@example.com', 2147483647, 'passwordSofia'),
(22, 4, 'Miguel', 'Ramírez', 'miguel.ramirez@example.co', 2147483647, 'passwordMiguel'),
(44, 3, 'Pape', 'Lote', 'papepe@gmail.com', 24244424, 'peloteuwu');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acudientes`
--
ALTER TABLE `acudientes`
  ADD PRIMARY KEY (`Id_acu`),
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
  ADD KEY `Id_Rol2` (`Id_Rol2`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acudientes`
--
ALTER TABLE `acudientes`
  MODIFY `Id_acu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `Id_Asis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `Id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `Id_estud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `inasistencias`
--
ALTER TABLE `inasistencias`
  MODIFY `Id_inasistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `Id_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acudientes`
--
ALTER TABLE `acudientes`
  ADD CONSTRAINT `acudientes_ibfk_1` FOREIGN KEY (`Id_user_acu`) REFERENCES `usuario` (`Id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_ibfk_2` FOREIGN KEY (`Id_estud4`) REFERENCES `estudiantes` (`Id_estud`),
  ADD CONSTRAINT `asistencias_ibfk_3` FOREIGN KEY (`Curso2`) REFERENCES `curso` (`Id_curso`);

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_2` FOREIGN KEY (`Id_acudiente2`) REFERENCES `acudientes` (`Id_acu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `estudiantes_ibfk_3` FOREIGN KEY (`Id_curso2`) REFERENCES `curso` (`Id_curso`),
  ADD CONSTRAINT `estudiantes_ibfk_4` FOREIGN KEY (`Id_user_estu`) REFERENCES `usuario` (`Id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id_Rol2`) REFERENCES `rol` (`Id_Rol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
