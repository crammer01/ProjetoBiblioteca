-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Ago-2019 às 20:21
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si6`
--
CREATE DATABASE IF NOT EXISTS `si6` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `si6`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `contato_id` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `id_tipo_contato` int(11) NOT NULL,
  `contato` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `id_pessoa` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `pessoa_ativo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_contato`
--

CREATE TABLE `tipo_contato` (
  `tipo_contato_id` int(11) NOT NULL,
  `contato_tipo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contato_ativo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tipo_contato`
--

INSERT INTO `tipo_contato` (`tipo_contato_id`, `contato_tipo`, `contato_ativo`) VALUES
(1, 'Email', 1),
(2, 'Telefone', 1),
(3, 'WhatsApp', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contato`
--
ALTER TABLE `contato`
  ADD KEY `id_pessoa` (`id_pessoa`,`id_tipo_contato`),
  ADD KEY `id_pessoa_2` (`id_pessoa`),
  ADD KEY `id_tipo_contato` (`id_tipo_contato`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id_pessoa`);

--
-- Indexes for table `tipo_contato`
--
ALTER TABLE `tipo_contato`
  ADD PRIMARY KEY (`tipo_contato_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id_pessoa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipo_contato`
--
ALTER TABLE `tipo_contato`
  MODIFY `tipo_contato_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `contato`
--
ALTER TABLE `contato`
  ADD CONSTRAINT `contato_ibfk_1` FOREIGN KEY (`id_tipo_contato`) REFERENCES `tipo_contato` (`tipo_contato_id`),
  ADD CONSTRAINT `contato_ibfk_2` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
