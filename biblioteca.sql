-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Set-2019 às 19:44
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(30) NOT NULL,
  `Autor` varchar(30) NOT NULL,
  `Genero` varchar(30) DEFAULT NULL,
  `Preco` varchar(30) NOT NULL,
  `arquivo` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`ID`, `Titulo`, `Autor`, `Genero`, `Preco`, `arquivo`, `data`) VALUES
(1, 'Como plantar uma batata', 'Marcelo Jacobsem', NULL, '15', '', '0000-00-00'),
(8, 'Mil palavras', 'Jeniffer Brown', NULL, '32.99', '', '0000-00-00'),
(9, 'O último voo das borboletas ', 'Bruno Zago', NULL, '22.99', '', '0000-00-00'),
(10, 'Harry Potter e o Cálice de Fog', 'J. K. Rowling', NULL, '34.99', '', '0000-00-00'),
(11, 'As Crônicas de Nárnia ', 'Clive Lewes', NULL, '54.99', '', '0000-00-00'),
(12, 'Animais fantásticos e onde hab', 'J K Rowling', NULL, '64.99', '', '0000-00-00'),
(13, 'Percy Jackson e o mar de monst', 'Rick Riordan', NULL, '15', '', '0000-00-00'),
(14, 'O Senhor dos Anéis ', 'Tolkin', NULL, '21.99', '', '0000-00-00'),
(18, '', '', NULL, '', '', '0000-00-00'),
(23, 'ronin', 'kishimoto', 'samurai', '80', 'a18496dcce6f55bf6a1baa66137bbded.jpg', '2019-09-16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuário`
--

CREATE TABLE `usuário` (
  `ID` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Senha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuário`
--

INSERT INTO `usuário` (`ID`, `Email`, `Senha`) VALUES
(1, 'carol_luizasol@hotmail.com', 'teste'),
(2, 'joicelopes@gmail.com', 'domingues'),
(3, 'marcelojacobsem@gmail.com', 'batata'),
(4, 'teste@gmail.com', 'testando'),
(5, 'joaocaragnatto@gmail.com', 'carvalho');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `usuário`
--
ALTER TABLE `usuário`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `usuário`
--
ALTER TABLE `usuário`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
