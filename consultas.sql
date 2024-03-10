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
COMMIT;

