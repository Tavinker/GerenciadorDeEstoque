-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/09/2023 às 00:23
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nome_categoria` varchar(100) NOT NULL,
  `dataCaptura` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `id_usuario`, `nome_categoria`, `dataCaptura`) VALUES
(13, 7, 'Consoles', '2023-09-20'),
(14, 7, 'Notebooks', '2023-09-20'),
(15, 7, 'Desktop', '2023-09-20'),
(16, 7, 'Smartphones', '2023-09-20'),
(17, 7, 'Periféricos', '2023-09-20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `cpf` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `id_usuario`, `nome`, `sobrenome`, `endereco`, `email`, `telefone`, `cpf`) VALUES
(8, 7, 'Allef', 'Castro', 'Rua Fake A', 'allef@email.com', '40028922', '1234567890'),
(9, 7, 'Maycon', 'Lima', 'Rua Fake B', 'maycon@email.com', '89224002', '0987654321'),
(10, 7, 'João', 'Da Silva', 'Rua Fake C', 'joao@email.com', '20092023', '1002003001');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id_fornecedor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `cpf` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id_fornecedor`, `id_usuario`, `nome`, `sobrenome`, `endereco`, `email`, `telefone`, `cpf`) VALUES
(4, 7, 'PC', 'Distribuidora', 'Rua Outro Mundo', 'atendimento@pcdistribuidora.com.br', '15981252525', '90080070012');

-- --------------------------------------------------------

--
-- Estrutura para tabela `imagens`
--

CREATE TABLE `imagens` (
  `id_imagem` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `dataUpload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `imagens`
--

INSERT INTO `imagens` (`id_imagem`, `id_categoria`, `nome`, `url`, `dataUpload`) VALUES
(10, 13, 'series-s.jpg', '../../arquivos/series-s.jpg', '2023-09-20'),
(11, 13, 'series-x.jpg', '../../arquivos/series-x.jpg', '2023-09-20'),
(12, 13, 'ps5.jpg', '../../arquivos/ps5.jpg', '2023-09-20'),
(13, 15, 'rtx4090-nvidia.jpg', '../../arquivos/rtx4090-nvidia.jpg', '2023-09-21'),
(14, 16, 'xiaomi-poco-x5-pro-5g-256gb-8gb.jpg', '../../arquivos/xiaomi-poco-x5-pro-5g-256gb-8gb.jpg', '2023-09-21'),
(15, 14, 'notebook-gamer-asus-rog-strix-i7.png', '../../arquivos/notebook-gamer-asus-rog-strix-i7.png', '2023-09-21'),
(16, 17, 'hyperx-cloud-stinger.jpg', '../../arquivos/hyperx-cloud-stinger.jpg', '2023-09-21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_imagem` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preco` float NOT NULL,
  `dataCaptura` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `id_categoria`, `id_imagem`, `id_usuario`, `nome`, `descricao`, `quantidade`, `preco`, `dataCaptura`) VALUES
(1, 13, 10, 7, 'Xbox Series S', 'SSD: 512GB | Ram: 10GB | Resolução: 1440p@120fps | CPU: AMD (customizado) octa-core | GPU: AMD (customizado) até 4 teraflops', 9, 2.087, '2023-09-20'),
(2, 13, 11, 7, 'Xbox Series X', 'SSD: 1TB | Ram: 16GB | Resolução: 4K@120fps | CPU: AMD (customizado) octa-core | GPU: AMD (customizado) até 12 teraflops', 10, 4.389, '2023-09-20'),
(3, 13, 12, 7, 'Playstation 5', 'SSD: 825GB | Ram: 16GB | Resolução: 4K(2160p)/HDR | CPU: AMD (customizado) | GPU: AMD (customizado)', 9, 4.184, '2023-09-20'),
(4, 15, 13, 7, 'RTX 4090', 'Clock do GPU: 2235 MHz | Ram: 24GB - GDDR6X | Chip: Ada Lovelace (AD102) | Clock: 21Gbps | DirectX: 12 Ultimate | TDP: 450 W ', 10, 16.999, '2023-09-21'),
(5, 16, 14, 7, 'POCO X5 Pro', 'Dual Sim | 8 Core 2.1 Ghz | 256GB Memória | Full HD | Camera 108Mpx | Display 6.67 2400x1080 Full HD Amoled Gorilaglass 120Hz | Android MIUI 14 | 162.91 x 76.03 x 7.9 mm | GPU Adreno 642L | 8GB Ram | ', 10, 1.899, '2023-09-21'),
(6, 14, 15, 7, 'Asus ROG Strix G16', 'Intel Core i9-13980HX de 13ª geração 2,2 GHz (36 MB cache, até 5,6 GHz, 24 núcleos: 8 P-cores e 16 E-cores) | GeForce RTX 4060 | IPS 16 polegadas Full HD+ 16:10 (1.920 x 1.200 pixels) 100% sRGB 165 Hz', 10, 11.599, '2023-09-21'),
(7, 17, 16, 7, 'HyperX Cloud Stinger', 'Conector 2,5mm | Frequência 50Hx - 18.000Hz | Sensibilidade 102dB | Driver 50mm | Comprimento do cabo 1,3m', 10, 258, '2023-09-21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `dataCaptura` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `user`, `email`, `senha`, `dataCaptura`) VALUES
(7, 'admin', 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '2018-05-17'),
(10, 'Gabriel Tavares', 'tavinker', 'gabriel@email.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2023-09-21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `preco` float NOT NULL,
  `quantidade` int(11) NOT NULL,
  `total_venda` float NOT NULL,
  `dataCompra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vendas`
--

INSERT INTO `vendas` (`id`, `id_venda`, `id_cliente`, `id_produto`, `id_usuario`, `preco`, `quantidade`, `total_venda`, `dataCompra`) VALUES
(5, 1, 8, 1, 7, 2.087, 1, 2.087, '2023-09-21'),
(6, 2, 10, 3, 7, 4.184, 1, 4.184, '2023-09-21');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id_fornecedor`);

--
-- Índices de tabela `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`id_imagem`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `id_imagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
