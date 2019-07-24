-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 22-Jun-2019 às 19:28
-- Versão do servidor: 10.1.40-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `LojaCarros`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbCambio`
--

CREATE TABLE `TbCambio` (
  `idCambio` int(11) NOT NULL,
  `tipo_cambio` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbCambio`
--

INSERT INTO `TbCambio` (`idCambio`, `tipo_cambio`) VALUES
(1, 'automatico'),
(2, 'manual');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbCarroceria`
--

CREATE TABLE `TbCarroceria` (
  `idCarroceria` int(11) NOT NULL,
  `tipo_carroceria` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbCarroceria`
--

INSERT INTO `TbCarroceria` (`idCarroceria`, `tipo_carroceria`) VALUES
(1, 'Sedã'),
(2, 'Utilitário Esportivo'),
(3, 'Hatch');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbCor`
--

CREATE TABLE `TbCor` (
  `idCor` int(11) NOT NULL,
  `nome_cor` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbCor`
--

INSERT INTO `TbCor` (`idCor`, `nome_cor`) VALUES
(1, 'Preto'),
(2, 'Prata'),
(3, 'Branco'),
(4, 'Vinho');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbMarca`
--

CREATE TABLE `TbMarca` (
  `idMarca` int(11) NOT NULL,
  `nome_marca` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbMarca`
--

INSERT INTO `TbMarca` (`idMarca`, `nome_marca`) VALUES
(1, 'Toyota'),
(2, 'Jeep'),
(3, 'Hyundai'),
(4, 'Honda'),
(5, 'Nissan');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbModelo`
--

CREATE TABLE `TbModelo` (
  `idModelo` int(11) NOT NULL,
  `nome_modelo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbModelo`
--

INSERT INTO `TbModelo` (`idModelo`, `nome_modelo`) VALUES
(1, 'Corolla'),
(2, 'Civic'),
(3, 'Hb 20'),
(4, 'WR-V'),
(5, 'HR-V'),
(6, 'Creta'),
(7, 'Renegade'),
(8, 'Compass'),
(9, 'Kicks'),
(10, 'Sentra');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbVeiculo`
--

CREATE TABLE `TbVeiculo` (
  `idVeiculo` int(11) NOT NULL,
  `fk_idModelo` int(11) NOT NULL,
  `fabricacao_ano` int(11) NOT NULL,
  `modelo_ano` int(11) NOT NULL,
  `preco` float(8,2) NOT NULL,
  `quilometragem` int(11) NOT NULL,
  `fk_idCambio` int(11) NOT NULL,
  `unico_dono` tinyint(1) NOT NULL,
  `garantia` tinyint(1) NOT NULL,
  `revisao_concercionaria` tinyint(1) NOT NULL,
  `fk_idCor` int(11) NOT NULL,
  `fk_idMarca` int(11) NOT NULL,
  `fk_idVersao` int(11) DEFAULT NULL,
  `fk_idCarroceria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbVeiculo`
--

INSERT INTO `TbVeiculo` (`idVeiculo`, `fk_idModelo`, `fabricacao_ano`, `modelo_ano`, `preco`, `quilometragem`, `fk_idCambio`, `unico_dono`, `garantia`, `revisao_concercionaria`, `fk_idCor`, `fk_idMarca`, `fk_idVersao`, `fk_idCarroceria`) VALUES
(1, 1, 2017, 2018, 87900.00, 20000, 1, 1, 1, 1, 2, 1, 2, 1),
(4, 1, 2016, 2017, 68900.00, 30000, 1, 0, 0, 0, 2, 1, 1, 1),
(5, 2, 2018, 2018, 94900.00, 25000, 1, 1, 1, 1, 1, 4, 3, 1),
(6, 2, 2017, 2017, 89500.00, 19900, 1, 1, 1, 1, 2, 4, 3, 1),
(7, 2, 2017, 2017, 87000.00, 11000, 1, 1, 0, 1, 2, 4, 4, 1),
(8, 3, 2017, 2017, 48990.00, 30000, 1, 1, 1, 1, 1, 3, 6, 3),
(9, 3, 2017, 2017, 30900.00, 10000, 2, 1, 0, 0, 1, 3, 6, 3),
(10, 1, 2017, 2017, 61500.00, 75000, 1, 1, 1, 0, 3, 1, 1, 1),
(11, 4, 2017, 2018, 71900.00, 27000, 1, 1, 1, 1, 4, 4, 7, 2),
(12, 5, 2016, 2016, 70500.00, 31710, 1, 0, 0, 0, 3, 4, 8, 2),
(13, 6, 2017, 2017, 84900.00, 26000, 1, 0, 1, 1, 3, 3, 9, 2),
(14, 7, 2016, 2016, 82900.00, 63000, 1, 1, 0, 1, 2, 2, 10, 2),
(15, 8, 2017, 2017, 87900.00, 14000, 1, 1, 1, 1, 1, 2, 11, 2),
(16, 9, 2017, 2017, 75900.00, 18158, 1, 0, 0, 0, 1, 5, 12, 2),
(18, 10, 2011, 2012, 29900.00, 84800, 2, 1, 0, 1, 2, 5, 12, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbVersao`
--

CREATE TABLE `TbVersao` (
  `idVersao` int(11) NOT NULL,
  `nome_versao` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbVersao`
--

INSERT INTO `TbVersao` (`idVersao`, `nome_versao`) VALUES
(1, 'gli'),
(2, 'xei'),
(3, 'exl'),
(4, 'cvt'),
(6, 'Comfort'),
(7, 'ex-vt'),
(8, 'lx'),
(9, 'Prestige'),
(10, 'Longitude'),
(11, 'Sport'),
(12, 'sl');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `TbCambio`
--
ALTER TABLE `TbCambio`
  ADD PRIMARY KEY (`idCambio`);

--
-- Indexes for table `TbCarroceria`
--
ALTER TABLE `TbCarroceria`
  ADD PRIMARY KEY (`idCarroceria`);

--
-- Indexes for table `TbCor`
--
ALTER TABLE `TbCor`
  ADD PRIMARY KEY (`idCor`);

--
-- Indexes for table `TbMarca`
--
ALTER TABLE `TbMarca`
  ADD PRIMARY KEY (`idMarca`);

--
-- Indexes for table `TbModelo`
--
ALTER TABLE `TbModelo`
  ADD PRIMARY KEY (`idModelo`);

--
-- Indexes for table `TbVeiculo`
--
ALTER TABLE `TbVeiculo`
  ADD PRIMARY KEY (`idVeiculo`),
  ADD KEY `fk_idCor` (`fk_idCor`),
  ADD KEY `fk_idCor_2` (`fk_idCor`),
  ADD KEY `fk_idMarca` (`fk_idMarca`),
  ADD KEY `fk_idVersao` (`fk_idVersao`),
  ADD KEY `fk_idCarroceria` (`fk_idCarroceria`),
  ADD KEY `fk_idModelo` (`fk_idModelo`),
  ADD KEY `fk_idModelo_2` (`fk_idModelo`),
  ADD KEY `fk_idCambio` (`fk_idCambio`),
  ADD KEY `fk_idCambio_2` (`fk_idCambio`);

--
-- Indexes for table `TbVersao`
--
ALTER TABLE `TbVersao`
  ADD PRIMARY KEY (`idVersao`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `TbCambio`
--
ALTER TABLE `TbCambio`
  MODIFY `idCambio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `TbCarroceria`
--
ALTER TABLE `TbCarroceria`
  MODIFY `idCarroceria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `TbCor`
--
ALTER TABLE `TbCor`
  MODIFY `idCor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `TbMarca`
--
ALTER TABLE `TbMarca`
  MODIFY `idMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `TbModelo`
--
ALTER TABLE `TbModelo`
  MODIFY `idModelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `TbVeiculo`
--
ALTER TABLE `TbVeiculo`
  MODIFY `idVeiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `TbVersao`
--
ALTER TABLE `TbVersao`
  MODIFY `idVersao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `TbVeiculo`
--
ALTER TABLE `TbVeiculo`
  ADD CONSTRAINT `fk_idCarroceria` FOREIGN KEY (`fk_idCarroceria`) REFERENCES `TbCarroceria` (`idCarroceria`),
  ADD CONSTRAINT `fk_idCor` FOREIGN KEY (`fk_idCor`) REFERENCES `TbCor` (`idCor`),
  ADD CONSTRAINT `fk_idMarca` FOREIGN KEY (`fk_idMarca`) REFERENCES `TbMarca` (`idMarca`),
  ADD CONSTRAINT `fk_idModelo` FOREIGN KEY (`fk_idModelo`) REFERENCES `TbModelo` (`idModelo`),
  ADD CONSTRAINT `fk_idVersao` FOREIGN KEY (`fk_idVersao`) REFERENCES `TbVersao` (`idVersao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
