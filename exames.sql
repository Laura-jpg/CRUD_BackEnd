-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 10-Mar-2024 às 18:11
-- Versão do servidor: 8.2.0
-- versão do PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Banco de dados: `dbfichamedica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `exames`
--

DROP TABLE IF EXISTS `exames`;
CREATE TABLE IF NOT EXISTS `exames` (
  `id_exame` int NOT NULL AUTO_INCREMENT,
  `exame` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `dtExame` date DEFAULT NULL,
  `resultado` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `Paciente_idPaciente` int NOT NULL,
  `Consulta_idConsulta` int NOT NULL,
  PRIMARY KEY (`id_exame`),
  KEY `Paciente_idPaciente` (`Paciente_idPaciente`),
  KEY `Consulta_idConsulta` (`Consulta_idConsulta`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Extraindo dados da tabela `exames`
--

INSERT INTO `exames` (`id_exame`, `exame`, `dtExame`, `resultado`, `Paciente_idPaciente`, `Consulta_idConsulta`) VALUES
(1, 'Ressonância', '2024-01-25', 'Não foi encontrado nada anormal no exame.', 1, 1),
(2, 'Ultrassom', '2024-01-25', 'Foram detctados pedra nos dois rins, não muito grandes', 2, 2),
(3, 'Exame de sangue', '2024-02-10', 'Falta de vitamina C e D, Anemia. Demais exames normais.', 3, 3),
(4, 'Exame de sangue', '2024-02-22', 'Alergia, dermatite atópica grave', 4, 4),
(5, 'Exame de vista', '2024-03-15', 'Miopia. 1.5 vista esquerda e 3.0 vista direita', 5, 5);
COMMIT;

UPDATE exames SET resultado = 'Não foi encontrado nada anormal no exame.' WHERE exames . id_exame = 1;
