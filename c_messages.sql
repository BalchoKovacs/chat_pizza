-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2022 a las 16:04:14
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chat_hipo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `initial`
--

CREATE TABLE `initial` (
  `option_key` varchar(500) DEFAULT NULL,
  `keywords` varchar(45) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `initial`
--

INSERT INTO `initial` (`option_key`, `keywords`, `id`) VALUES
('s_inicio', 'hola', 1),
('s_cita', 'a', 2),
('s_nombre', 'b', 3),
('s_cita', 'c', 4),
('s_cita', 'd', 5),
('s_nombre', 'e', 6),
('s_cita', 'f', 7),
('s_nombre', 'v', 8),
('s_nombre', 'virtual', 9),
('s_nombre', 'p', 10),
('s_nombre', 'presencial', 11),
('g_doc', 'g_doc', 12),
('g_telf', 'g_telf', 13),
('g_v', 'g_v', 14),
('val_nc', 'val_nc', 15),
('s_inicio\r\n', 'nueva cita', 16),
('s_inicio', 'ola', 17),
('s_inicio', 'hola!', 18),
('s_inicio', 'ole', 19),
('s_inicio', 'oli', 20),
('s_inicio', 'buenos dias', 21),
('s_inicio', 'buen dia', 22),
('s_inicio', 'buenas tardes', 23),
('agradecimiento', 'gracias', 24),
('fuera_hora', 'fuera_hora', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `message` varchar(450) NOT NULL,
  `trigger` varchar(450) NOT NULL,
  `number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`date`, `message`, `trigger`, `number`) VALUES
('2022-11-10 22:47:27', 'hola', 'null', '51936850886@c.us'),
('2022-11-10 22:47:28', '????????‍????????Hola Bienvenido al VADRI GAMBINO\npara poder realizar un pedido escriba *PEDIDO* o *PIZZA* ', 'null', '51936850886@c.us'),
('2022-11-10 22:47:32', 'pizza', 'null', '51936850886@c.us'),
('2022-11-10 22:47:32', '????????‍????????Para empezar su pedido aqui tiene nuestra carta.\nEscriba detalladamente su pedido \nCuando culmine escriba *LISTO*', 's_especialidad', '51936850886@c.us'),
('2022-11-10 22:47:39', 'panes de la casa', 'null', '51936850886@c.us'),
('2022-11-10 22:47:42', 'pan al ajo', 'null', '51936850886@c.us'),
('2022-11-10 22:47:55', 'pizza personal  hawaina', 'null', '51936850886@c.us'),
('2022-11-10 22:47:59', 'listo', 'null', '51936850886@c.us'),
('2022-11-10 22:48:02', 'a', 'null', '51936850886@c.us'),
('2022-11-10 22:48:02', '????????‍????????Porfavor ingrese su numero de documento o sus nombres y apellidos :', 'name', '51936850886@c.us'),
('2022-11-10 22:48:12', 'benjamin lozada', 'null', '51936850886@c.us'),
('2022-11-10 22:48:12', '????????‍????????Por favor ingrese su direccion :', 'g_doc', '51936850886@c.us'),
('2022-11-10 22:48:23', 'pasaje 2 de mayo #219', 'null', '51936850886@c.us'),
('2022-11-10 22:48:24', '????????‍????????Con respecto a su pedido, envie una captura del pago correspondiente,Aceptamos  :\nYape : 936850886\n Plim:936950886\n y Transferencia Bancaria:\n BCP:11019029012901\nBBVA:199128920929029\nCCI(BCP):19199290292', 'g_telf', '51936850886@c.us'),
('2022-11-10 22:50:06', '', 'null', '51936850886@c.us'),
('2022-11-10 22:50:06', '????????‍????????Excelente Su pedido se registro correctamente, Estamos validando su pago .', '', '51936850886@c.us'),
('2022-11-10 23:06:37', 'hola', 'null', '51936850886@c.us'),
('2022-11-10 23:06:38', '????????‍????????Hola Bienvenido al VADRI GAMBINO\npara poder realizar un pedido escriba *PEDIDO* o *PIZZA* ', 'null', '51936850886@c.us'),
('2022-11-10 23:06:42', 'pedido', 'null', '51936850886@c.us'),
('2022-11-10 23:06:42', '????????‍????????Para empezar su pedido aqui tiene nuestra carta.\nEscriba detalladamente su pedido \nCuando culmine escriba *LISTO*', 's_especialidad', '51936850886@c.us'),
('2022-11-10 23:07:06', 'carnivora grande y pizza de salame grande', 'null', '51936850886@c.us'),
('2022-11-10 23:07:09', 'listo', 'null', '51936850886@c.us'),
('2022-11-10 23:07:09', 'a', 'null', '51936850886@c.us'),
('2022-11-10 23:07:09', '????????‍????????Porfavor ingrese su numero de documento o sus nombres y apellidos :', 'name', '51936850886@c.us'),
('2022-11-10 23:13:59', 'hola', 'null', '51936850886@c.us'),
('2022-11-10 23:14:00', '????????‍????????Por favor ingrese su direccion :', 'g_doc', '51936850886@c.us'),
('2022-11-10 23:14:07', 'casa', 'null', '51936850886@c.us'),
('2022-11-10 23:14:07', '????????‍????????Con respecto a su pedido, envie una captura del pago correspondiente,Aceptamos  :\nYape : 936850886\n Plim:936950886\n y Transferencia Bancaria:\n BCP:11019029012901\nBBVA:199128920929029\nCCI(BCP):19199290292', 'g_telf', '51936850886@c.us'),
('2022-11-10 23:14:11', 'ok', 'null', '51936850886@c.us'),
('2022-11-10 23:14:11', '????????‍????????Excelente Su pedido se registro correctamente, Estamos validando su pago .\nPosteriormente su pedido estaria en camino (Tiempo aproximado de llegada 15-25 min)\nSon 30min o es GRATIS', '', '51936850886@c.us'),
('2022-11-10 23:14:18', 'hola', 'null', '51936850886@c.us'),
('2022-11-10 23:14:18', '????????‍????????Hola Bienvenido al VADRI GAMBINO\npara poder realizar un pedido escriba *PEDIDO* o *PIZZA* ', 'null', '51936850886@c.us'),
('2022-11-10 23:14:24', 'pizza', 'null', '51936850886@c.us'),
('2022-11-10 23:14:25', '????????‍????????Para empezar su pedido aqui tiene nuestra carta.\nEscriba detalladamente su pedido \nCuando culmine escriba *LISTO*', 's_especialidad', '51936850886@c.us'),
('2022-11-10 23:14:55', 'pan al ajo, pizza carnivora persona', 'null', '51936850886@c.us'),
('2022-11-10 23:14:58', 'listo', 'null', '51936850886@c.us'),
('2022-11-10 23:14:58', '????????‍????????Porfavor ingrese su numero de documento o sus nombres y apellidos :', 'name', '51936850886@c.us'),
('2022-11-10 23:15:14', 'benjamin lozada', 'null', '51936850886@c.us'),
('2022-11-10 23:15:14', '????????‍????????Por favor ingrese su direccion :', 'g_doc', '51936850886@c.us'),
('2022-11-10 23:15:27', 'pasaje 2 de mayo #219', 'null', '51936850886@c.us'),
('2022-11-10 23:15:27', '????????‍????????Con respecto a su pedido, envie una captura del pago correspondiente,Aceptamos  :\nYape : 936850886\n Plim:936950886\n y Transferencia Bancaria:\n BCP:11019029012901\nBBVA:199128920929029\nCCI(BCP):19199290292', 'g_telf', '51936850886@c.us'),
('2022-11-10 23:15:53', '', 'null', '51936850886@c.us'),
('2022-11-10 23:15:53', '????????‍????????Excelente Su pedido se registro correctamente, Estamos validando su pago .\nPosteriormente su pedido estaria en camino (Tiempo aproximado de llegada 15-25 min)\nSon 30min o es GRATIS', '', '51936850886@c.us'),
('2022-11-10 23:22:04', '/9j/4aaqskzjrgabaqaasabiaad/4qbmrxhpzgaatu0akgaaaagaagesaamaaaabaaeaaidpaaqaaaabaaaajgaaaaaaaqacaaqaaaabaaaazkadaaqaaaabaaaazaaaaad/7qa4ughvdg9zag9widmumaa4qklnbaqaaaaaaaa4qklnbcuaaaaaabduhyzzjwcybomaczjs+ej+/8aaeqgazabkaweiaairaqmraf/eab8aaaefaqebaqebaaaaaaaaaaabagmebqyhcakkc//ealuqaaibawmcbamfbqqeaaabfqecawaeequsitfbbhnryqcicrqygzghccncscevuthwjdnicoijchyxgbkajsynkckqndu2nzg5okneruzhselku1rvvldywvpjzgvmz2hpann0dxz3ehl6g4sfhoeiiyqsk5svlpeymzqio6', 'null', '51936850886@c.us'),
('2022-11-10 23:51:56', 'hola', 'null', '51936850886@c.us'),
('2022-11-10 23:51:56', '????????‍????????Gracias por escribirnos \nLa atención es de 3:00 pm a 11:00 pm por favor vuelva a escribir el dia de mañana', '', '51936850886@c.us'),
('2022-11-10 23:52:01', 'mmree', 'null', '51936850886@c.us'),
('2022-11-10 23:52:02', '????????‍????????Gracias por escribirnos \nLa atención es de 3:00 pm a 11:00 pm por favor vuelva a escribir el dia de mañana', '', '51936850886@c.us'),
('2022-11-10 23:52:03', '}kgerkge}', 'null', '51936850886@c.us'),
('2022-11-10 23:52:03', '????????‍????????Gracias por escribirnos \nLa atención es de 3:00 pm a 11:00 pm por favor vuelva a escribir el dia de mañana', '', '51936850886@c.us'),
('2022-11-10 23:52:06', 'efgjk}', 'null', '51936850886@c.us'),
('2022-11-10 23:52:06', '????????‍????????Gracias por escribirnos \nLa atención es de 3:00 pm a 11:00 pm por favor vuelva a escribir el dia de mañana', '', '51936850886@c.us');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `response`
--

CREATE TABLE `response` (
  `id` int(11) NOT NULL,
  `option_key` varchar(45) DEFAULT NULL,
  `replyMessage` text DEFAULT NULL,
  `trigger` varchar(45) DEFAULT NULL,
  `media` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `response`
--

INSERT INTO `response` (`id`, `option_key`, `replyMessage`, `trigger`, `media`) VALUES
(1, 's_inicio', 'Hola, soy Hipólito, tú asistente virtual.\nSi eres paciente SIS continuador, por este medio podré ayudarte a reservar tu cita medica en las siguientes especialidades:\nSeleccione una opción:\nA:Cardiología\nB:Dermatología\nC:Endocrinología\nD:Infectología\nE:Nutrición\nF:Reumatología\nPor favor escribe la *LETRA* de opción que desea seleccionar  ', NULL, NULL),
(2, 's_cita', 'Selecciona el tipo de Atención que requiere:\nV:Virtual\nP:Presencial', NULL, NULL),
(3, 'DEFAULT', 'opcion por defecto\r\n', NULL, NULL),
(4, 's_nombre', 'Por favor Ingrese sus Nombres y Apellidos:', 'name', NULL),
(5, 'g_doc', 'Ingrese su numero de DNI o carnet de Extranjería', 'g_doc', NULL),
(6, 'g_telf', 'Por favor Ingrese Su numero de teléfono', 'g_telf', NULL),
(7, 'g_v', 'Excelente, hemos recibido tus datos, brindaremos la respuesta a tu solicitud dentro de un día hábil en el horario de 2:00 pm a 7:00pm', 'g_v', NULL),
(8, 'val_nc', 'Gracias gracias por escribirnos ,Su solicitud esta en proceso, si desea registrar nueva cita escriba *NUEVA CITA*', NULL, NULL),
(9, 'agradecimiento', 'De nada ', NULL, NULL),
(10, 'fuera_hora', 'La atención es de 8:00 am a 2:00pm  intentelo a escribir el día de mañana', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `initial`
--
ALTER TABLE `initial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `initial`
--
ALTER TABLE `initial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `response`
--
ALTER TABLE `response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
