-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Ago-2021 às 01:35
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `celular` varchar(30) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `criadoEm` timestamp NOT NULL DEFAULT current_timestamp(),
  `cep` char(10) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `celular`, `dataNascimento`, `criadoEm`, `cep`, `numero`, `complemento`) VALUES
(1, 'Luiz Gonzaga', '9098098908', '1977-08-20', '2021-08-28 22:40:08', '60899098', '909', 'próximo ao metrô'),
(2, 'Fábio Junior', '988557788', '1986-12-12', '2021-08-28 22:40:08', '60111890', '4678', 'estação da luz'),
(3, 'Sicrana da Silva', '945569008', '1995-03-27', '2021-08-28 22:40:08', '60.899-098', '63', 'bloco C, apto 201'),
(4, 'Fulano de Souza', '999789097008', '1965-06-01', '2021-08-28 22:40:08', '60.899-098', '5462', ''),
(5, 'Mauricio Mattar', '912344528', '1955-04-25', '2021-08-28 22:40:08', '60878123', '543', 'ao lado do chico do caranguejo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `cnpj` varchar(30) DEFAULT NULL,
  `razao` varchar(200) DEFAULT NULL,
  `fantasia` varchar(200) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `inscricao` varchar(30) DEFAULT NULL,
  `cadastradoEm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`cnpj`, `razao`, `fantasia`, `telefone`, `estado`, `inscricao`, `cadastradoEm`) VALUES
('0001687688', 'Fulanim da Silva Produtos Alimentícios', 'Ki-Delícia', '345668809', 'Ceará', '389473948', '2021-08-28 23:18:53'),
('0001345356', 'Joinha Bezerra Bebidas Lácteas', 'Iogurte olho de grego', '324568709', 'Ceará', '284738924729', '2021-08-28 23:18:53'),
('0001390809', 'Geraldo Lins Panificadora', 'Padaria Alpha', '345263786', 'Paraíba', '984728947', '2021-08-28 23:18:53'),
('0001235434', 'Suplicy Arruda', 'Supla sucesso', '8748974099', 'São Paulo', '7842847236378', '2021-08-28 23:18:53'),
('0001098764', 'Deise Produtos Cosméticos', 'Lábios de mel', '345677980', 'Pernambuco', '38748937489', '2021-08-28 23:18:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `setor` varchar(200) DEFAULT NULL,
  `lote` varchar(60) DEFAULT NULL,
  `proximaremessa` date DEFAULT NULL,
  `criadoEm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `setor`, `lote`, `proximaremessa`, `criadoEm`) VALUES
(1, 'Qboa', 'Higiene e Limpeza', '723892789273928', '2021-09-20', '2021-08-28 22:55:38'),
(2, 'Iogurte Pura Vida', 'Laticínios', '69178136926', '2021-09-01', '2021-08-28 22:55:38'),
(3, 'Meu amiguinho feliz', 'Rações', '1322545', '2021-10-14', '2021-08-28 22:55:38'),
(4, 'Aveia em flocos Vó Joana', 'Cereais', '14315634263', '2021-11-03', '2021-08-28 22:55:38'),
(5, 'Sabonete toque de seda', 'Higiene e Limpeza', '132109123', '2021-12-28', '2021-08-28 22:55:38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `matricula` varchar(200) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `nivel` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`matricula`, `nome`, `nivel`) VALUES
('19', 'Ciclano Silva', 'administrador'),
('67', 'José do Crato', 'normal'),
('51', 'Raimundo Soldado', 'normal'),
('30', 'Benedito Maria', 'normal'),
('5', 'Enzo Valentino', 'basico');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` varchar(200) NOT NULL,
  `preco` double NOT NULL,
  `quantidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `preco`, `quantidade`) VALUES
('1', 3, 4),
('2', 2, 1),
('3', 5, 5),
('4', 9, 1),
('5', 1, 6);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
