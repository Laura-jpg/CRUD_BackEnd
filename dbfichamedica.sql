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

CREATE DATABASE dbfichamedica;
-- Banco de dados: `dbfichamedica`
USE dbfichamedica;


-- Estrutura da tabela `consultas`
--

DROP TABLE IF EXISTS `consultas`;
CREATE TABLE IF NOT EXISTS `consultas` (
  `id_consulta` int NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `medico` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `diagnostico` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id_consulta`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Extraindo dados da tabela `consultas`
--

INSERT INTO `consultas` (`id_consulta`, `data`, `medico`, `diagnostico`) VALUES
(1, '2024-01-20', 'João', 'Dor intensa no crânio após queda'),
(2, '2024-01-22', 'Joana', 'Dor abdominal, possível pedra no rim'),
(3, '2024-02-04', 'Alfredo', 'Fraqueza, dor de cabeça'),
(4, '2024-02-12', 'Camilla', 'Pele com manchas, avermelhada e sensível'),
(5, '2024-03-05', 'Gilberto', 'Olhos secos, dor de cabeça intensa');

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

