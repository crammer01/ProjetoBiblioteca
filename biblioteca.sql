-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Set-2019 às 00:27
-- Versão do servidor: 10.3.15-MariaDB
-- versão do PHP: 7.3.6

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
(1, 'Como plantar uma batata', 'Marcelo Jacobsem', '', '15', '83877804200c0c0c0e28496e7aecde61.jpg', '2019-09-17'),
(8, 'Mil palavras', 'Jeniffer Brown', '', '32.99', '820ad28b6b241eb264f5f3df69788a83.jpg', '2019-09-17'),
(9, 'O ultimo voo das borboletas ', 'Bruno Zago', '', '22.99', 'f9c73ad032b65bbbe71fa9db1a0041b2.jpg', '2019-09-17'),
(10, 'Harry Potter e o Calice de Fog', 'J. K. Rowling', '', '34.99', '9901436a521e4af6f4d2335772f93875.jpg', '2019-09-17'),
(11, 'As Cronicas de Narnia ', 'Clive Lewes', '', '54.99', '5475314d72648f7117cb3cf2d06d3354.jpg', '2019-09-17'),
(12, 'Animais fantasticos e onde hab', 'J K Rowling', '', '64.99', '9ae6dc233a076f3c9cbbe384fd2f9b71.png', '2019-09-17'),
(13, 'Percy Jackson e o mar de monst', 'Rick Riordan', '', '15', 'ce664f4ebd22a4a51428af1367cbfd29.jpg', '2019-09-17'),
(14, 'O Senhor dos Aneis ', 'Tolkin', '', '21.99', 'b532f1617f3bc863833449075dd51433.jpg', '2019-09-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `ID` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Senha` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`ID`, `Email`, `Senha`) VALUES
(1, 'admin@hotmail.com', 'fade225f096f9138f98f29887fc1f10d');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
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
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
