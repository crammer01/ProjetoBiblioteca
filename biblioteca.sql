-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Set-2019 às 04:13
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
  `Preço` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`ID`, `Titulo`, `Autor`, `Preço`) VALUES
(1, 'Como plantar uma batata', 'Marcelo Jacobsem', 15),
(7, 'Como treinar o seu dragão', 'Jay Baruchel', 22.99),
(8, 'Mil palavras', 'Jeniffer Brown', 32.99),
(9, 'O último voo das borboletas ', 'Bruno Zago', 22.99),
(10, 'Harry Potter e o Cálice de Fog', 'J. K. Rowling', 34.99),
(11, 'As Crônicas de Nárnia ', 'Clive Lewes', 54.99),
(12, 'Animais fantásticos e onde hab', 'J K Rowling', 64.99),
(13, 'Percy Jackson e o mar de monst', 'Rick Riordan', 15),
(14, 'O Senhor dos Anéis ', 'Tolkin', 21.99),
(15, 'Diário de um banana', 'Jeff Kinney', 13.99);

-- --------------------------------------------------------

--
-- Estrutura da tabela `upload`
--

CREATE TABLE `upload` (
  `ID` int(11) NOT NULL,
  `Codigo` varchar(30) NOT NULL,
  `Arquivo` varchar(255) NOT NULL,
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Índices para tabela `upload`
--
ALTER TABLE `upload`
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `upload`
--
ALTER TABLE `upload`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuário`
--
ALTER TABLE `usuário`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
