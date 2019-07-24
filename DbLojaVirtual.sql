-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 17-Jun-2019 às 16:37
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
-- Database: `DbLojaVirtual`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbCategoria`
--

CREATE TABLE `TbCategoria` (
  `idCategoria` int(11) NOT NULL,
  `nome_categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbCategoria`
--

INSERT INTO `TbCategoria` (`idCategoria`, `nome_categoria`) VALUES
(1, 'Celular'),
(2, 'Relógio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbCor`
--

CREATE TABLE `TbCor` (
  `idCor` int(11) NOT NULL,
  `nome_cor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbCor`
--

INSERT INTO `TbCor` (`idCor`, `nome_cor`) VALUES
(1, 'Rosa'),
(2, 'Cinza Espacial'),
(3, 'Névoa Silver'),
(4, 'Dourado'),
(5, 'Preto'),
(6, 'Violeta'),
(7, 'Prata');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbFabricante`
--

CREATE TABLE `TbFabricante` (
  `idFabricante` int(11) NOT NULL,
  `nome_fabricante` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbFabricante`
--

INSERT INTO `TbFabricante` (`idFabricante`, `nome_fabricante`) VALUES
(1, 'Aplle'),
(2, 'Samsung');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbProduto`
--

CREATE TABLE `TbProduto` (
  `idProduto` int(11) NOT NULL,
  `nome_produto` varchar(50) DEFAULT NULL,
  `descricao` varchar(250) DEFAULT NULL,
  `tela_tam` float(2,1) DEFAULT NULL,
  `armazenamento_cap` int(11) DEFAULT NULL,
  `preco` decimal(6,2) DEFAULT NULL,
  `avaliacao` int(11) DEFAULT NULL,
  `idCor` int(11) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  `idFabricante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbProduto`
--

INSERT INTO `TbProduto` (`idProduto`, `nome_produto`, `descricao`, `tela_tam`, `armazenamento_cap`, `preco`, `avaliacao`, `idCor`, `idCategoria`, `idFabricante`) VALUES
(1, 'Iphone', 'Design inovador, totalmente em vidro. A câmera que', 4.7, 64, '3560.00', 5, 1, 1, 1),
(2, 'Iphone X', 'Nossa visão sempre foi criar um iPhone que fosse t', 5.8, 64, '4999.00', 4, 2, 1, 1),
(3, 'Apple Watch Series 3', 'O novo Apple Watch Series 3 está avançado em todos os sentidos! Com GPS e novo altímetro integrados, o ele registra todas as suas atividades ao ar livre.', 0.4, NULL, '1979.50', 5, 2, 2, 1),
(4, 'Apple Watch Series 3', 'O novo Apple Watch Series 3 está avançado em todos os sentidos! Com GPS e novo altímetro integrados, o ele registra todas as suas atividades ao ar livre.', 0.3, NULL, '1699.00', 4, 3, 2, 1),
(5, 'Iphone 6s', 'A tecnologia avançada é destaque no iPhone 6s Silver. A tela de retina com 3D Touch, que reconhece a intensidade do toque e aprimora o desempenho do aparelho', 4.7, 32, '1936.80', 5, 4, 1, 1),
(6, 'Galaxy J6 Plus', 'O Galaxy J6+ da Samsung é um smartphone que vem equipado com Display Infinito, com tela HD+ Super AMOLED de 6 polegadas, que garante cores mais nítidas e maximiza sua experiência visual com os jogos, textos e páginas da internet. O J6+ garante também', 6.0, 32, '899.00', 4, 5, 1, 2),
(7, 'Galaxy J-4', 'Samsung cel samsung j400m violeta 32gb am galaxy j4 processador quad, core 1. 4ghz tela super amoled 5, 5\" 32gb ram 2gb.', 5.0, 32, '776.76', 4, 6, 1, 2),
(8, 'Galaxy J4', 'Samsung Cel Samsung J410G PTO 16GB Galaxy J4 Core Processador QUAD-CORE 1.4GHZ Tela TFT 6\" 16GB RAM 1GB', 6.0, 16, '589.00', 4, 5, 1, 2),
(9, 'Galaxy A8 Plus', 'O Quantum You e já vem protegido de fábrica, com película e capa de proteção já inclusas na embalagem.', 6.0, 64, '1777.76', 5, 4, 1, 2),
(10, 'Galaxy J2', 'Tela de 5.0\" Câmera frontal de 5MP Câmera traseira de 8MP 16GB* de memória interna Aproveite mais com uma tela ampla Design que brilha. O Galaxy J2 Core possui display qHD de 5,0\" para oferecer uma experiência de visualização mais envolvente.', 5.0, 16, '541.69', NULL, 7, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `TbCategoria`
--
ALTER TABLE `TbCategoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indexes for table `TbCor`
--
ALTER TABLE `TbCor`
  ADD PRIMARY KEY (`idCor`);

--
-- Indexes for table `TbFabricante`
--
ALTER TABLE `TbFabricante`
  ADD PRIMARY KEY (`idFabricante`);

--
-- Indexes for table `TbProduto`
--
ALTER TABLE `TbProduto`
  ADD PRIMARY KEY (`idProduto`),
  ADD KEY `fk_fabricante` (`idFabricante`),
  ADD KEY `fk_categoria` (`idCategoria`),
  ADD KEY `fk_cor` (`idCor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `TbCategoria`
--
ALTER TABLE `TbCategoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `TbCor`
--
ALTER TABLE `TbCor`
  MODIFY `idCor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `TbFabricante`
--
ALTER TABLE `TbFabricante`
  MODIFY `idFabricante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `TbProduto`
--
ALTER TABLE `TbProduto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `TbProduto`
--
ALTER TABLE `TbProduto`
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`idCategoria`) REFERENCES `TbCategoria` (`idCategoria`),
  ADD CONSTRAINT `fk_cor` FOREIGN KEY (`idCor`) REFERENCES `TbCor` (`idCor`),
  ADD CONSTRAINT `fk_fabricante` FOREIGN KEY (`idFabricante`) REFERENCES `TbFabricante` (`idFabricante`);
COMMIT;

--
-- Consultas `DbLojaVirtual`
--

/* a) descrição, cor, tamanho da tela e preço de smartphones Apple, com 64 GB de armazenamento interno e que custem até R$ 4.000,00 */

SELECT p.descricao as "Descrição", c.nome_cor as "Cor", p.tela_tam as "Tamanho Tela", p.preco as "Preço"
FROM TbProduto as p
INNER JOIN TbCor as c
on p.idCor = c.idCor
INNER JOIN TbFabricante as f
on p.idFabricante = f.idFabricante
and p.idFabricante = 1
WHERE p.armazenamento_cap = 64 AND p.preco <= 4000;

/* b) descrição, armazenamento interno e preço de smartphones Samsung cuja tela tenha acima de 5" */

SELECT p.descricao as "Descrição", p.armazenamento_cap as "Capacidade em Gb", p.preco as "Preço"
FROM TbProduto as p
INNER JOIN TbFabricante as f
on p.idFabricante = f.idFabricante
and p.idFabricante = 2
WHERE p.tela_tam >= 5;

/* c) descrição, cor e tamanho da tela de relógios Apple cujo valor não ultrapasse R$ 2.000,00 */

SELECT p.descricao as "Descrição", c.nome_cor as "Cor", p.tela_tam as "Tamanho Tela"
FROM TbProduto as p
INNER JOIN TbCor as c
on p.idCor = c.idCor
INNER JOIN TbCategoria as cat
on p.idCategoria = cat.idCategoria
INNER JOIN TbFabricante as f
on p.idFabricante = f.idFabricante
and p.idFabricante = 1
WHERE p.idCategoria = 2 AND p.preco <= 2000;

/* d) preço médio dos produtos, agrupados por marca e por categoria (isto é, relógio e smartphone) */

SELECT AVG(p.preco) as 'Média de Valor', f.nome_fabricante as 'Fabricante', cat.nome_categoria as 'Categoria'
FROM TbProduto as p
INNER JOIN TbFabricante as f
on p.idFabricante = f.idFabricante
INNER JOIN TbCategoria as cat
on p.idCategoria = cat.idCategoria
GROUP BY f.nome_fabricante, cat.nome_categoria;

/* e) descrição, cor, tamanho da tela, armazenamento interno, marca e preço dos smartphones cuja avaliação dos usuários seja superior a 4 estrelas */

SELECT p.descricao as "Descrição", c.nome_cor as "Cor", p.tela_tam as "Tamanho Tela", p.armazenamento_cap as "Capacidade em Gb", 
f.nome_fabricante as "Marca", p.preco as "Preço"
FROM TbProduto as p
INNER JOIN TbCor as c
on p.idCor = c.idCor
INNER JOIN TbCategoria as cat
on p.idCategoria = cat.idCategoria
INNER JOIN TbFabricante as f
on p.idFabricante = f.idFabricante
and p.idFabricante = 1
WHERE p.idCategoria = 1 AND p.avaliacao >= 4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
