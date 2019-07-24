-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 22-Maio-2019 às 05:22
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
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbAluno`
--

CREATE TABLE `TbAluno` (
  `NuMatricula` int(11) NOT NULL,
  `CoCurso` tinyint(4) NOT NULL,
  `NoAluno` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbAluno`
--

INSERT INTO `TbAluno` (`NuMatricula`, `CoCurso`, `NoAluno`) VALUES
(10, 1, 'Diego Araujo'),
(11, 1, 'Kassandra Araujo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbAutor`
--

CREATE TABLE `TbAutor` (
  `IdAutor` int(11) NOT NULL,
  `NoAutor` varchar(50) DEFAULT NULL,
  `IdNacionalidade` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbAutor`
--

INSERT INTO `TbAutor` (`IdAutor`, `NoAutor`, `IdNacionalidade`) VALUES
(1, 'Mark Manson', 2),
(2, 'Manzano,Jose Augusto N. G.', 1),
(4, 'Coronel,Carlos', 2),
(5, 'Peter,Robert', 2),
(6, 'Sheldon,Sidney', 2),
(7, 'Netto, Vladimir', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbAutorObra`
--

CREATE TABLE `TbAutorObra` (
  `IdAutorObra` int(11) NOT NULL,
  `IdAutor` int(11) NOT NULL,
  `IdObra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbAutorObra`
--

INSERT INTO `TbAutorObra` (`IdAutorObra`, `IdAutor`, `IdObra`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 4, 3),
(4, 6, 4),
(5, 7, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbCurso`
--

CREATE TABLE `TbCurso` (
  `CoCurso` tinyint(4) NOT NULL,
  `NoCurso` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbCurso`
--

INSERT INTO `TbCurso` (`CoCurso`, `NoCurso`) VALUES
(1, 'TSI'),
(2, 'Redes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbEditora`
--

CREATE TABLE `TbEditora` (
  `IdEditora` int(11) NOT NULL,
  `NoEditora` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbEditora`
--

INSERT INTO `TbEditora` (`IdEditora`, `NoEditora`) VALUES
(1, 'Intrinseca'),
(2, 'Érica'),
(3, 'Cengage Learning'),
(4, 'Record'),
(5, 'Sextante / GMT');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbEmail`
--

CREATE TABLE `TbEmail` (
  `IdEmail` int(11) NOT NULL,
  `NuMatricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbEmprestimo`
--

CREATE TABLE `TbEmprestimo` (
  `IdEmprestimo` int(11) NOT NULL,
  `DaEmprestimo` date DEFAULT NULL,
  `IdOperador` int(11) NOT NULL,
  `NuMatricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbEmprestimo`
--

INSERT INTO `TbEmprestimo` (`IdEmprestimo`, `DaEmprestimo`, `IdOperador`, `NuMatricula`) VALUES
(3, '2019-05-21', 1, 10),
(4, '2019-05-21', 1, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbEmprestimoItem`
--

CREATE TABLE `TbEmprestimoItem` (
  `IdEmprestimoItem` int(11) NOT NULL,
  `IdObra` int(11) NOT NULL,
  `IdEmprestimo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbEmprestimoItem`
--

INSERT INTO `TbEmprestimoItem` (`IdEmprestimoItem`, `IdObra`, `IdEmprestimo`) VALUES
(1, 3, 4),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbIdioma`
--

CREATE TABLE `TbIdioma` (
  `IdIdioma` tinyint(11) NOT NULL,
  `NoIdioma` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbIdioma`
--

INSERT INTO `TbIdioma` (`IdIdioma`, `NoIdioma`) VALUES
(1, 'Português/BR'),
(2, 'Inglês');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbNacionalidade`
--

CREATE TABLE `TbNacionalidade` (
  `IdNacionalidade` tinyint(4) NOT NULL,
  `NoNacionalidade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbNacionalidade`
--

INSERT INTO `TbNacionalidade` (`IdNacionalidade`, `NoNacionalidade`) VALUES
(1, 'Brasileiro'),
(2, 'Americano');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbObra`
--

CREATE TABLE `TbObra` (
  `IdObra` int(11) NOT NULL,
  `NoObra` varchar(100) DEFAULT NULL,
  `NuAno` smallint(6) DEFAULT NULL,
  `NuEdicao` tinyint(4) DEFAULT NULL,
  `IdIdioma` tinyint(4) NOT NULL,
  `IdEditora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbObra`
--

INSERT INTO `TbObra` (`IdObra`, `NoObra`, `NuAno`, `NuEdicao`, `IdIdioma`, `IdEditora`) VALUES
(1, 'F*Deu Geral - Um Livro Sobre Esperança?', 2019, 1, 1, 1),
(2, 'Microsoft Essencial Windows 7 Professional - Guia Essencial de Aplicação', 2010, 1, 1, 2),
(3, 'Sistemas de Banco de Dados - Projeto, Implementação e Gerenciamento', 2010, 1, 1, 3),
(4, 'Manhã, Tarde e Noite', 2011, 25, 1, 4),
(5, 'Lava Jato – o Juiz Sergio Moro e Os Bastidores da Operação Que Abalou o Brasil', 2016, 21, 1, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `TbOperador`
--

CREATE TABLE `TbOperador` (
  `IdOperador` int(11) NOT NULL,
  `NoOperador` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TbOperador`
--

INSERT INTO `TbOperador` (`IdOperador`, `NoOperador`) VALUES
(1, 'Aimée Lira');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `TbAluno`
--
ALTER TABLE `TbAluno`
  ADD PRIMARY KEY (`NuMatricula`),
  ADD KEY `CoCurso` (`CoCurso`);

--
-- Indexes for table `TbAutor`
--
ALTER TABLE `TbAutor`
  ADD PRIMARY KEY (`IdAutor`),
  ADD KEY `IdNacionalidade` (`IdNacionalidade`);

--
-- Indexes for table `TbAutorObra`
--
ALTER TABLE `TbAutorObra`
  ADD PRIMARY KEY (`IdAutorObra`),
  ADD KEY `IdAutor` (`IdAutor`),
  ADD KEY `IdObra` (`IdObra`);

--
-- Indexes for table `TbCurso`
--
ALTER TABLE `TbCurso`
  ADD PRIMARY KEY (`CoCurso`);

--
-- Indexes for table `TbEditora`
--
ALTER TABLE `TbEditora`
  ADD PRIMARY KEY (`IdEditora`);

--
-- Indexes for table `TbEmail`
--
ALTER TABLE `TbEmail`
  ADD PRIMARY KEY (`IdEmail`),
  ADD KEY `NuMatricula` (`NuMatricula`);

--
-- Indexes for table `TbEmprestimo`
--
ALTER TABLE `TbEmprestimo`
  ADD PRIMARY KEY (`IdEmprestimo`),
  ADD KEY `TbEmprestimo_ibfk_1` (`IdOperador`),
  ADD KEY `TbEmprestimo_ibfk_2` (`NuMatricula`);

--
-- Indexes for table `TbEmprestimoItem`
--
ALTER TABLE `TbEmprestimoItem`
  ADD PRIMARY KEY (`IdEmprestimoItem`),
  ADD KEY `IdObra` (`IdObra`),
  ADD KEY `IdEmprestimo` (`IdEmprestimo`);

--
-- Indexes for table `TbIdioma`
--
ALTER TABLE `TbIdioma`
  ADD PRIMARY KEY (`IdIdioma`);

--
-- Indexes for table `TbNacionalidade`
--
ALTER TABLE `TbNacionalidade`
  ADD PRIMARY KEY (`IdNacionalidade`);

--
-- Indexes for table `TbObra`
--
ALTER TABLE `TbObra`
  ADD PRIMARY KEY (`IdObra`),
  ADD KEY `IdIdioma` (`IdIdioma`),
  ADD KEY `IdEditora` (`IdEditora`);

--
-- Indexes for table `TbOperador`
--
ALTER TABLE `TbOperador`
  ADD PRIMARY KEY (`IdOperador`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `TbAluno`
--
ALTER TABLE `TbAluno`
  MODIFY `NuMatricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `TbAutor`
--
ALTER TABLE `TbAutor`
  MODIFY `IdAutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `TbAutorObra`
--
ALTER TABLE `TbAutorObra`
  MODIFY `IdAutorObra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `TbCurso`
--
ALTER TABLE `TbCurso`
  MODIFY `CoCurso` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `TbEditora`
--
ALTER TABLE `TbEditora`
  MODIFY `IdEditora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `TbEmail`
--
ALTER TABLE `TbEmail`
  MODIFY `IdEmail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TbEmprestimo`
--
ALTER TABLE `TbEmprestimo`
  MODIFY `IdEmprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `TbEmprestimoItem`
--
ALTER TABLE `TbEmprestimoItem`
  MODIFY `IdEmprestimoItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `TbIdioma`
--
ALTER TABLE `TbIdioma`
  MODIFY `IdIdioma` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `TbNacionalidade`
--
ALTER TABLE `TbNacionalidade`
  MODIFY `IdNacionalidade` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `TbObra`
--
ALTER TABLE `TbObra`
  MODIFY `IdObra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `TbOperador`
--
ALTER TABLE `TbOperador`
  MODIFY `IdOperador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `TbAluno`
--
ALTER TABLE `TbAluno`
  ADD CONSTRAINT `TbAluno_ibfk_1` FOREIGN KEY (`CoCurso`) REFERENCES `TbCurso` (`CoCurso`);

--
-- Limitadores para a tabela `TbAutor`
--
ALTER TABLE `TbAutor`
  ADD CONSTRAINT `TbAutor_ibfk_1` FOREIGN KEY (`IdNacionalidade`) REFERENCES `TbNacionalidade` (`IdNacionalidade`);

--
-- Limitadores para a tabela `TbAutorObra`
--
ALTER TABLE `TbAutorObra`
  ADD CONSTRAINT `TbAutorObra_ibfk_1` FOREIGN KEY (`IdAutor`) REFERENCES `TbAutor` (`IdAutor`),
  ADD CONSTRAINT `TbAutorObra_ibfk_2` FOREIGN KEY (`IdObra`) REFERENCES `TbObra` (`IdObra`);

--
-- Limitadores para a tabela `TbEmail`
--
ALTER TABLE `TbEmail`
  ADD CONSTRAINT `TbEmail_ibfk_1` FOREIGN KEY (`NuMatricula`) REFERENCES `TbAluno` (`NuMatricula`);

--
-- Limitadores para a tabela `TbEmprestimo`
--
ALTER TABLE `TbEmprestimo`
  ADD CONSTRAINT `TbEmprestimo_ibfk_1` FOREIGN KEY (`IdOperador`) REFERENCES `TbOperador` (`IdOperador`) ON UPDATE CASCADE,
  ADD CONSTRAINT `TbEmprestimo_ibfk_2` FOREIGN KEY (`NuMatricula`) REFERENCES `TbAluno` (`NuMatricula`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `TbEmprestimoItem`
--
ALTER TABLE `TbEmprestimoItem`
  ADD CONSTRAINT `TbEmprestimoItem_ibfk_1` FOREIGN KEY (`IdObra`) REFERENCES `TbObra` (`IdObra`),
  ADD CONSTRAINT `TbEmprestimoItem_ibfk_2` FOREIGN KEY (`IdEmprestimo`) REFERENCES `TbEmprestimo` (`IdEmprestimo`);

--
-- Limitadores para a tabela `TbObra`
--
ALTER TABLE `TbObra`
  ADD CONSTRAINT `TbObra_ibfk_1` FOREIGN KEY (`IdIdioma`) REFERENCES `TbIdioma` (`IdIdioma`),
  ADD CONSTRAINT `TbObra_ibfk_2` FOREIGN KEY (`IdEditora`) REFERENCES `TbEditora` (`IdEditora`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
