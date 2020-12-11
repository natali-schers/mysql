-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Dez-2020 às 01:01
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--
CREATE DATABASE IF NOT EXISTS `escola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `escola`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargofunc`
--

CREATE TABLE `cargofunc` (
  `codfunc` int(11) NOT NULL,
  `codcargo` int(11) NOT NULL,
  `dataEntrada` date NOT NULL,
  `dataSaida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargofunc`
--

INSERT INTO `cargofunc` (`codfunc`, `codcargo`, `dataEntrada`, `dataSaida`) VALUES
(1, 1, '2007-08-07', '0000-00-00'),
(1, 2, '2010-02-01', '2015-11-30'),
(2, 6, '2010-01-24', '0000-00-00'),
(2, 2, '2013-03-12', '0000-00-00'),
(2, 1, '2009-09-10', '2018-12-01'),
(3, 8, '2003-02-03', '2019-12-03'),
(4, 5, '2000-02-01', '2003-12-05'),
(4, 1, '1990-04-04', '2015-08-03'),
(5, 4, '2016-02-05', '0000-00-00'),
(5, 1, '2014-03-02', '0000-00-00'),
(6, 3, '2013-01-30', '2020-06-01'),
(7, 7, '2005-02-01', '2015-12-01'),
(7, 1, '2002-09-01', '0000-00-00'),
(7, 8, '2017-02-05', '2019-11-30'),
(8, 5, '2012-02-01', '0000-00-00'),
(8, 1, '2008-02-03', '0000-00-00'),
(9, 1, '1995-02-02', '2014-06-09'),
(9, 4, '2009-02-01', '2014-06-09'),
(10, 3, '2009-02-04', '2012-12-02'),
(10, 1, '2008-09-02', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `codcargo` int(11) NOT NULL,
  `nomecargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`codcargo`, `nomecargo`) VALUES
(1, 'professor'),
(2, 'coordenador pedagógico'),
(3, 'coordenador de recursos humanos'),
(4, 'coordenador de informática'),
(5, 'diretor'),
(6, 'coordenador da biblioteca\r\n'),
(7, 'coordenador de administração'),
(8, 'coordenador de ensino médio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `codfunc` int(11) NOT NULL,
  `nomefunc` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`codfunc`, `nomefunc`, `data`) VALUES
(1, 'Nicole ', '2007-08-07'),
(2, 'Leandro', '2009-09-10'),
(3, 'Carolina', '2003-02-03'),
(4, 'Ulisses', '1990-04-04'),
(5, 'Wagner ', '2014-03-02'),
(6, 'Rosana', '2013-01-30'),
(7, 'Valentina ', '2002-09-01'),
(8, 'Vitor ', '2008-02-03'),
(9, 'Alexandre', '1995-02-02'),
(10, 'Karla', '2008-09-02');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargofunc`
--
ALTER TABLE `cargofunc`
  ADD KEY `codfunc` (`codfunc`),
  ADD KEY `codcargo` (`codcargo`);

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`codcargo`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`codfunc`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `codcargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `codfunc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cargofunc`
--
ALTER TABLE `cargofunc`
  ADD CONSTRAINT `cargofunc_ibfk_1` FOREIGN KEY (`codcargo`) REFERENCES `cargos` (`codcargo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cargofunc_ibfk_2` FOREIGN KEY (`codfunc`) REFERENCES `funcionario` (`codfunc`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
