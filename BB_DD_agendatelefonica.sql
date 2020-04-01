-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 01-04-2020 a las 13:07:34
-- Versión del servidor: 5.7.25
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `agendatelefonica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendas`
--

CREATE TABLE `agendas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombres` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posicion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `fechadenacimiento` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `agendas`
--

INSERT INTO `agendas` (`id`, `nombres`, `apellidos`, `telefono`, `celular`, `sexo`, `email`, `posicion`, `departamento`, `salario`, `fechadenacimiento`, `created_at`, `updated_at`) VALUES
(2, 'Javier', 'Riquelme', '123456787', '987654327', 'Masculino', 'javirulo@hotmail.com', 'Gerente TI', 'Gerencia de TI', '1200.00', '1990-06-15', '2020-03-28 15:53:14', '2020-03-30 20:38:09'),
(3, 'Cristina', 'Lopez', '132435469', '978675642', 'Femenino', 'crislop@hotmail.com', 'Seguridad TI', 'Auditoria TI', '1500.00', '1987-02-21', '2020-03-28 15:57:01', '2020-03-28 18:22:48'),
(4, 'Vanesa', 'Mirasol', '142357689', '912837465', 'Femenino', 'vanemir@hotmail.com', 'Administrativo TI', 'Contabilidad', '2000.00', '1988-11-20', '2020-03-28 16:10:01', '2020-03-28 16:10:01'),
(5, 'Pedro', 'Linares', '563819283', '129834876', 'Masculino', 'pedroli@gmail.com', 'Asesor TI', 'Auditoria TI', '1650.00', '1985-07-19', '2020-03-28 16:12:14', '2020-03-28 16:12:14'),
(6, 'Juan', 'Montoya', '754829106', '273495618', 'Masculino', 'juanmo@hotmail.com', 'Gerente TI', 'Gerencia de TI', '1230.00', '1989-10-05', '2020-03-28 16:13:46', '2020-03-28 16:13:46'),
(7, 'Rosa', 'Mendez', '982334675', '673389246', 'Femenino', 'rosame@gmail.com', 'Gerente TI', 'Gerencia de TI', '1300.00', '1988-04-02', '2020-03-28 16:16:23', '2020-03-28 16:16:23'),
(8, 'Luis', 'Perez', '759929103', '678223014', 'Masculino', 'luispe@hotmail.com', 'Seguridad TI', 'Auditoria TI', '11635.00', '1982-09-15', '2020-03-28 16:18:59', '2020-03-28 16:18:59'),
(9, 'Maria', 'Selles', '471933827', '128364927', 'Femenino', 'marse@gmail.com', 'Asesor TI', 'Auditoria TI', '2100.00', '1991-01-19', '2020-03-28 16:20:33', '2020-03-28 16:20:33'),
(10, 'Patricia', 'Ruiz', '629377480', '736495827', 'Femenino', 'patriru@gmail.com', 'Seguridad TI', 'Gerencia de TI', '1700.00', '1987-07-11', '2020-03-28 16:22:56', '2020-03-28 16:22:56'),
(11, 'Ramon', 'Garcia', '742938481', '872383783', 'Masculino', 'ramgar@hotmail.com', 'Gerente TI', 'Gerencia de TI', '1200.00', '1986-03-12', '2020-03-28 16:24:34', '2020-03-28 16:24:34'),
(12, 'Jose', 'Agullo', '448948489', '745565640', 'Masculino', 'joseag@hotmail.com', 'Asesor TI', 'Auditoria TI', '1500.00', '1982-04-18', '2020-03-28 16:25:55', '2020-03-28 16:25:55'),
(13, 'Laura', 'Rizo', '823773434', '238463994', 'Femenino', 'lauri@gmail.com', 'Seguridad TI', 'Gerencia de TI', '1100.00', '1988-08-15', '2020-03-28 16:27:46', '2020-03-28 16:27:46'),
(14, 'Raul', 'Gonzalez', '437456923', '659294274', 'Masculino', 'raulgo@gmail.com', 'Gerente TI', 'Gerencia de TI', '1300.00', '1988-05-12', '2020-03-28 16:29:56', '2020-03-28 16:29:56'),
(15, 'Andres', 'Gil', '243482389', '563283972', 'Masculino', 'andginl@hotmail.com', 'Administrativo TI', 'Contabilidad', '2100.00', '1981-06-25', '2020-03-28 16:31:24', '2020-03-28 16:31:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_27_215512_create_agendas_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Javier Riquelme', 'javirulo@hotmail.com', NULL, '$2y$10$QPYP2sq1ZcnLx4NhvX/2YuB07w9LwqA4rXUCO8Ut2vYj8Z/TfYCYu', NULL, '2020-03-28 18:52:36', '2020-03-28 18:52:36'),
(2, 'test1', 'test1@test', NULL, '$2y$10$khog8URp2wMlHWvDStj.uufVDP8fMuRDTr9H3WvDXWHcF06Lkkl6m', NULL, '2020-03-28 18:58:29', '2020-03-28 18:58:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;