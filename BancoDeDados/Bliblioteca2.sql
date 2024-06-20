-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/06/2024 às 00:31
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Estrutura para tabela `autores`
--

CREATE TABLE `autores` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `nacionalidade` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `autores`
--

INSERT INTO `autores` (`id`, `nome`, `nacionalidade`) VALUES
(1, 'J.K. Rowling', 'Britânica'),
(2, 'George Orwell', 'Britânico'),
(3, 'Machado de Assis', 'Brasileiro'),
(4, 'J.R.R. Tolkien', 'Britânico'),
(5, 'John Green', 'Americano');

-- --------------------------------------------------------

--
-- Estrutura para tabela `editoras`
--

CREATE TABLE `editoras` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `editoras`
--

INSERT INTO `editoras` (`id`, `nome`, `endereco`) VALUES
(1, 'Editora A', 'Rua das Letras, 100'),
(2, 'Editora B', 'Avenida das Palavras, 200'),
(3, 'Editora C', 'Rua dos Livros, 300'),
(4, 'Editora D', 'Praça das Edições, 400'),
(5, 'Editora E', 'Avenida dos Escritores, 500');

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `id` int(11) NOT NULL,
  `id_membro` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `data_emprestimo` date NOT NULL,
  `data_devolucao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `emprestimos`
--

INSERT INTO `emprestimos` (`id`, `id_membro`, `id_livro`, `data_emprestimo`, `data_devolucao`) VALUES
(101, 1, 1, '2023-01-01', '2023-01-15'),
(102, 1, 2, '2023-01-16', '2023-01-30'),
(103, 1, 3, '2023-02-01', '2023-02-15'),
(104, 1, 4, '2023-02-16', '2023-03-02'),
(105, 1, 5, '2023-03-03', '2023-03-17'),
(106, 2, 6, '2023-01-01', '2023-01-15'),
(107, 2, 7, '2023-01-16', '2023-01-30'),
(108, 2, 8, '2023-02-01', '2023-02-15'),
(109, 2, 9, '2023-02-16', '2023-03-02'),
(110, 2, 10, '2023-03-03', '2023-03-17'),
(111, 3, 11, '2023-01-01', '2023-01-15'),
(112, 3, 12, '2023-01-16', '2023-01-30'),
(113, 3, 13, '2023-02-01', '2023-02-15'),
(114, 3, 14, '2023-02-16', '2023-03-02'),
(115, 3, 15, '2023-03-03', '2023-03-17'),
(116, 4, 16, '2023-01-01', '2023-01-15'),
(117, 4, 17, '2023-01-16', '2023-01-30'),
(118, 4, 18, '2023-02-01', '2023-02-15'),
(119, 4, 19, '2023-02-16', '2023-03-02'),
(120, 4, 20, '2023-03-03', '2023-03-17'),
(121, 5, 21, '2023-01-01', '2023-01-15'),
(122, 5, 22, '2023-01-16', '2023-01-30'),
(123, 5, 23, '2023-02-01', '2023-02-15'),
(124, 5, 24, '2023-02-16', '2023-03-02'),
(125, 5, 25, '2023-03-03', '2023-03-17'),
(126, 6, 26, '2023-01-01', '2023-01-15'),
(127, 6, 27, '2023-01-16', '2023-01-30'),
(128, 6, 28, '2023-02-01', '2023-02-15'),
(129, 6, 29, '2023-02-16', '2023-03-02'),
(130, 6, 30, '2023-03-03', '2023-03-17'),
(131, 7, 31, '2023-01-01', '2023-01-15'),
(132, 7, 32, '2023-01-16', '2023-01-30'),
(133, 7, 33, '2023-02-01', '2023-02-15'),
(134, 7, 34, '2023-02-16', '2023-03-02'),
(135, 7, 35, '2023-03-03', '2023-03-17'),
(136, 8, 36, '2023-01-01', '2023-01-15'),
(137, 8, 37, '2023-01-16', '2023-01-30'),
(138, 8, 38, '2023-02-01', '2023-02-15'),
(139, 8, 39, '2023-02-16', '2023-03-02'),
(140, 8, 40, '2023-03-03', '2023-03-17'),
(141, 9, 41, '2023-01-01', '2023-01-15'),
(142, 9, 42, '2023-01-16', '2023-01-30'),
(143, 9, 43, '2023-02-01', '2023-02-15'),
(144, 9, 44, '2023-02-16', '2023-03-02'),
(145, 9, 45, '2023-03-03', '2023-03-17'),
(146, 10, 46, '2023-01-01', '2023-01-15'),
(147, 10, 47, '2023-01-16', '2023-01-30'),
(148, 10, 48, '2023-02-01', '2023-02-15'),
(149, 10, 49, '2023-02-16', '2023-03-02'),
(150, 10, 50, '2023-03-03', '2023-03-17'),
(151, 11, 1, '2023-01-01', '2023-01-15'),
(152, 11, 2, '2023-01-16', '2023-01-30'),
(153, 11, 3, '2023-02-01', '2023-02-15'),
(154, 11, 4, '2023-02-16', '2023-03-02'),
(155, 11, 5, '2023-03-03', '2023-03-17'),
(156, 12, 6, '2023-01-01', '2023-01-15'),
(157, 12, 7, '2023-01-16', '2023-01-30'),
(158, 12, 8, '2023-02-01', '2023-02-15'),
(159, 12, 9, '2023-02-16', '2023-03-02'),
(160, 12, 10, '2023-03-03', '2023-03-17'),
(161, 13, 11, '2023-01-01', '2023-01-15'),
(162, 13, 12, '2023-01-16', '2023-01-30'),
(163, 13, 13, '2023-02-01', '2023-02-15'),
(164, 13, 14, '2023-02-16', '2023-03-02'),
(165, 13, 15, '2023-03-03', '2023-03-17'),
(166, 14, 16, '2023-01-01', '2023-01-15'),
(167, 14, 17, '2023-01-16', '2023-01-30'),
(168, 14, 18, '2023-02-01', '2023-02-15'),
(169, 14, 19, '2023-02-16', '2023-03-02'),
(170, 14, 20, '2023-03-03', '2023-03-17');

-- --------------------------------------------------------

--
-- Estrutura para tabela `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `generos`
--

INSERT INTO `generos` (`id`, `descricao`) VALUES
(1, 'Fantasia'),
(2, 'Ficção Científica'),
(3, 'Clássico'),
(4, 'Romance'),
(5, 'Aventura');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `id_editora` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `data_publicacao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`id`, `titulo`, `id_autor`, `id_editora`, `id_genero`, `isbn`, `data_publicacao`) VALUES
(1, 'Harry Potter e a Pedra Filosofal', 1, 1, 1, '978-0747532699', '1997-06-26'),
(2, 'Harry Potter e a Câmara Secreta', 1, 1, 1, '978-0747538493', '1998-07-02'),
(3, 'Harry Potter e o Prisioneiro de Azkaban', 1, 1, 1, '978-0747542155', '1999-07-08'),
(4, '1984', 2, 2, 2, '978-0451524935', '1949-06-08'),
(5, 'A Revolução dos Bichos', 2, 2, 2, '978-0451526342', '1945-08-17'),
(6, 'Dom Casmurro', 3, 3, 3, '978-8520932128', '1899-01-01'),
(7, 'Memórias Póstumas de Brás Cubas', 3, 3, 3, '978-8520932129', '1881-01-01'),
(8, 'Quincas Borba', 3, 3, 3, '978-8520932130', '1891-01-01'),
(9, 'O Senhor dos Anéis: A Sociedade do Anel', 4, 4, 5, '978-0618640157', '1954-07-29'),
(10, 'O Senhor dos Anéis: As Duas Torres', 4, 4, 5, '978-0618645619', '1954-11-11'),
(11, 'O Senhor dos Anéis: O Retorno do Rei', 4, 4, 5, '978-0618645610', '1955-10-20'),
(12, 'O Hobbit', 4, 4, 5, '978-0547928227', '1937-09-21'),
(13, 'A Culpa é das Estrelas', 5, 5, 4, '978-0142424179', '2012-01-10'),
(14, 'Harry Potter e o Cálice de Fogo', 1, 1, 1, '978-0747550990', '2000-07-08'),
(15, 'Harry Potter e a Ordem da Fênix', 1, 1, 1, '978-0747551003', '2003-06-21'),
(16, 'Harry Potter e o Enigma do Príncipe', 1, 1, 1, '978-0747581086', '2005-07-16'),
(17, 'Harry Potter e as Relíquias da Morte', 1, 1, 1, '978-0545010221', '2007-07-21'),
(18, 'Animal Farm', 2, 2, 2, '978-0451526342', '1945-08-17'),
(19, 'Fahrenheit 451', 2, 2, 2, '978-1451673319', '1953-10-19'),
(20, 'Brave New World', 2, 2, 2, '978-0060850524', '1932-01-01'),
(21, 'The Road', 2, 2, 2, '978-0307387899', '2006-09-26'),
(22, 'To Kill a Mockingbird', 2, 2, 2, '978-0061120084', '1960-07-11'),
(23, 'Pride and Prejudice', 3, 3, 3, '978-1503290563', '1813-01-28'),
(24, 'Sense and Sensibility', 3, 3, 3, '978-1503290303', '1811-01-01'),
(25, 'Mansfield Park', 3, 3, 3, '978-1503290564', '1814-01-01'),
(26, 'Emma', 3, 3, 3, '978-1503290565', '1815-12-23'),
(27, 'Persuasion', 3, 3, 3, '978-1503290566', '1817-01-01'),
(28, 'The Great Gatsby', 3, 3, 3, '978-0743273565', '1925-04-10'),
(29, 'Moby Dick', 3, 3, 3, '978-1503280786', '1851-10-18'),
(30, 'Jane Eyre', 3, 3, 3, '978-1503278196', '1847-10-16'),
(31, 'Wuthering Heights', 3, 3, 3, '978-1503265424', '1847-12-01'),
(32, 'Dracula', 3, 3, 3, '978-1503261389', '1897-05-26'),
(33, 'Frankenstein', 3, 3, 3, '978-1503275478', '1818-01-01'),
(34, 'The Adventures of Sherlock Holmes', 3, 3, 3, '978-1503280788', '1892-10-14'),
(35, 'The Picture of Dorian Gray', 3, 3, 3, '978-1503275294', '1890-07-20'),
(36, 'War and Peace', 3, 3, 3, '978-1503280787', '1869-01-01'),
(37, 'Anna Karenina', 3, 3, 3, '978-1503290786', '1878-01-01'),
(38, 'Crime and Punishment', 3, 3, 3, '978-1503290791', '1866-01-01'),
(39, 'The Brothers Karamazov', 3, 3, 3, '978-1503290807', '1880-01-01'),
(40, 'The Idiot', 3, 3, 3, '978-1503290814', '1869-01-01'),
(41, 'Notes from Underground', 3, 3, 3, '978-1503290821', '1864-01-01'),
(42, 'Demons', 3, 3, 3, '978-1503290838', '1872-01-01'),
(43, 'The Possessed', 3, 3, 3, '978-1503290845', '1872-01-01'),
(44, 'Livro 1', 1, 1, 1, '1234567890', '2000-01-01'),
(45, 'Livro 2', 2, 2, 2, '2345678901', '2001-02-02'),
(46, 'Livro 3', 3, 3, 3, '3456789012', '2002-03-03'),
(47, 'Livro 4', 4, 4, 4, '4567890123', '2003-04-04'),
(48, 'Livro 5', 5, 5, 5, '5678901234', '2004-05-05'),
(49, 'Livro 6', 1, 1, 1, '6789012345', '2005-06-06'),
(50, 'Livro 7', 2, 2, 2, '7890123456', '2006-07-07'),
(51, 'Livro 8', 3, 3, 3, '8901234567', '2007-08-08'),
(52, 'Livro 9', 4, 4, 4, '9012345678', '2008-09-09'),
(53, 'Livro 10', 5, 5, 5, '0123456789', '2009-10-10'),
(54, 'Livro 11', 1, 1, 1, '1234509876', '2010-11-11'),
(55, 'Livro 12', 2, 2, 2, '2345609876', '2011-12-12'),
(56, 'Livro 13', 3, 3, 3, '3456709876', '2012-01-13'),
(57, 'Livro 14', 4, 4, 4, '4567809876', '2013-02-14'),
(58, 'Livro 15', 5, 5, 5, '5678909876', '2014-03-15'),
(59, 'Livro 16', 1, 1, 1, '6789009876', '2015-04-16'),
(60, 'Livro 17', 2, 2, 2, '7890109876', '2016-05-17'),
(61, 'Livro 18', 3, 3, 3, '8901209876', '2017-06-18'),
(62, 'Livro 19', 4, 4, 4, '9012309876', '2018-07-19'),
(63, 'Livro 20', 5, 5, 5, '0123409876', '2019-08-20'),
(64, 'Livro 21', 1, 1, 1, '1234560987', '2020-09-21'),
(65, 'Livro 22', 2, 2, 2, '2345670987', '2021-10-22'),
(66, 'Livro 23', 3, 3, 3, '3456780987', '2022-11-23'),
(67, 'Livro 24', 4, 4, 4, '4567890987', '2023-12-24'),
(68, 'Livro 25', 5, 5, 5, '5678900987', '2024-01-25'),
(69, 'Livro 26', 1, 1, 1, '6789010987', '2025-02-26'),
(70, 'Livro 27', 2, 2, 2, '7890120987', '2026-03-27'),
(71, 'Livro 28', 3, 3, 3, '8901230987', '2027-04-28'),
(72, 'Livro 29', 4, 4, 4, '9012340987', '2028-05-29'),
(73, 'Livro 30', 5, 5, 5, '0123450987', '2029-06-30'),
(74, 'Livro 31', 1, 1, 1, '1234567890', '2030-07-01'),
(75, 'Livro 32', 2, 2, 2, '2345678901', '2031-08-02'),
(76, 'Livro 33', 3, 3, 3, '3456789012', '2032-09-03'),
(77, 'Livro 34', 4, 4, 4, '4567890123', '2033-10-04'),
(78, 'Livro 35', 5, 5, 5, '5678901234', '2034-11-05'),
(79, 'Livro 36', 1, 1, 1, '6789012345', '2035-12-06'),
(80, 'Livro 37', 2, 2, 2, '7890123456', '2036-01-07'),
(81, 'Livro 38', 3, 3, 3, '8901234567', '2037-02-08'),
(82, 'Livro 39', 4, 4, 4, '9012345678', '2038-03-09'),
(83, 'Livro 40', 5, 5, 5, '0123456789', '2039-04-10'),
(84, 'Livro 41', 1, 1, 1, '1234509876', '2040-05-11'),
(85, 'Livro 42', 2, 2, 2, '2345609876', '2041-06-12'),
(86, 'Livro 43', 3, 3, 3, '3456709876', '2042-07-13'),
(87, 'Livro 44', 4, 4, 4, '4567809876', '2043-08-14'),
(88, 'Livro 45', 5, 5, 5, '5678909876', '2044-09-15'),
(89, 'Livro 46', 1, 1, 1, '6789009876', '2045-10-16'),
(90, 'Livro 47', 2, 2, 2, '7890109876', '2046-11-17'),
(91, 'Livro 48', 3, 3, 3, '8901209876', '2047-12-18'),
(92, 'Livro 49', 4, 4, 4, '9012309876', '2048-01-19'),
(93, 'Livro 50', 5, 5, 5, '0123409876', '2049-02-20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `membros`
--

CREATE TABLE `membros` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `membros`
--

INSERT INTO `membros` (`id`, `nome`, `endereco`, `data_nascimento`, `telefone`) VALUES
(1, 'Ana Silva', 'Rua das Flores, 123', '1990-05-15', '11987654321'),
(2, 'Bruno Souza', 'Avenida Paulista, 456', '1985-08-20', '11987654322'),
(3, 'Carla Dias', 'Praça da Sé, 789', '1979-12-30', '11987654323'),
(4, 'Diego Ferreira', 'Rua Augusta, 101', '1995-03-25', '11987654324'),
(5, 'Elaine Costa', 'Rua da Consolação, 202', '1988-11-05', '11987654325'),
(6, 'Fábio Lima', 'Rua Vergueiro, 303', '1982-07-19', '11987654326'),
(7, 'Gabriela Pinto', 'Rua dos Pinheiros, 404', '1991-04-23', '11987654327'),
(8, 'Hugo Martins', 'Rua Liberdade, 505', '1986-02-14', '11987654328'),
(9, 'Isabela Rocha', 'Rua Vila Mariana, 606', '1994-06-18', '11987654329'),
(10, 'João Alves', 'Rua do Paraíso, 707', '1983-11-21', '11987654330'),
(11, 'Karla Torres', 'Avenida Angélica, 808', '1990-01-12', '11987654331'),
(12, 'Lucas Mendes', 'Avenida Ipiranga, 909', '1987-09-09', '11987654332'),
(13, 'Maria Silva', 'Rua Haddock Lobo, 1000', '1992-05-02', '11987654333'),
(14, 'Nicolas Borges', 'Rua Frei Caneca, 1100', '1993-07-14', '11987654334'),
(15, 'Olivia Santos', 'Rua Bela Cintra, 1200', '1981-12-11', '11987654335'),
(16, 'Paulo Correia', 'Rua Pamplona, 1300', '1980-03-03', '11987654336'),
(17, 'Quintino Farias', 'Rua Oscar Freire, 1400', '1996-06-15', '11987654337'),
(18, 'Rita Sousa', 'Rua Augusta, 1500', '1989-10-20', '11987654338'),
(19, 'Silvio Santos', 'Rua Itapeva, 1600', '1984-08-28', '11987654339'),
(20, 'Tatiana Lima', 'Rua Haddock Lobo, 1700', '1991-01-07', '11987654340');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `editoras`
--
ALTER TABLE `editoras`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_membro` (`id_membro`),
  ADD KEY `id_livro` (`id_livro`),
  ADD KEY `idx_emprestimos_data_emprestimo` (`data_emprestimo`),
  ADD KEY `idx_emprestimos_data_devolucao` (`data_devolucao`);

--
-- Índices de tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_editora` (`id_editora`),
  ADD KEY `id_genero` (`id_genero`),
  ADD KEY `idx_livros_titulo` (`titulo`),
  ADD KEY `idx_livros_autor` (`id_autor`);

--
-- Índices de tabela `membros`
--
ALTER TABLE `membros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_membros_nome` (`nome`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autores`
--
ALTER TABLE `autores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `editoras`
--
ALTER TABLE `editoras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de tabela `membros`
--
ALTER TABLE `membros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD CONSTRAINT `emprestimos_ibfk_1` FOREIGN KEY (`id_membro`) REFERENCES `membros` (`id`),
  ADD CONSTRAINT `emprestimos_ibfk_2` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id`);

--
-- Restrições para tabelas `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id`),
  ADD CONSTRAINT `livros_ibfk_2` FOREIGN KEY (`id_editora`) REFERENCES `editoras` (`id`),
  ADD CONSTRAINT `livros_ibfk_3` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
