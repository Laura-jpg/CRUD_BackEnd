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

-- Banco de dados: `dbfichamedica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE IF NOT EXISTS `pacientes` (
  `id_paciente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `DtNasc` date DEFAULT NULL,
  `sexo` char(2) COLLATE utf8mb4_bin DEFAULT NULL,
  `convenio` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `estCivil` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `rg` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `cpf` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Extraindo dados da tabela `pacientes`
--

INSERT INTO `pacientes` (`id_paciente`, `nome`, `DtNasc`, `sexo`, `convenio`, `estCivil`, `rg`, `cpf`) VALUES
(1, 'Laura', '2000-04-15', 'F', 'Particular', 'Solteira', '544243382', '19746665487'),
(2, 'Leandro', '2005-08-17', 'M', 'Particular', 'Solteiro', '565898653', '12345678910'),
(3, 'Erika', '1972-12-20', 'F', 'Público', 'Casada', '256845685', '12348565445'),
(4, 'Celso', '1967-03-15', 'M', 'Público', 'Casado', '898554565', '658454554'),
(5, 'Erika', '1972-12-20', 'F', 'Público', 'Casada', '256845685', '12348565445'),
(6, 'Maria', '1954-09-22', 'F', 'Público', 'Viúva', '1234585652', '12587954644');
COMMIT;

