-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/11/2024 às 21:41
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbavesso`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbhashtags`
--

CREATE TABLE `tbhashtags` (
  `idHashtag` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `tituloHashtag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbhashtags`
--

INSERT INTO `tbhashtags` (`idHashtag`, `idUsuario`, `tituloHashtag`) VALUES
(103, 96, 'Dançar'),
(104, 51, 'Surf'),
(105, 57, 'Carros'),
(106, 54, 'Video-Games'),
(107, 60, 'Esportes'),
(108, 110, 'Esportes'),
(109, 40, 'Comida Japonesa'),
(110, 82, 'Conhecer pessoas'),
(111, 124, 'Futebol'),
(112, 105, 'Viagem'),
(113, 43, 'Praia'),
(114, 103, 'Conhecer pessoas'),
(115, 56, 'Acampar'),
(116, 67, 'Dar risada'),
(117, 35, 'Comida Japonesa'),
(118, 79, 'Viagem'),
(119, 93, 'Tempo de qualidade'),
(120, 46, 'Comida italiana'),
(121, 76, 'Festas'),
(122, 103, 'Esportes'),
(123, 78, 'Surf'),
(124, 107, 'Acampar'),
(125, 81, 'Futebol'),
(126, 63, 'Comida Japonesa'),
(127, 71, 'Acampar'),
(128, 91, 'Carros'),
(129, 39, 'Futebol'),
(130, 128, 'Cumprir metas'),
(131, 89, 'Comer pastel da feria'),
(132, 85, 'Conhecer lugares'),
(133, 38, 'Conhecer lugares'),
(134, 105, 'Tempo de qualidade'),
(135, 67, 'Esportes'),
(136, 42, 'Comer pastel da feria'),
(137, 44, 'Comida italiana'),
(138, 34, 'Comida Japonesa'),
(139, 82, 'Dançar'),
(140, 85, 'Beber'),
(141, 110, 'Motos'),
(142, 126, 'Estar com a familia'),
(143, 118, 'Beber'),
(144, 71, 'Naturaza'),
(145, 75, 'Naturaza'),
(146, 64, 'Beber'),
(147, 39, 'Viagem'),
(148, 43, 'Séries'),
(149, 103, 'Futebol'),
(150, 35, 'Aventura'),
(151, 65, 'Tempo de qualidade'),
(152, 109, 'Motos'),
(153, 96, 'Aventura'),
(154, 118, 'Comida Japonesa'),
(155, 101, 'Cumprir metas'),
(156, 97, 'Comida italiana'),
(157, 31, 'Esportes'),
(158, 65, 'Conhecer pessoas'),
(159, 123, 'Carros'),
(160, 66, 'Naturaza'),
(161, 65, 'Comer pastel da feria'),
(162, 57, 'Dançar'),
(163, 120, 'Surf'),
(164, 65, 'Séries'),
(165, 44, 'Aventura'),
(166, 50, 'Fotos'),
(167, 34, 'Motos'),
(168, 66, 'Aventura'),
(169, 74, 'Beber'),
(170, 117, 'Carros'),
(171, 93, 'Comida Japonesa'),
(172, 112, 'Comida Japonesa'),
(173, 61, 'Beber'),
(174, 81, 'Aventura'),
(175, 109, 'Estar com a familia'),
(176, 41, 'Naturaza'),
(177, 86, 'Futebol'),
(178, 81, 'Motos'),
(179, 47, 'Cumprir metas'),
(180, 55, 'Praia'),
(181, 34, 'Viagem'),
(182, 66, 'Comida italiana'),
(183, 117, 'Comida italiana'),
(184, 71, 'Baladas'),
(185, 99, 'Tempo de qualidade'),
(186, 53, 'Motos'),
(187, 64, 'Séries'),
(188, 58, 'Cumprir metas'),
(189, 53, 'Fotos'),
(190, 33, 'Futebol'),
(191, 64, 'Escrever'),
(192, 116, 'Comida Japonesa'),
(193, 115, 'Beber'),
(194, 69, 'Esportes'),
(195, 102, 'Baladas'),
(196, 32, 'Esportes'),
(197, 127, 'Futebol'),
(198, 98, 'Viagem'),
(199, 48, 'Escrever'),
(200, 32, 'Aventura'),
(201, 97, 'Festas'),
(202, 88, 'Conhecer pessoas'),
(203, 36, 'Baladas'),
(204, 74, 'Estar com a familia'),
(205, 90, 'Carros'),
(206, 61, 'Video-Games'),
(207, 31, 'Viagem'),
(208, 127, 'Fotos'),
(209, 79, 'Naturaza'),
(210, 109, 'Comida Japonesa'),
(211, 125, 'Comida Japonesa'),
(212, 30, 'Séries'),
(213, 46, 'Praia'),
(214, 63, 'Beber'),
(215, 76, 'Dar risada'),
(216, 42, 'Cumprir metas'),
(217, 89, 'Baladas'),
(218, 42, 'Tempo de qualidade'),
(219, 48, 'Dar risada'),
(220, 85, 'Praia'),
(221, 120, 'Escrever'),
(222, 31, 'Motos'),
(223, 47, 'Baladas'),
(224, 74, 'Surf'),
(225, 104, 'Motos'),
(226, 97, 'Aventura'),
(227, 64, 'Carros'),
(228, 68, 'Conhecer pessoas'),
(229, 118, 'Dançar'),
(230, 56, 'Viagem'),
(231, 46, 'Tempo de qualidade'),
(232, 92, 'Festas'),
(233, 104, 'Cumprir metas'),
(234, 119, 'Naturaza'),
(235, 89, 'Carros'),
(236, 48, 'Surf'),
(237, 51, 'Festas'),
(238, 46, 'Surf'),
(239, 46, 'Naturaza'),
(240, 69, 'Viagem'),
(241, 98, 'Aventura'),
(242, 123, 'Aventura'),
(243, 95, 'Aventura'),
(244, 56, 'Dar risada'),
(245, 68, 'Esportes'),
(246, 63, 'Séries'),
(247, 116, 'Beber'),
(248, 90, 'Esportes'),
(249, 99, 'Viagem'),
(250, 99, 'Comida Japonesa'),
(251, 43, 'Fotos'),
(252, 48, 'Conhecer pessoas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblikes`
--

CREATE TABLE `tblikes` (
  `idLike` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idUsuarioLike` int(11) NOT NULL,
  `dataLike` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblikes`
--

INSERT INTO `tblikes` (`idLike`, `idUsuario`, `idUsuarioLike`, `dataLike`) VALUES
(151, 76, 73, '2024-11-09 20:37:57'),
(152, 53, 96, '2024-11-09 20:37:57'),
(153, 93, 46, '2024-11-09 20:37:57'),
(154, 117, 56, '2024-11-09 20:37:57'),
(155, 50, 114, '2024-11-09 20:37:57'),
(156, 42, 129, '2024-11-09 20:37:57'),
(157, 89, 43, '2024-11-09 20:37:57'),
(158, 67, 89, '2024-11-09 20:37:57'),
(159, 125, 127, '2024-11-09 20:37:57'),
(160, 123, 61, '2024-11-09 20:37:57'),
(161, 40, 102, '2024-11-09 20:37:57'),
(162, 97, 33, '2024-11-09 20:37:57'),
(163, 35, 93, '2024-11-09 20:37:57'),
(164, 110, 46, '2024-11-09 20:37:57'),
(165, 35, 127, '2024-11-09 20:37:57'),
(166, 92, 43, '2024-11-09 20:37:57'),
(167, 43, 108, '2024-11-09 20:37:57'),
(168, 129, 76, '2024-11-09 20:37:57'),
(169, 93, 42, '2024-11-09 20:37:57'),
(170, 33, 119, '2024-11-09 20:37:57'),
(171, 91, 53, '2024-11-09 20:37:57'),
(172, 44, 69, '2024-11-09 20:37:57'),
(173, 126, 102, '2024-11-09 20:37:57'),
(174, 72, 122, '2024-11-09 20:37:57'),
(175, 35, 77, '2024-11-09 20:37:57'),
(176, 73, 33, '2024-11-09 20:37:57'),
(177, 71, 87, '2024-11-09 20:37:57'),
(178, 80, 71, '2024-11-09 20:37:57'),
(179, 52, 113, '2024-11-09 20:37:57'),
(180, 111, 120, '2024-11-09 20:37:57'),
(181, 104, 120, '2024-11-09 20:37:57'),
(182, 76, 101, '2024-11-09 20:37:57'),
(183, 65, 35, '2024-11-09 20:37:57'),
(184, 45, 31, '2024-11-09 20:37:57'),
(185, 80, 34, '2024-11-09 20:37:57'),
(186, 69, 56, '2024-11-09 20:37:57'),
(187, 89, 127, '2024-11-09 20:37:57'),
(188, 70, 82, '2024-11-09 20:37:57'),
(189, 67, 92, '2024-11-09 20:37:57'),
(190, 75, 91, '2024-11-09 20:37:57'),
(191, 108, 113, '2024-11-09 20:37:57'),
(192, 71, 44, '2024-11-09 20:37:57'),
(193, 121, 94, '2024-11-09 20:37:57'),
(194, 68, 52, '2024-11-09 20:37:57'),
(195, 101, 113, '2024-11-09 20:37:57'),
(196, 62, 101, '2024-11-09 20:37:57'),
(197, 106, 118, '2024-11-09 20:37:57'),
(198, 94, 83, '2024-11-09 20:37:57'),
(199, 31, 34, '2024-11-09 20:37:57'),
(200, 79, 58, '2024-11-09 20:37:57'),
(201, 51, 106, '2024-11-09 20:37:57'),
(202, 59, 64, '2024-11-09 20:37:57'),
(203, 85, 89, '2024-11-09 20:37:57'),
(204, 115, 40, '2024-11-09 20:37:57'),
(205, 126, 125, '2024-11-09 20:37:57'),
(206, 30, 35, '2024-11-09 20:37:57'),
(207, 30, 36, '2024-11-09 20:37:57'),
(208, 42, 80, '2024-11-09 20:37:57'),
(209, 32, 93, '2024-11-09 20:37:57'),
(210, 55, 71, '2024-11-09 20:37:57'),
(211, 66, 62, '2024-11-09 20:37:57'),
(212, 65, 101, '2024-11-09 20:37:57'),
(213, 65, 36, '2024-11-09 20:37:57'),
(214, 114, 68, '2024-11-09 20:37:57'),
(215, 69, 54, '2024-11-09 20:37:57'),
(216, 111, 123, '2024-11-09 20:37:57'),
(217, 122, 94, '2024-11-09 20:37:57'),
(218, 38, 95, '2024-11-09 20:37:57'),
(219, 60, 106, '2024-11-09 20:37:57'),
(220, 121, 113, '2024-11-09 20:37:57'),
(221, 86, 129, '2024-11-09 20:37:57'),
(222, 35, 83, '2024-11-09 20:37:57'),
(223, 44, 36, '2024-11-09 20:37:57'),
(224, 47, 73, '2024-11-09 20:37:57'),
(225, 96, 66, '2024-11-09 20:37:57'),
(226, 89, 40, '2024-11-09 20:37:57'),
(227, 35, 110, '2024-11-09 20:37:57'),
(228, 116, 76, '2024-11-09 20:37:57'),
(229, 104, 64, '2024-11-09 20:37:57'),
(230, 114, 120, '2024-11-09 20:37:57'),
(231, 80, 126, '2024-11-09 20:37:57'),
(232, 129, 107, '2024-11-09 20:37:57'),
(233, 97, 60, '2024-11-09 20:37:57'),
(234, 48, 54, '2024-11-09 20:37:57'),
(235, 79, 83, '2024-11-09 20:37:57'),
(236, 78, 45, '2024-11-09 20:37:57'),
(237, 76, 35, '2024-11-09 20:37:57'),
(238, 97, 44, '2024-11-09 20:37:57'),
(239, 66, 71, '2024-11-09 20:37:57'),
(240, 54, 94, '2024-11-09 20:37:57'),
(241, 120, 124, '2024-11-09 20:37:57'),
(242, 35, 80, '2024-11-09 20:37:57'),
(243, 107, 68, '2024-11-09 20:37:57'),
(244, 104, 114, '2024-11-09 20:37:57'),
(245, 61, 43, '2024-11-09 20:37:57'),
(246, 115, 119, '2024-11-09 20:37:57'),
(247, 113, 55, '2024-11-09 20:37:57'),
(248, 94, 107, '2024-11-09 20:37:57'),
(249, 94, 107, '2024-11-09 20:37:57'),
(250, 66, 63, '2024-11-09 20:37:57'),
(251, 64, 110, '2024-11-09 20:37:57'),
(252, 63, 65, '2024-11-09 20:37:57'),
(253, 65, 89, '2024-11-09 20:37:57'),
(254, 64, 53, '2024-11-09 20:37:57'),
(255, 91, 63, '2024-11-09 20:37:57'),
(256, 86, 78, '2024-11-09 20:37:57'),
(257, 71, 73, '2024-11-09 20:37:57'),
(258, 109, 82, '2024-11-09 20:37:57'),
(259, 89, 98, '2024-11-09 20:37:57'),
(260, 123, 109, '2024-11-09 20:37:57'),
(261, 30, 104, '2024-11-09 20:37:57'),
(262, 79, 47, '2024-11-09 20:37:57'),
(263, 46, 78, '2024-11-09 20:37:57'),
(264, 77, 84, '2024-11-09 20:37:57'),
(265, 106, 96, '2024-11-09 20:37:57'),
(266, 119, 30, '2024-11-09 20:37:57'),
(267, 30, 46, '2024-11-09 20:37:57'),
(268, 64, 126, '2024-11-09 20:37:57'),
(269, 121, 37, '2024-11-09 20:37:57'),
(270, 49, 60, '2024-11-09 20:37:57'),
(271, 61, 50, '2024-11-09 20:37:57'),
(272, 46, 52, '2024-11-09 20:37:57'),
(273, 126, 67, '2024-11-09 20:37:57'),
(274, 40, 103, '2024-11-09 20:37:57'),
(275, 101, 42, '2024-11-09 20:37:57'),
(276, 36, 93, '2024-11-09 20:37:57'),
(277, 65, 64, '2024-11-09 20:37:57'),
(278, 113, 74, '2024-11-09 20:37:57'),
(279, 85, 30, '2024-11-09 20:37:57'),
(280, 113, 77, '2024-11-09 20:37:57'),
(281, 46, 63, '2024-11-09 20:37:57'),
(282, 110, 49, '2024-11-09 20:37:57'),
(283, 111, 104, '2024-11-09 20:37:57'),
(284, 96, 93, '2024-11-09 20:37:57'),
(285, 55, 31, '2024-11-09 20:37:57'),
(286, 113, 108, '2024-11-09 20:37:57'),
(287, 101, 104, '2024-11-09 20:37:57'),
(288, 120, 121, '2024-11-09 20:37:57'),
(289, 85, 34, '2024-11-09 20:37:57'),
(290, 31, 113, '2024-11-09 20:37:57'),
(291, 51, 34, '2024-11-09 20:37:57'),
(292, 88, 52, '2024-11-09 20:37:57'),
(293, 84, 89, '2024-11-09 20:37:57'),
(294, 38, 100, '2024-11-09 20:37:57'),
(295, 82, 113, '2024-11-09 20:37:57'),
(296, 36, 47, '2024-11-09 20:37:57'),
(297, 99, 68, '2024-11-09 20:37:57'),
(298, 128, 94, '2024-11-09 20:37:57'),
(299, 87, 107, '2024-11-09 20:37:57'),
(300, 53, 83, '2024-11-09 20:37:57');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbmatches`
--

CREATE TABLE `tbmatches` (
  `idMatche` int(11) NOT NULL,
  `idUsuario1` int(11) NOT NULL,
  `idUsuario2` int(11) NOT NULL,
  `dataMatche` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbmatches`
--

INSERT INTO `tbmatches` (`idMatche`, `idUsuario1`, `idUsuario2`, `dataMatche`) VALUES
(1, 105, 54, '2024-11-09 19:49:47'),
(2, 50, 35, '2024-11-09 19:49:47'),
(3, 122, 50, '2024-11-09 19:49:47'),
(4, 77, 43, '2024-11-09 19:49:47'),
(5, 30, 85, '2024-11-09 19:49:47'),
(6, 115, 114, '2024-11-09 19:49:47'),
(7, 35, 41, '2024-11-09 19:49:47'),
(8, 64, 105, '2024-11-09 19:49:47'),
(9, 30, 49, '2024-11-09 19:49:47'),
(10, 61, 117, '2024-11-09 19:49:47'),
(11, 95, 78, '2024-11-09 19:49:47'),
(12, 35, 77, '2024-11-09 19:49:47'),
(13, 124, 95, '2024-11-09 19:49:47'),
(14, 83, 62, '2024-11-09 19:49:47'),
(15, 34, 107, '2024-11-09 19:49:47'),
(16, 116, 51, '2024-11-09 19:49:47'),
(17, 103, 79, '2024-11-09 19:49:47'),
(18, 59, 63, '2024-11-09 19:49:47'),
(19, 33, 51, '2024-11-09 19:49:47'),
(20, 30, 45, '2024-11-09 19:49:47'),
(21, 41, 54, '2024-11-09 19:49:47'),
(22, 48, 125, '2024-11-09 19:49:47'),
(23, 89, 128, '2024-11-09 19:49:47'),
(24, 129, 33, '2024-11-09 19:49:47'),
(25, 54, 113, '2024-11-09 19:49:47'),
(26, 55, 126, '2024-11-09 19:49:47'),
(27, 34, 42, '2024-11-09 19:49:47'),
(28, 116, 56, '2024-11-09 19:49:47'),
(29, 49, 95, '2024-11-09 19:49:47'),
(30, 76, 58, '2024-11-09 19:49:47'),
(31, 81, 32, '2024-11-09 19:49:47'),
(32, 64, 75, '2024-11-09 19:49:47'),
(33, 102, 35, '2024-11-09 19:49:47'),
(34, 33, 55, '2024-11-09 19:49:47'),
(35, 63, 118, '2024-11-09 19:49:47'),
(36, 79, 73, '2024-11-09 19:49:47'),
(37, 117, 109, '2024-11-09 19:49:47'),
(38, 61, 33, '2024-11-09 19:49:47'),
(39, 76, 113, '2024-11-09 19:49:47'),
(40, 104, 94, '2024-11-09 19:49:47'),
(41, 93, 70, '2024-11-09 19:49:47'),
(42, 55, 107, '2024-11-09 19:49:47'),
(43, 125, 56, '2024-11-09 19:49:47'),
(44, 74, 101, '2024-11-09 19:49:47'),
(45, 129, 84, '2024-11-09 19:49:47'),
(46, 43, 60, '2024-11-09 19:49:47'),
(47, 105, 96, '2024-11-09 19:49:47'),
(48, 31, 104, '2024-11-09 19:49:47'),
(49, 113, 52, '2024-11-09 19:49:47'),
(50, 76, 78, '2024-11-09 19:49:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbmensagens`
--

CREATE TABLE `tbmensagens` (
  `idMsg` int(11) NOT NULL,
  `idRemetente` int(11) NOT NULL,
  `idDestinatario` int(11) NOT NULL,
  `conteudoMsg` text NOT NULL,
  `msgVisualizada` tinyint(4) NOT NULL DEFAULT 0,
  `dataMsg` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbpaises`
--

CREATE TABLE `tbpaises` (
  `idPais` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `nomePais` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbpaises`
--

INSERT INTO `tbpaises` (`idPais`, `iso`, `nomePais`) VALUES
(1, 'AF', 'Afeganistão'),
(2, 'AL', 'Albânia'),
(3, 'DZ', 'Algéria'),
(4, 'AS', 'Samoa Americana'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antártida'),
(9, 'AG', 'Antigua e Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armênia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Austrália'),
(14, 'AT', 'Áustria'),
(15, 'AZ', 'Azerbaijão'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrein'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Bielorrússia'),
(21, 'BE', 'Bélgica'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Butão'),
(26, 'BO', 'Bolívia'),
(27, 'BA', 'Bósnia e Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Ilha Bouvet'),
(30, 'BR', 'Brasil'),
(31, 'IO', 'Território Britânico do Oceano Índico'),
(32, 'BN', 'Brunei'),
(33, 'BG', 'Bulgária'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Camboja'),
(37, 'CM', 'Camarões'),
(38, 'CA', 'Canadá'),
(39, 'CV', 'Cabo Verde'),
(40, 'KY', 'Ilhas Cayman'),
(41, 'CF', 'República Centro-Africana'),
(42, 'TD', 'Chade'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Ilha Christmas'),
(46, 'CC', 'Ilhas Cocos (Keeling)'),
(47, 'CO', 'Colômbia'),
(48, 'KM', 'Comores'),
(49, 'CG', 'Congo'),
(50, 'CD', 'Congo (DR)'),
(51, 'CK', 'Ilhas Cook'),
(52, 'CR', 'Costa Rica'),
(53, 'CI', 'Costa do Marfim'),
(54, 'HR', 'Croácia'),
(55, 'CU', 'Cuba'),
(56, 'CY', 'Chipre'),
(57, 'CZ', 'República Tcheca'),
(58, 'DK', 'Dinamarca'),
(59, 'DJ', 'Djibuti'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'República Dominicana'),
(62, 'EC', 'Equador'),
(63, 'EG', 'Egito'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Guiné Equatorial'),
(66, 'ER', 'Eritreia'),
(67, 'EE', 'Estônia'),
(68, 'ET', 'Etiópia'),
(69, 'FK', 'Ilhas Malvinas'),
(70, 'FO', 'Ilhas Faroe'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finlândia'),
(73, 'FR', 'França'),
(74, 'GF', 'Guiana Francesa'),
(75, 'PF', 'Polinésia Francesa'),
(76, 'TF', 'Terras Austrais e Antárticas Francesas'),
(77, 'GA', 'Gabão'),
(78, 'GM', 'Gâmbia'),
(79, 'GE', 'Geórgia'),
(80, 'DE', 'Alemanha'),
(81, 'GH', 'Gana'),
(82, 'GI', 'Gibraltar'),
(83, 'GR', 'Grécia'),
(84, 'GL', 'Groelândia'),
(85, 'GD', 'Granada'),
(86, 'GP', 'Guadalupe'),
(87, 'GU', 'Guão'),
(88, 'GT', 'Guatemala'),
(89, 'GN', 'Guiné'),
(90, 'GW', 'Guiné-Bissau'),
(91, 'GY', 'Guiana'),
(92, 'HT', 'Haiti'),
(93, 'HM', 'Ilhas Heard e McDonald'),
(94, 'VA', 'Vaticano'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungria'),
(98, 'IS', 'Islândia'),
(99, 'IN', 'Índia'),
(100, 'ID', 'Indonésia'),
(101, 'IR', 'Irã'),
(102, 'IQ', 'Iraque'),
(103, 'IE', 'Irlanda'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Itália'),
(106, 'JM', 'Jamaica'),
(107, 'JP', 'Japão'),
(108, 'JO', 'Jordânia'),
(109, 'KZ', 'Cazaquistão'),
(110, 'KE', 'Quênia'),
(111, 'KI', 'Kiribati'),
(112, 'KP', 'Coreia do Norte'),
(113, 'KR', 'Coreia do Sul'),
(114, 'KW', 'Kuwait'),
(115, 'KG', 'Quirguistão'),
(116, 'LA', 'Laos'),
(117, 'LV', 'Letônia'),
(118, 'LB', 'Líbano'),
(119, 'LS', 'Lesoto'),
(120, 'LR', 'Libéria'),
(121, 'LY', 'Líbia'),
(122, 'LI', 'Liechtenstein'),
(123, 'LT', 'Lituânia'),
(124, 'LU', 'Luxemburgo'),
(125, 'MO', 'Macau'),
(126, 'MK', 'Macedônia do Norte'),
(127, 'MG', 'Madagáscar'),
(128, 'MW', 'Malawi'),
(129, 'MY', 'Malásia'),
(130, 'MV', 'Maldivas'),
(131, 'ML', 'Mali'),
(132, 'MT', 'Malta'),
(133, 'MH', 'Ilhas Marshall'),
(134, 'MQ', 'Martinica'),
(135, 'MR', 'Mauritânia'),
(136, 'MU', 'Maurício'),
(137, 'YT', 'Mayotte'),
(138, 'MX', 'México'),
(139, 'FM', 'Micronésia'),
(140, 'MD', 'Moldávia'),
(141, 'MC', 'Mônaco'),
(142, 'MN', 'Mongólia'),
(143, 'ME', 'Montenegro'),
(144, 'MS', 'Montserrat'),
(145, 'MA', 'Marrocos'),
(146, 'MZ', 'Moçambique'),
(147, 'MM', 'Mianmar'),
(148, 'NA', 'Namíbia'),
(149, 'NR', 'Nauru'),
(150, 'NP', 'Nepal'),
(151, 'NL', 'Holanda'),
(152, 'AN', 'Antilhas Holandesas'),
(153, 'NC', 'Nova Caledônia'),
(154, 'NZ', 'Nova Zelândia'),
(155, 'NI', 'Nicarágua'),
(156, 'NE', 'Niger'),
(157, 'NG', 'Nigéria'),
(158, 'NU', 'Niue'),
(159, 'NF', 'Ilha Norfolk'),
(160, 'MP', 'Ilhas Marianas do Norte'),
(161, 'NO', 'Noruega'),
(162, 'OM', 'Omã'),
(163, 'PK', 'Paquistão'),
(164, 'PW', 'Palau'),
(165, 'PS', 'Palestina'),
(166, 'PA', 'Panamá'),
(167, 'PG', 'Papua-Nova Guiné'),
(168, 'PY', 'Paraguai'),
(169, 'PE', 'Peru'),
(170, 'PH', 'Filipinas'),
(171, 'PN', 'Ilhas Picárnia'),
(172, 'PL', 'Polônia'),
(173, 'PT', 'Portugal'),
(174, 'PR', 'Porto Rico'),
(175, 'QA', 'Catar'),
(176, 'RE', 'Reunião'),
(177, 'RO', 'Romênia'),
(178, 'RU', 'Rússia'),
(179, 'RW', 'Ruanda'),
(180, 'SH', 'Santa Helena'),
(181, 'KN', 'São Cristóvão'),
(182, 'LC', 'Santa Lúcia'),
(183, 'PM', 'São Pedro e Miquelon'),
(184, 'VC', 'São Vicente e Granadinas'),
(185, 'WS', 'Samoa'),
(186, 'SM', 'São Marino'),
(187, 'ST', 'Sao Tomé e Príncipe'),
(188, 'SA', 'Arábia Saudita'),
(189, 'SN', 'Senegal'),
(190, 'CS', 'Sérvia e Montenegro'),
(191, 'SC', 'Seicheles'),
(192, 'SL', 'República da Serra Leoa'),
(193, 'SG', 'Singapura'),
(194, 'SK', 'Eslováquia'),
(195, 'SI', 'Eslovênia'),
(196, 'SB', 'Ilhas Salomão'),
(197, 'SO', 'Somália'),
(198, 'ZA', 'África do Sul'),
(199, 'GS', 'Ilhas Geórgia do Sul e Sandwich do Sul'),
(200, 'ES', 'Espanha'),
(201, 'LK', 'Sri Lanka'),
(202, 'SD', 'Sudão'),
(203, 'SR', 'Suriname'),
(204, 'SJ', 'Esvalbarde'),
(205, 'SZ', 'Suazilândia'),
(206, 'SE', 'Suécia'),
(207, 'CH', 'Suiça'),
(208, 'SY', 'Síria'),
(209, 'TW', 'Taiwan'),
(210, 'TJ', 'Tajiquistão'),
(211, 'TZ', 'Tanzânia'),
(212, 'TH', 'Tailândia'),
(213, 'TL', 'Timor-Leste'),
(214, 'TG', 'Togo'),
(215, 'TK', 'Toquelau'),
(216, 'TO', 'Tonga'),
(217, 'TT', 'Trinidad e Tobago'),
(218, 'TN', 'Tunísia'),
(219, 'TR', 'Turquia'),
(220, 'TM', 'Turcomenistão'),
(221, 'TC', 'Ilhas Turks e Caicos'),
(222, 'TV', 'Tuvalu'),
(223, 'UG', 'Uganda'),
(224, 'UA', 'Ucrânia'),
(225, 'AE', 'Emirados Árabes'),
(226, 'GB', 'Reino Unido'),
(227, 'US', 'Estados Unidos'),
(228, 'UM', 'Ilhas Menores Distantes dos Estados Unidos'),
(229, 'UY', 'Uruguai'),
(230, 'UZ', 'Uzbequistão'),
(231, 'VU', 'Vanuatu'),
(232, 'VE', 'Venezuela'),
(233, 'VN', 'Vietnam'),
(234, 'VG', 'Ilhas Virgens Inglesas'),
(235, 'VI', 'Ilhas Virgens (USA)'),
(236, 'WF', 'Wallis e Futuna'),
(237, 'EH', 'Saara Ocidental'),
(238, 'YE', 'Iêmen'),
(239, 'ZM', 'Zâmbia'),
(240, 'ZW', 'Zimbábue');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbperguntas`
--

CREATE TABLE `tbperguntas` (
  `idPergunta` int(11) NOT NULL,
  `tituloPergunta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbperguntas`
--

INSERT INTO `tbperguntas` (`idPergunta`, `tituloPergunta`) VALUES
(1, 'Frase favorita'),
(2, 'Lugar favorito'),
(3, 'Filme favorito'),
(4, 'Seu pet favorito'),
(5, 'Sua comida favorita'),
(6, 'Sua música favorita'),
(7, 'Lazer(es)'),
(8, 'Desejo(s)'),
(9, 'Objetivo(s)'),
(10, 'Sonho(s)'),
(11, 'Superpoder(es)'),
(12, 'Hobie(s)'),
(13, 'O que gostaria de ser'),
(14, 'O que gostaria de fazer'),
(15, 'O que gostaria de aprender'),
(16, 'O que gostaria de conhecer'),
(17, 'O que gostaria de ter'),
(18, 'O que gostaria de mudar'),
(19, 'Uma palavra que descreva você'),
(20, 'Uma piada engraçada'),
(21, 'Uma piada sem graça'),
(22, 'Uma história engraçada que aconteceu com você'),
(23, 'Uma ideia louca'),
(24, 'Uma curiosidade sobre você'),
(25, 'Uma curiosidade sem sentido'),
(26, 'Uma coisa que gosto de fazer'),
(27, 'Uma coisa que nunca gostei de fazer'),
(28, 'Num relacionamento eu...'),
(29, 'Num relacionamento eu gosto de...'),
(30, 'Num relacionamento eu não gosto de...'),
(31, 'Meu tipo de relacionamento é...'),
(32, 'Procuro por alguém...'),
(33, 'Gosto de...'),
(34, 'Não gosto de...'),
(35, 'No momento, eu...'),
(36, 'No momento, eu estudo...'),
(37, 'No momento, eu trabalho...');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbusuarios`
--

CREATE TABLE `tbusuarios` (
  `idUsuario` int(11) NOT NULL,
  `emailUsuario` varchar(100) NOT NULL,
  `senhaUsuario` varchar(64) NOT NULL,
  `nomeUsuario` varchar(100) NOT NULL,
  `sobrenomeUsuario` varchar(100) NOT NULL,
  `dataNascUsuario` date DEFAULT NULL,
  `idPais` int(11) DEFAULT NULL,
  `cidadeUsuario` varchar(100) NOT NULL DEFAULT 'Campinas',
  `bioUsuario` text DEFAULT NULL,
  `sexualidadeUsuario` enum('Héterossexual','Homossexual','Bissexual','Outro','Prefiro não informar') DEFAULT NULL,
  `generoUsuario` enum('Masculino','Feminino','Outro','Prefiro não informar') DEFAULT NULL,
  `preferenciaUsuario` enum('Homem','Mulher','Sem preferência') DEFAULT NULL,
  `fotoPerfilUsuario` varchar(255) DEFAULT NULL,
  `statusCadastro` tinyint(4) NOT NULL DEFAULT 1,
  `dataCadastro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbusuarios`
--

INSERT INTO `tbusuarios` (`idUsuario`, `emailUsuario`, `senhaUsuario`, `nomeUsuario`, `sobrenomeUsuario`, `dataNascUsuario`, `idPais`, `cidadeUsuario`, `bioUsuario`, `sexualidadeUsuario`, `generoUsuario`, `preferenciaUsuario`, `fotoPerfilUsuario`, `statusCadastro`, `dataCadastro`) VALUES
(30, 'thaina.pereira.7469@example.com', 'b65e9fa8d6f6e5aa6d93e26b27a2af27723f6976a77c386d7169d69038c1b31c', 'Thaina', 'Pereira', '1985-08-24', 215, 'Campinas', 'Olá, eu sou a Thaina e pratico esportes', 'Héterossexual', 'Feminino', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(31, 'lara.farias.4298@example.com', 'e421131dd6423b86406822ceafcaae4428287d1b7eb0161cdca629dc1ebbbe38', 'Lara', 'Farias', '2002-07-08', 203, 'Campinas', 'Olá, eu sou a Lara e gosto de cozinhar', 'Outro', 'Feminino', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(32, 'cauê.duarte.7480@example.com', 'd62ffbf0f792ce875ce05c20e909ee48e4845b53f8bddc70e67f284c578ef02f', 'Cauê', 'Duarte', '1990-05-23', 16, 'Campinas', 'Olá, eu sou o Cauê e gosto de ler', 'Héterossexual', 'Outro', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(33, 'raissa.faria.1050@example.com', '6a6696a0a1ec7b17b8dd4476cc9898ebfa512fd7f47410d85987cfe7263cec5b', 'Raissa', 'Faria', '1974-01-02', 52, 'Campinas', 'Olá, eu sou a Raissa e gosto de series', 'Héterossexual', 'Outro', 'Sem preferência', NULL, 1, '2024-11-09 17:54:07'),
(34, 'otávio.lima.3783@example.com', 'ac51b2bd0be6f4ae83ce525bc183224e5ca7f756c87c6b875ebd116118eff3e6', 'Otávio', 'Lima', '2003-10-30', 124, 'Campinas', 'Olá, eu sou o Otávio e gosto de jogos', 'Prefiro não informar', 'Outro', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(35, 'guilherme.aquino.8584@example.com', 'ef18be99e41075afc1092bd6bf0c0d0b39965356f9de85fbdf843d37cab236ab', 'Guilherme', 'Aquino', '1996-11-25', 231, 'Campinas', 'Olá, eu sou o Guilherme e adoro musicas', 'Bissexual', 'Outro', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(36, 'helena.ribeiro.5808@example.com', '399da3a9e95f866127f7d56909dcefff7e06d26a6b5fab5abdf310e9a07d2b28', 'Helena', 'Ribeiro', '1978-09-19', 127, 'Campinas', 'Olá, eu sou a Helena e gosto de cozinhar', 'Homossexual', 'Prefiro não informar', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(37, 'valdemar.barbosa.9806@example.com', 'c6da9ec82bbe471b7ac521a9a3b0cb8b237e249c8ae215bd39f1302432069a7d', 'Valdemar', 'Barbosa', '1971-02-17', 18, 'Campinas', 'Olá, eu sou o Valdemar e adoro filmes', 'Bissexual', 'Outro', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(38, 'iara.trevisan.4483@example.com', '8754bc7c50f700871e8f55cf5f540b7c85b9d2dd293f2ff6d44d780e50b01b05', 'Iara', 'Trevisan', '1982-10-08', 217, 'Campinas', 'Olá, eu sou a Iara e gosto de series', 'Bissexual', 'Feminino', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(39, 'laura.trevisan.6100@example.com', '7b9748780247aed4577c3465fce044c6270baf0263ecb10575043376e99fcfbc', 'Laura', 'Trevisan', '1972-01-01', 236, 'Campinas', 'Olá, eu sou a Laura e pratico esportes', 'Outro', 'Feminino', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(40, 'edward.dealmeida.368@example.com', '791499328d75a3467b8eabe6352a4c03e4265a77a5978abe243466bb27fa5e1c', 'Edward', 'De Almeida', '1973-09-13', 136, 'Campinas', 'Olá, eu sou o Edward e gosto de jogos', 'Prefiro não informar', 'Outro', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(41, 'iara.augusto.2182@example.com', 'f2dff0001427cec6ef3418f71cfee2173427ca95050ba2fa950b40251f7dd754', 'Iara', 'Augusto', '1998-07-17', 108, 'Campinas', 'Olá, eu sou a Iara e gosto de viajar', 'Héterossexual', 'Prefiro não informar', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(42, 'victória.goes.1269@example.com', 'ac6393bca4e10f4fe347c195398dd89318fa78940e0bdc50ef50870048f96612', 'Victória', 'Goes', '1998-02-13', 204, 'Campinas', 'Olá, eu sou a Victória e adoro festas', 'Bissexual', 'Outro', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(43, 'isabelle.dacosta.4325@example.com', '596084b90a2df0b73c2f2c2784f1f432cd40942b68c27b68960a04ead4c1ce4d', 'Isabelle', 'Da Costa', '1998-12-23', 21, 'Campinas', 'Olá, eu sou a Isabelle e gosto de cozinhar', 'Prefiro não informar', 'Feminino', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(44, 'henrique.barbosa.1241@example.com', '6f1418c37f2141d069c39c34b27ce49cfba417318f98286db3aa9e3a5cf01fea', 'Henrique', 'Barbosa', '1979-05-13', 107, 'Campinas', 'Olá, eu sou o Henrique e gosto de viajar', 'Homossexual', 'Masculino', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(45, 'yasmim.lourenço.8064@example.com', 'a7ac8b0ebed44005d327b53c44bff409a17d0626b9e7d4eea12669a2cfcbace8', 'Yasmim', 'Lourenço', '1999-04-03', 204, 'Campinas', 'Olá, eu sou a Yasmim e gosto de cozinhar', 'Bissexual', 'Prefiro não informar', 'Sem preferência', NULL, 1, '2024-11-09 17:54:07'),
(46, 'marcela.guimarães.6339@example.com', '6cd77182e35f9e3e72af0920b11ac6418f13204d3f47617d4b4264df8422f78a', 'Marcela', 'Guimarães', '1993-04-25', 217, 'Campinas', 'Olá, eu sou a Marcela e adoro filmes', 'Homossexual', 'Prefiro não informar', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(47, 'william.conceição.118@example.com', 'ecd3419d57fa03b1c9f8f0f70288dc3422895466bdb054451b048b219c7a7e28', 'William', 'Conceição', '1971-01-21', 193, 'Campinas', 'Olá, eu sou o William e adoro festas', 'Héterossexual', 'Outro', 'Sem preferência', NULL, 1, '2024-11-09 17:54:07'),
(48, 'paulo.guimarães.7966@example.com', '16cb45eafcc78b9ba90995b402c213f5d8e2af3085ec420da35444af3818b632', 'Paulo', 'Guimarães', '1997-01-29', 177, 'Campinas', 'Olá, eu sou o Paulo e adoro musicas', 'Outro', 'Prefiro não informar', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(49, 'julieta.franco.5696@example.com', '8496350b0ef046b6ad19efdeef80e2a240da3e0161c0be30f1a6909349ce7104', 'Julieta', 'Franco', '1985-04-20', 233, 'Campinas', 'Olá, eu sou a Julieta e gosto de jogos', 'Héterossexual', 'Feminino', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(50, 'nathan.cunha.3763@example.com', 'b164b247607cfa3b2cf464531a11fc3b746092104f1a3c2fa0864daddb366197', 'Nathan', 'Cunha', '1987-10-25', 185, 'Campinas', 'Olá, eu sou o Nathan e adoro musicas', 'Bissexual', 'Outro', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(51, 'nicole.dosreis.1178@example.com', '16290663b44306f55c77bf37545d11f45beef77c1e3deb6e03abed43c9640b23', 'Nicole', 'Dos Reis', '2002-09-28', 102, 'Campinas', 'Olá, eu sou a Nicole e pratico esportes', 'Bissexual', 'Prefiro não informar', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(52, 'vitor.carvalho.6076@example.com', 'dd2f0e91941e5581c5b18f980a7ab22ed548876fdec89cc9bc0ff22f08278d9a', 'Vitor', 'Carvalho', '1979-08-05', 196, 'Campinas', 'Olá, eu sou o Vitor e gosto de comer', 'Outro', 'Masculino', 'Sem preferência', NULL, 1, '2024-11-09 17:54:07'),
(53, 'vagner.vaz.6208@example.com', '2018bfce1d8a38e1f3e765e2ffc838e919155960e6c26187d74cabe32a0daeef', 'Vagner', 'Vaz', '1986-12-26', 139, 'Campinas', 'Olá, eu sou o Vagner e gosto de viajar', 'Outro', 'Outro', 'Sem preferência', NULL, 1, '2024-11-09 17:54:07'),
(54, 'wendel.cabral.6401@example.com', 'f36f2a2e91cf359db11a06f545edd1fbcb807f77686ee3efbcb3647bdbf7c285', 'Wendel', 'Cabral', '1991-03-25', 149, 'Campinas', 'Olá, eu sou o Wendel e gosto de ler', 'Homossexual', 'Prefiro não informar', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(55, 'cássia.borges.2965@example.com', '96d2094f2ac3b0d7c120e9a193451d3c3814c22e634e1a54bba8637006003897', 'Cássia', 'Borges', '1986-04-27', 52, 'Campinas', 'Olá, eu sou a Cássia e gosto de comer', 'Homossexual', 'Outro', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(56, 'igor.garcia.7065@example.com', '1d2e729f0ba19a0605b38a812f02901cde8aea2729cdc82e5a9c68fb41e34911', 'Igor', 'Garcia', '1984-02-03', 72, 'Campinas', 'Olá, eu sou o Igor e adoro filmes', 'Outro', 'Outro', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(57, 'ludmila.ferreira.1971@example.com', '50057d03099b2296b9d16ffe8c1ad3c5e6098d660d2e142150f5f714a144b933', 'Ludmila', 'Ferreira', '1996-02-05', 133, 'Campinas', 'Olá, eu sou a Ludmila e pratico esportes', 'Outro', 'Prefiro não informar', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(58, 'samuel.gomes.1675@example.com', 'fdc48c3233e9fde74fdfac3f4eb12afaf05aeced6002028f3c8d213ca7959f6d', 'Samuel', 'Gomes', '1971-05-04', 77, 'Campinas', 'Olá, eu sou o Samuel e gosto de viajar', 'Homossexual', 'Masculino', 'Sem preferência', NULL, 1, '2024-11-09 17:54:07'),
(59, 'nicole.françozo.356@example.com', '63fa8edc35f4eb9696982e22732acab301876e094c462443f5b28b4c71beeb83', 'Nicole', 'Françozo', '1997-04-12', 113, 'Campinas', 'Olá, eu sou a Nicole e adoro musicas', 'Héterossexual', 'Outro', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(60, 'ricardo.degodoi.6291@example.com', '7a6d3e3772019196626cc8ad8f46815673eb65a77ffd0e705985afc608172a73', 'Ricardo', 'De Godoi', '1981-10-19', 174, 'Campinas', 'Olá, eu sou o Ricardo e gosto de series', 'Homossexual', 'Masculino', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(61, 'leticia.dossantos.2783@example.com', 'fcc5ff87a72f9a1c11a313981bfbc47c173705e6ea2dff70bdbf2ea155677a94', 'Leticia', 'Dos Santos', '1992-02-02', 120, 'Campinas', 'Olá, eu sou a Leticia e gosto de cozinhar', 'Homossexual', 'Feminino', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(62, 'gabrielly.vazquez.8041@example.com', '6257769b8a22539e2f64770cd92f5287635a53870c1110174d3e3d3bf4ea1ff8', 'Gabrielly', 'Vazquez', '2002-02-17', 83, 'Campinas', 'Olá, eu sou a Gabrielly e gosto de jogos', 'Homossexual', 'Prefiro não informar', 'Sem preferência', NULL, 1, '2024-11-09 17:54:07'),
(63, 'francisco.magalhães.661@example.com', '62363397ed45fefd790f22a7000310c5d2005d1f2cfdbfc3191c47fd444ab38d', 'Francisco', 'Magalhães', '1988-09-26', 74, 'Campinas', 'Olá, eu sou o Francisco e adoro filmes', 'Héterossexual', 'Prefiro não informar', 'Sem preferência', NULL, 1, '2024-11-09 17:54:07'),
(64, 'vitor.borges.7429@example.com', '00ac40cfa3d7d9ea7632176b24b7707b9e7bb3f3f77d67ca6a4d9392d8218d2a', 'Vitor', 'Borges', '1971-03-13', 19, 'Campinas', 'Olá, eu sou o Vitor e gosto de viajar', 'Prefiro não informar', 'Prefiro não informar', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(65, 'valdemar.lima.9520@example.com', 'e062c517202b0848933f2e4fa8a393e2ac211d9f6424313f637d409a86610c1b', 'Valdemar', 'Lima', '1989-02-18', 138, 'Campinas', 'Olá, eu sou o Valdemar e adoro filmes', 'Héterossexual', 'Prefiro não informar', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(66, 'heitor.farias.6122@example.com', '9cafd36663d8fca072690d071d9dfea73616e9fa447409943b8cfc78d85ba9e2', 'Heitor', 'Farias', '2003-02-19', 122, 'Campinas', 'Olá, eu sou o Heitor e gosto de ler', 'Outro', 'Outro', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(67, 'julieta.alves.9168@example.com', 'e6d9161f8dbb8af74c85d66fde94685d47b13ae22f9cacdc82c663ce44c1d5e9', 'Julieta', 'Alves', '1993-08-02', 157, 'Campinas', 'Olá, eu sou a Julieta e gosto de ler', 'Homossexual', 'Prefiro não informar', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(68, 'eduarda.deoliveira.1372@example.com', '86e7a841a07e4d8bdec936a3045698ec1f5c612a1bf3be8c2b53c27259e0c12d', 'Eduarda', 'De Oliveira', '1984-08-09', 121, 'Campinas', 'Olá, eu sou a Eduarda e gosto de jogos', 'Prefiro não informar', 'Feminino', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(69, 'viviane.ruiz.1892@example.com', '08834c30f329fe0b91eba44e24e236591c99e323ca1bf15b4ed11a9e9a7fad4f', 'Viviane', 'Ruiz', '1978-02-09', 95, 'Campinas', 'Olá, eu sou a Viviane e adoro festas', 'Héterossexual', 'Prefiro não informar', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(70, 'eduardo.reis.5887@example.com', 'f24ebfff5dfb23b42684271c8e859538d67197951af274636c2fa14462ba04c6', 'Eduardo', 'Reis', '1999-02-23', 120, 'Campinas', 'Olá, eu sou o Eduardo e gosto de series', 'Outro', 'Masculino', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(71, 'gabrielly.rocha.5242@example.com', '0df8ca13f08e42006b35630aecde40e8557d8217296bbf8507e2a0617d0d3f50', 'Gabrielly', 'Rocha', '2001-06-23', 194, 'Campinas', 'Olá, eu sou a Gabrielly e gosto de jogos', 'Prefiro não informar', 'Feminino', 'Sem preferência', NULL, 1, '2024-11-09 17:54:07'),
(72, 'higor.leite.813@example.com', '205b5d3a628aa79a7639f864467bf228899f15c7becbab28606e09caab0bab13', 'Higor', 'Leite', '2002-11-18', 4, 'Campinas', 'Olá, eu sou o Higor e pratico esportes', 'Prefiro não informar', 'Prefiro não informar', 'Sem preferência', NULL, 1, '2024-11-09 17:54:07'),
(73, 'ingridy.barros.7801@example.com', 'c50d6487cc1b40d64c4effa95ce5db700891bb7d924f904c57014bae692c37c6', 'Ingridy', 'Barros', '1987-01-25', 220, 'Campinas', 'Olá, eu sou a Ingridy e pratico esportes', 'Homossexual', 'Outro', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(74, 'viviane.henriques.9192@example.com', '8c2379554c577df610fa8cdb53073265a1bde089dd42b0b8483d23161575fa58', 'Viviane', 'Henriques', '1981-05-10', 109, 'Campinas', 'Olá, eu sou a Viviane e gosto de series', 'Homossexual', 'Prefiro não informar', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(75, 'simone.santana.9842@example.com', '302570b9b0e813a3f3b522028f35f3507ef9f8f25a22051daa0506cc3eaa3c80', 'Simone', 'Santana', '1978-01-12', 37, 'Campinas', 'Olá, eu sou a Simone e gosto de series', 'Homossexual', 'Prefiro não informar', 'Sem preferência', NULL, 1, '2024-11-09 17:54:07'),
(76, 'nataly.desousa.7007@example.com', 'b7377f8b6f70dcf46e1f13a2835269cb1918f849c56233f9e8cd2e09261e093d', 'Nataly', 'De Sousa', '1997-11-29', 52, 'Campinas', 'Olá, eu sou a Nataly e gosto de jogos', 'Bissexual', 'Prefiro não informar', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(77, 'diogo.ramos.7200@example.com', '75aa35bcb1bb8afdd9481a44b0e6c9d59d870294bfd7f8bcb53d666abde3560c', 'Diogo', 'Ramos', '1992-08-20', 189, 'Campinas', 'Olá, eu sou o Diogo e gosto de jogos', 'Prefiro não informar', 'Masculino', 'Sem preferência', NULL, 1, '2024-11-09 17:54:07'),
(78, 'tatiana.almeida.6164@example.com', 'e401bed2a635e25d07c3dccb504b352cae6987e263831433eaf75b2dab9e16f3', 'Tatiana', 'Almeida', '1997-10-11', 151, 'Campinas', 'Olá, eu sou a Tatiana e gosto de cozinhar', 'Outro', 'Prefiro não informar', 'Homem', NULL, 1, '2024-11-09 17:54:07'),
(79, 'juliana.barbosa.5067@example.com', '9fa7bf67f193e99c5f567d60d03e2f65e65e7aff987dce5ff584ea4e1c1ce8b7', 'Juliana', 'Barbosa', '1997-05-10', 40, 'Campinas', 'Olá, eu sou a Juliana e adoro musicas', 'Prefiro não informar', 'Outro', 'Mulher', NULL, 1, '2024-11-09 17:54:07'),
(80, 'raissa.garcia.6290@example.com', '4199e9f2a6a816f3f2754ac70417b219eb2b1ac31c0569a6352a77a8cdef8333', 'Raissa', 'Garcia', '1986-07-19', 216, 'Campinas', 'Olá, eu sou a Raissa e pratico esportes', 'Outro', 'Outro', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(81, 'leticia.duarte.2532@example.com', '79df488b92a5aa2334c89346692ccfb71ea2bf7ae63c5d266ca19c12f61d8983', 'Leticia', 'Duarte', '1996-07-19', 79, 'Campinas', 'Olá, eu sou a Leticia e adoro musicas', 'Héterossexual', 'Outro', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(82, 'denis.ruiz.6586@example.com', 'b26009f03b6acf2f1ccbe8077073fe8e2b04bff971d3d9c2c33def3aec14ffb7', 'Denis', 'Ruiz', '1983-10-12', 205, 'Campinas', 'Olá, eu sou o Denis e adoro festas', 'Outro', 'Prefiro não informar', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(83, 'marcela.françozo.9891@example.com', 'c295de8254a71f7eaa95a7e5c39ba44e53386f76ac861b4cd9429c1e3e7810e9', 'Marcela', 'Françozo', '1976-11-09', 123, 'Campinas', 'Olá, eu sou a Marcela e pratico esportes', 'Outro', 'Outro', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(84, 'antônio.defaria.5780@example.com', 'f80d8a9ac9d4e990cf614ad9165e1e2dad21b98e9c6d630364c337ee5a95d4e8', 'Antônio', 'De Faria', '1983-06-24', 133, 'Campinas', 'Olá, eu sou o Antônio e adoro festas', 'Outro', 'Masculino', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(85, 'fagner.garcia.3103@example.com', '8e802aa7a50273be92c09e7fe53831f0a6b402189f1b7bd9c32c61b59f07682b', 'Fagner', 'Garcia', '2002-06-06', 167, 'Campinas', 'Olá, eu sou o Fagner e adoro filmes', 'Héterossexual', 'Prefiro não informar', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(86, 'gisele.dias.1208@example.com', 'c3eb0e68081965789e48dece2201e5baf610761d47457291b90d0ef066162964', 'Gisele', 'Dias', '1976-04-03', 220, 'Campinas', 'Olá, eu sou a Gisele e gosto de viajar', 'Outro', 'Prefiro não informar', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(87, 'giovana.macedo.7210@example.com', 'cc3baaf56da6026eb8315b0610345455270b0d9cb3dcbed40e0071850f7e290c', 'Giovana', 'Macedo', '1996-03-20', 96, 'Campinas', 'Olá, eu sou a Giovana e gosto de cozinhar', 'Héterossexual', 'Outro', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(88, 'mariana.barros.4276@example.com', '57d5d2d2af073079f042017933d4cb92c938634ef9fcdf0fb11d9ae017f7faf5', 'Mariana', 'Barros', '1999-05-27', 195, 'Campinas', 'Olá, eu sou a Mariana e gosto de comer', 'Prefiro não informar', 'Prefiro não informar', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(89, 'cinthya.faria.7722@example.com', '2acec8f16f8837f6961839e14bc69ac231dcaedacf04d960ad4ddb4808ec8c78', 'Cinthya', 'Faria', '1984-11-22', 58, 'Campinas', 'Olá, eu sou a Cinthya e gosto de comer', 'Bissexual', 'Prefiro não informar', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(90, 'thais.brito.3584@example.com', '91c14e9ac6076528f0c0440f10c850a502f0ceecea94f291e56a8717f3ab750f', 'Thais', 'Brito', '1996-04-17', 49, 'Campinas', 'Olá, eu sou a Thais e gosto de jogos', 'Outro', 'Outro', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(91, 'fagner.deoliveira.8018@example.com', 'b825d50fdef96d9232e56b3af36b74eb0cefc3d5dfa854ae56c56f684ae7730f', 'Fagner', 'De Oliveira', '1987-01-07', 182, 'Campinas', 'Olá, eu sou o Fagner e gosto de series', 'Bissexual', 'Masculino', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(92, 'regina.bernardes.5626@example.com', '7576668d6fcebde53768b954a9c75339b70fea2064b7b52ccccef31eb865485b', 'Regina', 'Bernardes', '1981-11-23', 78, 'Campinas', 'Olá, eu sou a Regina e gosto de comer', 'Héterossexual', 'Prefiro não informar', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(93, 'abraão.ruiz.5590@example.com', '986f601bcb4240e88a8d8abdc0bdcfb877bf50a0ee56af1b537b6c8d0b6dc6d4', 'Abraão', 'Ruiz', '1975-10-24', 51, 'Campinas', 'Olá, eu sou o Abraão e gosto de series', 'Héterossexual', 'Masculino', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(94, 'thales.teixeira.76@example.com', '77541aaacbbc64ad1e30c5da73968e8b7f9f7253aff0a869079e27f76b878b14', 'Thales', 'Teixeira', '1984-07-06', 109, 'Campinas', 'Olá, eu sou o Thales e gosto de jogos', 'Bissexual', 'Prefiro não informar', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(95, 'ronaldo.cabral.1317@example.com', '11664be75fe6fd3f1c5ba5320c873ea37cdf0d236a6c14e0e2a2cf1347f79d92', 'Ronaldo', 'Cabral', '1990-11-18', 200, 'Campinas', 'Olá, eu sou o Ronaldo e adoro musicas', 'Bissexual', 'Outro', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(96, 'abraão.ruiz.6134@example.com', '3e3c067d514ec57d5870411e0cdbc3fcfad16e882c31533739d6ae97a5c375f8', 'Abraão', 'Ruiz', '1999-01-27', 175, 'Campinas', 'Olá, eu sou o Abraão e gosto de comer', 'Bissexual', 'Masculino', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(97, 'patrick.oliveira.7816@example.com', 'f385ebbf7e7d72df90e5f5e942110ace8bbe448ec7104430e93a35ec238fddb8', 'Patrick', 'Oliveira', '1985-07-13', 232, 'Campinas', 'Olá, eu sou o Patrick e pratico esportes', 'Bissexual', 'Prefiro não informar', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(98, 'miguel.brito.1360@example.com', '66f0b30aa4798ae4ba7a154c9601efba55a688701ebc3f0ff63db981c7a041c2', 'Miguel', 'Brito', '1980-02-13', 37, 'Campinas', 'Olá, eu sou o Miguel e gosto de ler', 'Homossexual', 'Outro', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(99, 'nathan.trevisan.3251@example.com', '07c47c165f72848bfb5b219df418513849c1d45bf74227c69c5610ec2ad74aa5', 'Nathan', 'Trevisan', '1981-09-02', 238, 'Campinas', 'Olá, eu sou o Nathan e pratico esportes', 'Prefiro não informar', 'Outro', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(100, 'nicolas.vieira.1579@example.com', '2b80af8611e56ffb9a7744a84333004b193991813b5094213247d023f1d58a46', 'Nicolas', 'Vieira', '1972-11-21', 71, 'Campinas', 'Olá, eu sou o Nicolas e adoro musicas', 'Bissexual', 'Outro', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(101, 'arthur.ramos.1667@example.com', 'a025822107275d14b33e294f2a10f76138d33ec08ddb63fc692b48e3af9c1ae5', 'Arthur', 'Ramos', '1994-09-08', 176, 'Campinas', 'Olá, eu sou o Arthur e gosto de viajar', 'Héterossexual', 'Masculino', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(102, 'luiz.defaria.4997@example.com', 'd55417162ebcf2aa9e817401526d37a512a4e06ab6f6082f0c41d082b1df7539', 'Luiz', 'De Faria', '1993-09-12', 159, 'Campinas', 'Olá, eu sou o Luiz e gosto de jogos', 'Héterossexual', 'Outro', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(103, 'isabelly.faria.2399@example.com', '62c508cd0d3588e2ff84471c1fe5c104a4f51e246d7ee7f20bd6635199ba9bad', 'Isabelly', 'Faria', '1996-09-01', 7, 'Campinas', 'Olá, eu sou a Isabelly e pratico esportes', 'Outro', 'Outro', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(104, 'thiago.barros.4600@example.com', '5d4f851e665a06fb52b85eba8cba82e276c16139ce892551603a3b05f64b527a', 'Thiago', 'Barros', '1991-06-25', 46, 'Campinas', 'Olá, eu sou o Thiago e gosto de viajar', 'Héterossexual', 'Outro', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(105, 'juliana.neves.7377@example.com', 'd62a09fe472dbfe4412bd2c3fb8928af1c182f1b340e759a20f34ee93bc62286', 'Juliana', 'Neves', '1988-03-26', 207, 'Campinas', 'Olá, eu sou a Juliana e gosto de comer', 'Prefiro não informar', 'Prefiro não informar', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(106, 'miguel.henriques.8497@example.com', 'de53df190f3f4e16dffce005cc88e06098e1b51e1d9699ac5c9a35918de11efb', 'Miguel', 'Henriques', '1989-11-12', 15, 'Campinas', 'Olá, eu sou o Miguel e gosto de viajar', 'Héterossexual', 'Masculino', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(107, 'caroline.deoliveira.4183@example.com', '3da197198d473744d79e968d38b5a9095a51f43d0f2f0d60ccbd9488acbcd970', 'Caroline', 'De Oliveira', '1997-08-28', 54, 'Campinas', 'Olá, eu sou a Caroline e gosto de viajar', 'Homossexual', 'Prefiro não informar', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(108, 'sofia.henriques.1309@example.com', '5f33d9d2f60695b66b33093850b7b1f6df6f99f498cccb0e7a757576884507f5', 'Sofia', 'Henriques', '2001-01-15', 23, 'Campinas', 'Olá, eu sou a Sofia e adoro festas', 'Homossexual', 'Prefiro não informar', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(109, 'henrique.bernardes.8134@example.com', 'a0cdd2414775a63b24dcf5d5e459fbac8e7c8c4bdb3b23fd2e819adb6f3c462f', 'Henrique', 'Bernardes', '1988-02-04', 212, 'Campinas', 'Olá, eu sou o Henrique e gosto de jogos', 'Prefiro não informar', 'Outro', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(110, 'graziele.costa.5179@example.com', 'dae5b491d642e21f0c1b53333d453d40d8dea806f127bce82ce5db9e80a2f0e2', 'Graziele', 'Costa', '1974-08-09', 226, 'Campinas', 'Olá, eu sou a Graziele e gosto de comer', 'Prefiro não informar', 'Feminino', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(111, 'gilson.rocha.8435@example.com', '78db34b2f6bdfbb8b497db57cd568c46bbb0460a6a777840e440261665dbb24c', 'Gilson', 'Rocha', '1984-08-28', 27, 'Campinas', 'Olá, eu sou o Gilson e adoro festas', 'Prefiro não informar', 'Prefiro não informar', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(112, 'rafael.barbosa.3642@example.com', 'a0150517d873a5298de128589d6f00d3108113cd044937a601ee687b7724bf54', 'Rafael', 'Barbosa', '1974-09-28', 51, 'Campinas', 'Olá, eu sou o Rafael e pratico esportes', 'Héterossexual', 'Prefiro não informar', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(113, 'guilherme.sousa.484@example.com', '43fb5ece28b21bcb4a19becc7827c767b07a4a7f7cfb725ab9c7d2e1ef2ad9c5', 'Guilherme', 'Sousa', '1986-06-11', 10, 'Campinas', 'Olá, eu sou o Guilherme e gosto de series', 'Bissexual', 'Outro', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(114, 'antônio.santana.6513@example.com', '2cf3967f0d1002c1d7c9a18ce2a0823a574e6af5121def6610c0bc04958ea081', 'Antônio', 'Santana', '1972-07-01', 106, 'Campinas', 'Olá, eu sou o Antônio e adoro filmes', 'Outro', 'Prefiro não informar', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(115, 'larissa.mendes.7691@example.com', 'bd1e1c034d947c15650f96a6c5a3ba1895eded56846679436c1c1dc0d6df2215', 'Larissa', 'Mendes', '1995-10-31', 191, 'Campinas', 'Olá, eu sou a Larissa e pratico esportes', 'Bissexual', 'Feminino', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(116, 'paulo.goes.8327@example.com', '24e6880b35aed30a886c969e10c044d15aee5631f44be7174ab8aeb7bff3509f', 'Paulo', 'Goes', '1986-09-15', 112, 'Campinas', 'Olá, eu sou o Paulo e gosto de comer', 'Homossexual', 'Outro', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(117, 'thais.rocha.9754@example.com', '170ae4b24d0d8d9d6c2b73edd3976208279b4aa658b62a29fb927a8081c7bb63', 'Thais', 'Rocha', '1987-04-20', 4, 'Campinas', 'Olá, eu sou a Thais e gosto de comer', 'Outro', 'Outro', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(118, 'welinton.ferreira.3274@example.com', '569cba2877571b832278b6dec65f0e9ce8df39cbd8883522165d8bab5a42a2e1', 'Welinton', 'Ferreira', '1995-08-29', 86, 'Campinas', 'Olá, eu sou o Welinton e adoro filmes', 'Outro', 'Prefiro não informar', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(119, 'isadora.bernardes.1824@example.com', 'c7c95775c822a7d2ffda37303f654f6f97af46959f0e3a5c297a7e10b4a7ce47', 'Isadora', 'Bernardes', '1992-08-17', 167, 'Campinas', 'Olá, eu sou a Isadora e gosto de cozinhar', 'Héterossexual', 'Outro', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(120, 'diego.lopes.6055@example.com', 'c258235ece8d144313d1219d52cfbdb31dab7e552e1fd90ae56bfb3261414500', 'Diego', 'Lopes', '1984-02-04', 228, 'Campinas', 'Olá, eu sou o Diego e gosto de comer', 'Outro', 'Outro', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(121, 'cássia.desousa.3557@example.com', 'aae1f968a55bd70533017cf82d9c89f4bf1446f44f83f14ff53578b06fec1249', 'Cássia', 'De Sousa', '2003-04-27', 24, 'Campinas', 'Olá, eu sou a Cássia e gosto de comer', 'Prefiro não informar', 'Outro', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(122, 'wendel.cunha.2226@example.com', '7038be6c9ff3d962b13e2af683046e204d64d84e1ff9b2637c7c2a7796559130', 'Wendel', 'Cunha', '1989-04-14', 45, 'Campinas', 'Olá, eu sou o Wendel e gosto de viajar', 'Homossexual', 'Masculino', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(123, 'simone.deandrade.5444@example.com', 'e906d4d4954d8f371d906411e6d628fbdafd293e39bd2a066cd95f306aaa29c5', 'Simone', 'De Andrade', '1989-07-09', 37, 'Campinas', 'Olá, eu sou a Simone e gosto de comer', 'Bissexual', 'Outro', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(124, 'natalia.decastro.4373@example.com', '2d847241c37cf1e472977ebd42f755ae93abee11974fbe803dbac56a44694ec1', 'Natalia', 'De Castro', '1993-07-15', 29, 'Campinas', 'Olá, eu sou a Natalia e pratico esportes', 'Outro', 'Outro', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(125, 'caroline.gonçalves.9619@example.com', 'd43e86d5b018d74e06438bcb2e30fa22ac60d33d441ba9d14ec2e1bd8e61e5c7', 'Caroline', 'Gonçalves', '2003-02-19', 224, 'Campinas', 'Olá, eu sou a Caroline e adoro festas', 'Outro', 'Feminino', 'Homem', NULL, 1, '2024-11-09 19:15:48'),
(126, 'higor.alencar.9541@example.com', '79b2cab74a6f071532f89e18c70f16d541191923d810d74b78967e27caab0ac6', 'Higor', 'Alencar', '2003-10-17', 227, 'Campinas', 'Olá, eu sou o Higor e gosto de viajar', 'Prefiro não informar', 'Masculino', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(127, 'isabella.dossantos.2325@example.com', 'd005f9a17957751b202b62a03e0e8c75df81eb91be2542a163005ca67d656872', 'Isabella', 'Dos Santos', '1987-04-29', 93, 'Campinas', 'Olá, eu sou a Isabella e gosto de cozinhar', 'Homossexual', 'Outro', 'Mulher', NULL, 1, '2024-11-09 19:15:48'),
(128, 'carla.dosreis.4873@example.com', '3210e1ccef4f44802e5fdea6538213e2cf7a56c7d1a104f54e0318088f31fdcb', 'Carla', 'Dos Reis', '1977-09-05', 140, 'Campinas', 'Olá, eu sou a Carla e gosto de comer', 'Bissexual', 'Prefiro não informar', 'Sem preferência', NULL, 1, '2024-11-09 19:15:48'),
(129, 'maria.machado.7862@example.com', 'a301e87b15068799e6372dee0bc14bb84e72391f786186c9b7563f26964d83e3', 'Maria', 'Machado', '1983-02-24', 164, 'Campinas', 'Olá, eu sou a Maria e adoro filmes', 'Héterossexual', 'Outro', 'Mulher', NULL, 1, '2024-11-09 19:15:48');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbusuario_responde_pergunta`
--

CREATE TABLE `tbusuario_responde_pergunta` (
  `idUsuario` int(11) NOT NULL,
  `idPergunta` int(11) NOT NULL,
  `respostaUsuario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbusuario_responde_pergunta`
--

INSERT INTO `tbusuario_responde_pergunta` (`idUsuario`, `idPergunta`, `respostaUsuario`) VALUES
(49, 14, 'Resposta para a pergunta'),
(71, 31, 'Resposta para a pergunta'),
(81, 18, 'Resposta para a pergunta'),
(55, 21, 'Resposta para a pergunta'),
(68, 4, 'Resposta para a pergunta'),
(103, 5, 'Resposta para a pergunta'),
(48, 22, 'Resposta para a pergunta'),
(35, 34, 'Resposta para a pergunta'),
(95, 17, 'Resposta para a pergunta'),
(73, 6, 'Resposta para a pergunta'),
(117, 2, 'Resposta para a pergunta'),
(122, 27, 'Resposta para a pergunta'),
(89, 21, 'Resposta para a pergunta'),
(112, 16, 'Resposta para a pergunta'),
(32, 33, 'Resposta para a pergunta'),
(121, 18, 'Resposta para a pergunta'),
(49, 5, 'Resposta para a pergunta'),
(47, 11, 'Resposta para a pergunta'),
(42, 15, 'Resposta para a pergunta'),
(55, 16, 'Resposta para a pergunta'),
(80, 3, 'Resposta para a pergunta'),
(97, 4, 'Resposta para a pergunta'),
(71, 29, 'Resposta para a pergunta'),
(50, 2, 'Resposta para a pergunta'),
(121, 23, 'Resposta para a pergunta'),
(88, 24, 'Resposta para a pergunta'),
(78, 25, 'Resposta para a pergunta'),
(69, 9, 'Resposta para a pergunta'),
(86, 17, 'Resposta para a pergunta'),
(102, 34, 'Resposta para a pergunta'),
(46, 14, 'Resposta para a pergunta'),
(93, 20, 'Resposta para a pergunta'),
(113, 3, 'Resposta para a pergunta'),
(31, 1, 'Resposta para a pergunta'),
(85, 31, 'Resposta para a pergunta'),
(40, 1, 'Resposta para a pergunta'),
(121, 30, 'Resposta para a pergunta'),
(40, 31, 'Resposta para a pergunta'),
(51, 5, 'Resposta para a pergunta'),
(88, 20, 'Resposta para a pergunta'),
(125, 17, 'Resposta para a pergunta'),
(54, 5, 'Resposta para a pergunta'),
(49, 35, 'Resposta para a pergunta'),
(64, 3, 'Resposta para a pergunta'),
(116, 8, 'Resposta para a pergunta'),
(74, 29, 'Resposta para a pergunta'),
(93, 21, 'Resposta para a pergunta'),
(74, 11, 'Resposta para a pergunta'),
(126, 31, 'Resposta para a pergunta'),
(35, 8, 'Resposta para a pergunta'),
(58, 23, 'Resposta para a pergunta'),
(123, 2, 'Resposta para a pergunta'),
(129, 33, 'Resposta para a pergunta'),
(32, 33, 'Resposta para a pergunta'),
(121, 27, 'Resposta para a pergunta'),
(105, 28, 'Resposta para a pergunta'),
(89, 22, 'Resposta para a pergunta'),
(115, 7, 'Resposta para a pergunta'),
(109, 5, 'Resposta para a pergunta'),
(111, 2, 'Resposta para a pergunta'),
(115, 32, 'Resposta para a pergunta'),
(97, 18, 'Resposta para a pergunta'),
(99, 23, 'Resposta para a pergunta'),
(51, 23, 'Resposta para a pergunta'),
(127, 25, 'Resposta para a pergunta'),
(60, 20, 'Resposta para a pergunta'),
(111, 12, 'Resposta para a pergunta'),
(90, 13, 'Resposta para a pergunta'),
(118, 22, 'Resposta para a pergunta'),
(77, 15, 'Resposta para a pergunta'),
(67, 31, 'Resposta para a pergunta'),
(124, 35, 'Resposta para a pergunta'),
(59, 24, 'Resposta para a pergunta'),
(129, 16, 'Resposta para a pergunta'),
(64, 11, 'Resposta para a pergunta'),
(86, 9, 'Resposta para a pergunta'),
(118, 12, 'Resposta para a pergunta'),
(126, 2, 'Resposta para a pergunta'),
(83, 13, 'Resposta para a pergunta'),
(118, 30, 'Resposta para a pergunta'),
(51, 30, 'Resposta para a pergunta'),
(62, 35, 'Resposta para a pergunta'),
(35, 37, 'Resposta para a pergunta'),
(79, 9, 'Resposta para a pergunta'),
(73, 26, 'Resposta para a pergunta'),
(52, 30, 'Resposta para a pergunta'),
(41, 25, 'Resposta para a pergunta'),
(85, 12, 'Resposta para a pergunta'),
(82, 33, 'Resposta para a pergunta'),
(42, 22, 'Resposta para a pergunta'),
(102, 2, 'Resposta para a pergunta'),
(53, 4, 'Resposta para a pergunta'),
(97, 37, 'Resposta para a pergunta'),
(78, 17, 'Resposta para a pergunta'),
(42, 16, 'Resposta para a pergunta'),
(58, 19, 'Resposta para a pergunta'),
(109, 8, 'Resposta para a pergunta'),
(76, 6, 'Resposta para a pergunta'),
(46, 14, 'Resposta para a pergunta'),
(119, 9, 'Resposta para a pergunta');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbhashtags`
--
ALTER TABLE `tbhashtags`
  ADD PRIMARY KEY (`idHashtag`),
  ADD KEY `usuario_id_fk` (`idUsuario`);

--
-- Índices de tabela `tblikes`
--
ALTER TABLE `tblikes`
  ADD PRIMARY KEY (`idLike`),
  ADD KEY `usuarioLike_id_fk` (`idUsuario`);

--
-- Índices de tabela `tbmatches`
--
ALTER TABLE `tbmatches`
  ADD PRIMARY KEY (`idMatche`),
  ADD KEY `usuario_id4_fk` (`idUsuario1`),
  ADD KEY `usuario_id5_fk` (`idUsuario2`);

--
-- Índices de tabela `tbmensagens`
--
ALTER TABLE `tbmensagens`
  ADD PRIMARY KEY (`idMsg`),
  ADD KEY `remetente_id_fk` (`idRemetente`),
  ADD KEY `destinatario_id_fk` (`idDestinatario`);

--
-- Índices de tabela `tbpaises`
--
ALTER TABLE `tbpaises`
  ADD PRIMARY KEY (`idPais`);

--
-- Índices de tabela `tbperguntas`
--
ALTER TABLE `tbperguntas`
  ADD PRIMARY KEY (`idPergunta`);

--
-- Índices de tabela `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `pais_id_fk` (`idPais`);

--
-- Índices de tabela `tbusuario_responde_pergunta`
--
ALTER TABLE `tbusuario_responde_pergunta`
  ADD KEY `usuario2_id_fk` (`idUsuario`),
  ADD KEY `pergunta_id_fk` (`idPergunta`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbhashtags`
--
ALTER TABLE `tbhashtags`
  MODIFY `idHashtag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT de tabela `tblikes`
--
ALTER TABLE `tblikes`
  MODIFY `idLike` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT de tabela `tbmatches`
--
ALTER TABLE `tbmatches`
  MODIFY `idMatche` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `tbmensagens`
--
ALTER TABLE `tbmensagens`
  MODIFY `idMsg` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbpaises`
--
ALTER TABLE `tbpaises`
  MODIFY `idPais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT de tabela `tbperguntas`
--
ALTER TABLE `tbperguntas`
  MODIFY `idPergunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `tbusuarios`
--
ALTER TABLE `tbusuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tbhashtags`
--
ALTER TABLE `tbhashtags`
  ADD CONSTRAINT `usuario_id_fk` FOREIGN KEY (`idUsuario`) REFERENCES `tbusuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tblikes`
--
ALTER TABLE `tblikes`
  ADD CONSTRAINT `idUsuario_fk` FOREIGN KEY (`idUsuario`) REFERENCES `tbusuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tbmatches`
--
ALTER TABLE `tbmatches`
  ADD CONSTRAINT `usuario_id4_fk` FOREIGN KEY (`idUsuario1`) REFERENCES `tbusuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_id5_fk` FOREIGN KEY (`idUsuario2`) REFERENCES `tbusuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tbmensagens`
--
ALTER TABLE `tbmensagens`
  ADD CONSTRAINT `destinatario_id_fk` FOREIGN KEY (`idDestinatario`) REFERENCES `tbusuarios` (`idUsuario`),
  ADD CONSTRAINT `remetente_id_fk` FOREIGN KEY (`idRemetente`) REFERENCES `tbusuarios` (`idUsuario`);

--
-- Restrições para tabelas `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD CONSTRAINT `pais_id_fk` FOREIGN KEY (`idPais`) REFERENCES `tbpaises` (`idPais`);

--
-- Restrições para tabelas `tbusuario_responde_pergunta`
--
ALTER TABLE `tbusuario_responde_pergunta`
  ADD CONSTRAINT `pergunta_id_fk` FOREIGN KEY (`idPergunta`) REFERENCES `tbperguntas` (`idPergunta`),
  ADD CONSTRAINT `usuario2_id_fk` FOREIGN KEY (`idUsuario`) REFERENCES `tbusuarios` (`idUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
