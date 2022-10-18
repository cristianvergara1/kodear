-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2022 a las 14:08:17
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kodear`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cuit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razonSocial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `cuit`, `razonSocial`, `created_at`, `updated_at`) VALUES
(1, '30599828431', 'A REGUEIRA Y CIA. S.A. CEREALES          ', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2022_10_16_015752_create_productos_table', 1),
(14, '2022_10_17_131128_create_posiciones_table', 1),
(15, '2022_10_17_135630_create_empresas_table', 1);

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
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posiciones`
--

CREATE TABLE `posiciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idEmpresa` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `fechaEntregaInicio` date NOT NULL,
  `moneda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posiciones`
--

INSERT INTO `posiciones` (`id`, `idEmpresa`, `idProducto`, `fechaEntregaInicio`, `moneda`, `precio`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-10-18', 'pesos', 1.00, '2022-10-17 17:22:13', '2022-10-17 17:22:13'),
(2, 1, 2, '2022-10-18', 'pesos', 100.00, '2022-10-17 17:22:32', '2022-10-17 17:22:32'),
(3, 1, 3, '2022-10-18', 'pesos', 1000.00, '2022-10-17 17:22:39', '2022-10-17 17:22:39'),
(4, 1, 3, '2022-10-18', 'pesos', 10000.00, '2022-10-17 17:26:28', '2022-10-17 17:26:28'),
(5, 1, 1, '2022-10-18', 'pesos', 111.00, '2022-10-17 17:53:14', '2022-10-17 17:53:14'),
(6, 1, 1, '2022-10-18', 'pesos', 111.00, '2022-10-17 18:00:11', '2022-10-17 18:00:11'),
(7, 1, 1, '2022-10-19', 'pesos', 12.00, '2022-10-17 19:03:25', '2022-10-17 19:03:25'),
(8, 1, 1, '2022-10-19', 'dolares', 22.00, '2022-10-17 19:05:02', '2022-10-17 19:05:02'),
(9, 1, 1, '2022-10-19', 'pesos', 111.00, '2022-10-17 20:01:41', '2022-10-17 20:01:41'),
(10, 1, 1, '2022-10-19', 'pesos', 1.00, '2022-10-17 21:37:05', '2022-10-17 21:37:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UsoFrecuente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `UsoFrecuente`, `created_at`, `updated_at`) VALUES
(1, 'TRIGO', '1', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(2, 'MAIZ', '1', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(3, 'LINO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(4, 'GIRASOL', '1', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(5, 'SORGO', '1', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(6, 'SOJA', '1', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(7, 'AVENA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(8, 'ALPISTE', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(9, 'MIJO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(10, 'CENTENO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(11, 'CEBADA FORRAJERA', '1', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(12, 'TRIGO CANDEAL', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(13, 'COLZA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(14, 'MANI', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(15, 'ITA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(18, 'SORGO FORRAJERO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(19, 'PELLETS DE SOJA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(20, 'TRIGO SARRACENO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(21, 'SOJA SUSTENTABLE', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(23, 'AGROPIRO ALARGADO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(24, 'ALFALFA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(28, 'FESTUCA ALTA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(36, 'SOJA FABRICA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(37, 'SOJA FABRICA ENTREGA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(39, 'SEMILLA DE AVENA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(40, 'SEMILLA DE TRIGO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(41, 'SEMILLA DE MAIZ', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(42, 'SEMILLA DE SOJA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(43, 'SEMILLA DE GIRASOL', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(45, 'SEMILLA NATURAL GIRASOL', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(46, 'SEMILLA MACHO GIRASOL', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(47, 'FOSFATO DIAMONICO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(48, 'FOSFATO MONOAMONICO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(49, 'MAIZ DENTADO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(50, 'PELLETS DE GIRASOL', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(51, 'PELLETS DE AFRECHILLO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(52, 'MOHA CARAPE', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(53, 'CEBADA CERVECERA', '1', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(54, 'COLZA DOBLE \"00\"/ CANOLA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(56, 'MAIZ BLANCO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(57, 'GLIFOSATO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(58, 'MANI CAJA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(59, 'MAIZ ESPECIAL', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(60, 'MAIZ FLAMENCO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(61, 'UREA GRANULADA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(62, 'UREA PERLADA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(63, 'GLIFOSATO ATANOR', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(64, '2.4 D', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(65, 'MAIZ PISCINGALLO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(66, 'MAIZ DURO COLORADO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(67, 'MAIZ CARGILL 280', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(68, 'ARROZ', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(69, 'MANI INDUSTRIA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(70, 'SOJA CHICAGO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(71, 'TRIGO CHICAGO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(72, 'MAIZ CHICAGO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(74, 'SEMILLA DE CEBADA SCARLETT', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(75, 'MAIZ PARTIDO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(76, 'SOJA MINI', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(77, 'SUPER FOSFATO TRIPLE', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(78, 'TRIGO MINI', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(79, 'MAIZ MINI', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(80, 'HARINA SOJA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(81, 'MAIZ PARTIDO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(90, 'ACEITE DE SOJA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(91, 'HARINA DE SOJA HIPRO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(92, 'CUARTA DE CEBADA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(95, 'MINI TRIGO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(96, 'CT ALGODON', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(97, 'MAIZ FLINT', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(98, 'SUPER FOSFATO SIMPLE', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(99, 'PANZER GOLD', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(100, 'DOLAR', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(101, 'DOLAR-MAT', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(102, 'VARIOS', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(103, 'GARBANZO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(104, 'POROTO MUNG', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(105, 'ARVEJA VERDE', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(106, 'EXPELLER', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(200, 'MEZCLA FISICA 7-40', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(995, 'GANADO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(996, 'GIRASOL ALTO OLEICO', '1', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(997, 'VIENTRES', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(998, 'INVERNADA', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12'),
(999, 'GORDO', '0', '2022-10-17 14:12:12', '2022-10-17 14:12:12');

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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posiciones`
--
ALTER TABLE `posiciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posiciones`
--
ALTER TABLE `posiciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
