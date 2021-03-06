/*
 TURMA: INF3CM
 TEMA: LOJA DE BIJUTEIRIA
 EQUIPE: 01
  NOME: GIDEONI Nª10
  NOME: GUSTAVO Nª13
  NOME: IGOR Nª15
  NOME: PALOMA N°??
  NOME: REVERTON Nª27
*/
--DROP DATABASE ROSACHOC

CREATE DATABASE ROSACHOC
GO
USE [ROSACHOC]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Vendas__FK_Cod_P__5BE2A6F2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendas]'))
ALTER TABLE [dbo].[Vendas] DROP CONSTRAINT [FK__Vendas__FK_Cod_P__5BE2A6F2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Vendas__FK_Cod_P__02084FDA]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendas]'))
ALTER TABLE [dbo].[Vendas] DROP CONSTRAINT [FK__Vendas__FK_Cod_P__02084FDA]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Produto__FK_Cod___693CA210]') AND parent_object_id = OBJECT_ID(N'[dbo].[Produto]'))
ALTER TABLE [dbo].[Produto] DROP CONSTRAINT [FK__Produto__FK_Cod___693CA210]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Pedido__FK_Itens__5EBF139D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pedido]'))
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK__Pedido__FK_Itens__5EBF139D]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Pedido__FK_Cod_F__02FC7413]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pedido]'))
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK__Pedido__FK_Cod_F__02FC7413]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Pedido__FK_Cod_C__5FB337D6]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pedido]'))
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK__Pedido__FK_Cod_C__5FB337D6]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Itens_Ped__Fk_Co__7F2BE32F]') AND parent_object_id = OBJECT_ID(N'[dbo].[Itens_Pedidos]'))
ALTER TABLE [dbo].[Itens_Pedidos] DROP CONSTRAINT [FK__Itens_Ped__Fk_Co__7F2BE32F]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Itens_Ped__FK_Co__7E37BEF6]') AND parent_object_id = OBJECT_ID(N'[dbo].[Itens_Pedidos]'))
ALTER TABLE [dbo].[Itens_Pedidos] DROP CONSTRAINT [FK__Itens_Ped__FK_Co__7E37BEF6]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Funcionar__FK_Lo__778AC167]') AND parent_object_id = OBJECT_ID(N'[dbo].[Funcionario]'))
ALTER TABLE [dbo].[Funcionario] DROP CONSTRAINT [FK__Funcionar__FK_Lo__778AC167]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Funcionar__FK_Ca__76969D2E]') AND parent_object_id = OBJECT_ID(N'[dbo].[Funcionario]'))
ALTER TABLE [dbo].[Funcionario] DROP CONSTRAINT [FK__Funcionar__FK_Ca__76969D2E]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Funcionar__CEP_F__75A278F5]') AND parent_object_id = OBJECT_ID(N'[dbo].[Funcionario]'))
ALTER TABLE [dbo].[Funcionario] DROP CONSTRAINT [FK__Funcionar__CEP_F__75A278F5]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Fornece__Fk_Cod___7B5B524B]') AND parent_object_id = OBJECT_ID(N'[dbo].[Fornece]'))
ALTER TABLE [dbo].[Fornece] DROP CONSTRAINT [FK__Fornece__Fk_Cod___7B5B524B]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Fornece__Fk_Cod___4F7CD00D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Fornece]'))
ALTER TABLE [dbo].[Fornece] DROP CONSTRAINT [FK__Fornece__Fk_Cod___4F7CD00D]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Formato_P__Fk_Co__01142BA1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Formato_Pagamento]'))
ALTER TABLE [dbo].[Formato_Pagamento] DROP CONSTRAINT [FK__Formato_P__Fk_Co__01142BA1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Formato_P__Fk_Co__00200768]') AND parent_object_id = OBJECT_ID(N'[dbo].[Formato_Pagamento]'))
ALTER TABLE [dbo].[Formato_Pagamento] DROP CONSTRAINT [FK__Formato_P__Fk_Co__00200768]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cupom_Pro__Fk_Co__6EF57B66]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cupom_Produto]'))
ALTER TABLE [dbo].[Cupom_Produto] DROP CONSTRAINT [FK__Cupom_Pro__Fk_Co__6EF57B66]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cupom_Pro__Fk_Co__6E01572D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cupom_Produto]'))
ALTER TABLE [dbo].[Cupom_Produto] DROP CONSTRAINT [FK__Cupom_Pro__Fk_Co__6E01572D]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cupom_Cat__Fk_Co__6C190EBB]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cupom_Categoria]'))
ALTER TABLE [dbo].[Cupom_Categoria] DROP CONSTRAINT [FK__Cupom_Cat__Fk_Co__6C190EBB]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cupom_Cat__Fk_Co__6B24EA82]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cupom_Categoria]'))
ALTER TABLE [dbo].[Cupom_Categoria] DROP CONSTRAINT [FK__Cupom_Cat__Fk_Co__6B24EA82]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Contas_Pa__Func___7A672E12]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contas_Pagar]'))
ALTER TABLE [dbo].[Contas_Pagar] DROP CONSTRAINT [FK__Contas_Pa__Func___7A672E12]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cliente__FK_Cupo__7D439ABD]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK__Cliente__FK_Cupo__7D439ABD]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cliente__FK_Cli___534D60F1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK__Cliente__FK_Cli___534D60F1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cliente__CEP_Cli__7C4F7684]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK__Cliente__CEP_Cli__7C4F7684]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Produto__Ativo__68487DD7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Produto] DROP CONSTRAINT [DF__Produto__Ativo__68487DD7]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Logar__Ativo__4D94879B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Logar] DROP CONSTRAINT [DF__Logar__Ativo__4D94879B]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Funcionar__Ativo__74AE54BC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Funcionario] DROP CONSTRAINT [DF__Funcionar__Ativo__74AE54BC]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Fornecedo__Ativo__4AB81AF0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Fornecedor] DROP CONSTRAINT [DF__Fornecedo__Ativo__4AB81AF0]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Cupom__Ativo__656C112C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Cupom] DROP CONSTRAINT [DF__Cupom__Ativo__656C112C]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Cliente__Ativo__52593CB8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [DF__Cliente__Ativo__52593CB8]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Categoria__Ativo__628FA481]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Categoria] DROP CONSTRAINT [DF__Categoria__Ativo__628FA481]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Cargo__Ativo__71D1E811]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Cargo] DROP CONSTRAINT [DF__Cargo__Ativo__71D1E811]
END
GO
/****** Object:  Table [dbo].[Vendas]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendas]') AND type in (N'U'))
DROP TABLE [dbo].[Vendas]
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Produto]') AND type in (N'U'))
DROP TABLE [dbo].[Produto]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pedido]') AND type in (N'U'))
DROP TABLE [dbo].[Pedido]
GO
/****** Object:  Table [dbo].[Logar]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Logar]') AND type in (N'U'))
DROP TABLE [dbo].[Logar]
GO
/****** Object:  Table [dbo].[Itens_Pedidos]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itens_Pedidos]') AND type in (N'U'))
DROP TABLE [dbo].[Itens_Pedidos]
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Funcionario]') AND type in (N'U'))
DROP TABLE [dbo].[Funcionario]
GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Fornecedor]') AND type in (N'U'))
DROP TABLE [dbo].[Fornecedor]
GO
/****** Object:  Table [dbo].[Fornece]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Fornece]') AND type in (N'U'))
DROP TABLE [dbo].[Fornece]
GO
/****** Object:  Table [dbo].[Formato_Pagamento]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Formato_Pagamento]') AND type in (N'U'))
DROP TABLE [dbo].[Formato_Pagamento]
GO
/****** Object:  Table [dbo].[Cupom_Produto]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cupom_Produto]') AND type in (N'U'))
DROP TABLE [dbo].[Cupom_Produto]
GO
/****** Object:  Table [dbo].[Cupom_Categoria]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cupom_Categoria]') AND type in (N'U'))
DROP TABLE [dbo].[Cupom_Categoria]
GO
/****** Object:  Table [dbo].[Cupom]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cupom]') AND type in (N'U'))
DROP TABLE [dbo].[Cupom]
GO
/****** Object:  Table [dbo].[Contas_Pagar]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contas_Pagar]') AND type in (N'U'))
DROP TABLE [dbo].[Contas_Pagar]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[CEP]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CEP]') AND type in (N'U'))
DROP TABLE [dbo].[CEP]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categoria]') AND type in (N'U'))
DROP TABLE [dbo].[Categoria]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 14/04/2019 21:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cargo]') AND type in (N'U'))
DROP TABLE [dbo].[Cargo]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cargo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cargo](
	[Cod_Cargo] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Descricao] [varchar](100) NULL,
	[Ativo] [int] NULL,
	[Salario] decimal(10,2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categoria]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categoria](
	[Cod_Cat] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descricao] [varchar](100) NULL,
	[Ativo] [Int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Cat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CEP]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CEP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CEP](
	[CEP] [char](10) NOT NULL,
	[UF] [char](2) NULL,
	[Logradouro] [varchar](100) NULL,
	[Cidade] [varchar](100) NULL,
	[Bairro] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CEP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO 
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cliente](
	[Cod_Cli] [int] IDENTITY(1,1) NOT NULL,
	[Nome_Cli] [varchar](50) NOT NULL,
	[Email_Cli] [varchar](50) NULL,
	[Dt_Nasc_Cli] [date] NULL,
	[Sexo_Cli] [char](12) NULL,
	[CPF_Cli] [char](11) NOT NULL UNIQUE,
	[Foto_Cli] [varchar](max) NULL,
	[Tel_Cli] [char](10) NULL,
	[Cel_Cli] [char](11) NULL,
	[CEP_Cli] [char](8) NOT NULL,
	[Complemento_Cli] [varchar](25) NULL,
	[Numero_Cli] [int] NULL,
	[FK_Cupom] [int] NULL,
	[FK_Cli_Login] [int] NULL,
	[Ativo] [int] NULL,
	[Tipo_Cadastro][char](5) not null,
	[Senha_Cliente][varchar](50),
	[Data_Cadastro][datetime]
PRIMARY KEY CLUSTERED 
(
	[Cod_Cli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contas_Pagar]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contas_Pagar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contas_Pagar](
	[Cod_Conta] [int] IDENTITY(1,1) NOT NULL,
	[Nome_Conta] [varchar](50) NOT NULL,
	[Descricao] [varchar](50) NULL,
	[Valor] decimal(10,2) NOT NULL,
	[Vencimento] [date] NOT NULL,
	[Inclusao] [date] NULL,
	[Dt_Pagamento] [date] NULL,
	[Func_Responsavel] [int] NOT NULL,
	[Ativo] [int] DEFAULT 1 NOT NULL
PRIMARY KEY CLUSTERED 
(
	[Cod_Conta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cupom]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cupom]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cupom](
	[Cod_Cupom] [int] IDENTITY(1,1) NOT NULL,
	[Qr_Cod] [varchar](100) NOT NULL,
	[Desconto] decimal(10,2) NOT NULL,
	[Dt_Validade] [date] NULL,
	[Ativo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Cupom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cupom_Categoria]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cupom_Categoria]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cupom_Categoria](
	[Fk_Cod_Cupom] [int] NOT NULL,
	[Fk_Cod_Cat] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Cupom_Produto]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cupom_Produto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cupom_Produto](
	[Fk_Cod_Cupom] [int] NOT NULL,
	[Fk_Cod_Prod] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Formato_Pagamento]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Formato_Pagamento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Formato_Pagamento](
	[Cod_PGMT] [int] IDENTITY(1,1) NOT NULL,
	[Dinheiro] decimal(10,2) NULL,
	[Parcela] [int] NULL,
	[Cheque] decimal(10,2) NULL,
	[Cartao_Credito] decimal(10,2) NULL,
	[Cartao_Debito] decimal(10,2) NULL,
	[Fk_Cod_Pedido] [int] NULL,
	[Fk_Cod_Vendas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_PGMT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Fornece]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Fornece]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Fornece](
	[Fk_Cod_Prod] [int] NOT NULL,
	[Fk_Cod_Forn] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Fornecedor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Fornecedor](
	[Cod_Forn] [int] IDENTITY(1,1) NOT NULL,
	[Nome_Fantasia] [varchar](50) NULL,
	[Razao_Social] [varchar](50) NOT NULL,
	[CNPJ] [char](14) NOT NULL,
	[Cel_Forn] [char](11) NULL,
	[Tel_Forn] [char](10) NULL,
	[Email_Forn] [varchar](50) NULL,
	[Website] [varchar](50) NULL,
	[Dt_Cadastro] [date] NOT NULL,
	[Ativo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Forn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Funcionario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Funcionario](
	[Cod_Func] [int] IDENTITY(1,1) NOT NULL,
	[Nome_Func] [varchar](50) NOT NULL,
	[CPF_Func] [char](11) NOT NULL,
	[Sexo_Func] [char](12) NULL,
	[Dt_Nasc_Func] [date] NULL,
	[Tel_Func] [char](10) NULL,
	[Cel_Func] [char](11) NULL,
	[Email_Func] [varchar](50) NULL,
	[CEP_Func] [char](8) NOT NULL,
	[Complemento_Func] [varchar](25) NULL,
	[Numero_Func] [int] NULL,
	[FK_Cargo] [int] NULL,
	[FK_Logar] [int] NULL,
	[Ativo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Func] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Itens_Pedidos]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itens_Pedidos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Itens_Pedidos](
	[Cod_Itens] [int] IDENTITY(1,1) NOT NULL,
	[FK_Cod_Prod] [int],
	[Fk_Cod_Pedido] [int],
	[Quantidade] [int] null,
	[Preco_Unitario] [decimal](10,2),
	[Sub_Total] [decimal](10,2),
	[Fk_Cupom] [int] null,
	[Ativo] [int] default 1
	FOREIGN KEY (Fk_Cupom) REFERENCES CUPOM(COD_CUPOM)
PRIMARY KEY CLUSTERED 
(
	[Cod_Itens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO








/****** Object:  Table [dbo].[Logar]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Logar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Logar]( 
	[Cod_Login] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Nome_Login] [varchar](30) NOT NULL,
	[Senha] [varchar](30) NOT NULL,
	[Nivel_Acesso] [int] NULL,
	[Ativo] [int] NULL,
    [Fk_Funcionario] [int] FOREIGN KEY REFERENCES FUNCIONARIO,
	[Fk_Cliente] [int],
	FOREIGN KEY (Fk_Cliente) REFERENCES CLIENTE(Cod_Cli)
)
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pedido]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pedido](
	[Cod_Pedido] [int] NOT NULL,
	[FK_Cod_Func] [int] NULL,
	[FK_Cod_Cli] [int] NULL,
	[Valor_Total] decimal(10,2) NOT NULL,
	[Desconto] decimal(10,2) NULL,
	[Porcentagem] [int] NULL,
	[Dt_Pedido] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Produto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Produto](
	[Cod_Prod] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Barras] [varchar](255) NULL,
	[Nome_Prod] [varchar](50) NOT NULL,
	[Preco_Compra] decimal(10,2) NULL,
	[Marca] [varchar](25) NULL,
	[Descri_Prod] [varchar](200) NULL,
	[Imagem] [varchar](max) NULL,
	[Qnt_Estoque] [int] NOT NULL,
	[Qnt_Min] [int] NOT NULL,
	[Qnt_Max] [int] NOT NULL,
	[Preco_Atual] decimal(10,2) NOT NULL,
	[FK_Cod_Cat] [int] NULL,
	[Ativo] [int] NULL,
	[Data_Cadastro][datetime] not null
PRIMARY KEY CLUSTERED 
(
	[Cod_Prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Vendas]    Script Date: 14/04/2019 21:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Vendas](
	[Cod_Vendas] [int] IDENTITY(1,1) NOT NULL,
	[FK_Cod_Pedidos] [int] NOT NULL,
	[FK_Cod_PGMT] [int] NOT NULL,
	[Data_Venda] DATETIME NOT NULL,
	
PRIMARY KEY CLUSTERED 
(
	[Cod_Vendas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Cargo__Ativo__71D1E811]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Cargo] ADD  DEFAULT ((1)) FOR [Ativo]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Categoria__Ativo__628FA481]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Categoria] ADD  DEFAULT ((1)) FOR [Ativo]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Cliente__Ativo__52593CB8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((1)) FOR [Ativo]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Cupom__Ativo__656C112C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Cupom] ADD  DEFAULT ((1)) FOR [Ativo]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Fornecedo__Ativo__4AB81AF0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Fornecedor] ADD  DEFAULT ((1)) FOR [Ativo]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Funcionar__Ativo__74AE54BC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Funcionario] ADD  DEFAULT ((1)) FOR [Ativo]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Logar__Ativo__4D94879B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Logar] ADD  DEFAULT ((1)) FOR [Ativo]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Produto__Ativo__68487DD7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Produto] ADD  DEFAULT ((1)) FOR [Ativo]
END
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cliente__FK_Cli___534D60F1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([FK_Cli_Login])
REFERENCES [dbo].[Logar] ([Cod_Login])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cliente__FK_Cupo__7D439ABD]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cliente]'))
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([FK_Cupom])
REFERENCES [dbo].[Cupom] ([Cod_Cupom])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Contas_Pa__Func___7A672E12]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contas_Pagar]'))
ALTER TABLE [dbo].[Contas_Pagar]  WITH CHECK ADD FOREIGN KEY([Func_Responsavel])
REFERENCES [dbo].[Funcionario] ([Cod_Func])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cupom_Cat__Fk_Co__6B24EA82]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cupom_Categoria]'))
ALTER TABLE [dbo].[Cupom_Categoria]  WITH CHECK ADD FOREIGN KEY([Fk_Cod_Cupom])
REFERENCES [dbo].[Cupom] ([Cod_Cupom])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cupom_Cat__Fk_Co__6C190EBB]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cupom_Categoria]'))
ALTER TABLE [dbo].[Cupom_Categoria]  WITH CHECK ADD FOREIGN KEY([Fk_Cod_Cat])
REFERENCES [dbo].[Categoria] ([Cod_Cat])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cupom_Pro__Fk_Co__6E01572D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cupom_Produto]'))
ALTER TABLE [dbo].[Cupom_Produto]  WITH CHECK ADD FOREIGN KEY([Fk_Cod_Cupom])
REFERENCES [dbo].[Cupom] ([Cod_Cupom])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cupom_Pro__Fk_Co__6EF57B66]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cupom_Produto]'))
ALTER TABLE [dbo].[Cupom_Produto]  WITH CHECK ADD FOREIGN KEY([Fk_Cod_Prod])
REFERENCES [dbo].[Produto] ([Cod_Prod])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Formato_P__Fk_Co__00200768]') AND parent_object_id = OBJECT_ID(N'[dbo].[Formato_Pagamento]'))
ALTER TABLE [dbo].[Formato_Pagamento]  WITH CHECK ADD FOREIGN KEY([Fk_Cod_Pedido])
REFERENCES [dbo].[Pedido] ([Cod_Pedido])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Formato_P__Fk_Co__01142BA1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Formato_Pagamento]'))
ALTER TABLE [dbo].[Formato_Pagamento]  WITH CHECK ADD FOREIGN KEY([Fk_Cod_Vendas])
REFERENCES [dbo].[Vendas] ([Cod_Vendas])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Fornece__Fk_Cod___4F7CD00D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Fornece]'))
ALTER TABLE [dbo].[Fornece]  WITH CHECK ADD FOREIGN KEY([Fk_Cod_Forn])
REFERENCES [dbo].[Fornecedor] ([Cod_Forn])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Fornece__Fk_Cod___7B5B524B]') AND parent_object_id = OBJECT_ID(N'[dbo].[Fornece]'))
ALTER TABLE [dbo].[Fornece]  WITH CHECK ADD FOREIGN KEY([Fk_Cod_Prod])
REFERENCES [dbo].[Produto] ([Cod_Prod])
GO


IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Funcionar__FK_Lo__778AC167]') AND parent_object_id = OBJECT_ID(N'[dbo].[Funcionario]'))
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD FOREIGN KEY([FK_Logar])
REFERENCES [dbo].[Logar] ([Cod_Login])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Itens_Ped__FK_Co__7E37BEF6]') AND parent_object_id = OBJECT_ID(N'[dbo].[Itens_Pedidos]'))
ALTER TABLE [dbo].[Itens_Pedidos]  WITH CHECK ADD FOREIGN KEY([FK_Cod_Prod])
REFERENCES [dbo].[Produto] ([Cod_Prod])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Itens_Ped__Fk_Co__7F2BE32F]') AND parent_object_id = OBJECT_ID(N'[dbo].[Itens_Pedidos]'))
ALTER TABLE [dbo].[Itens_Pedidos]  WITH CHECK ADD FOREIGN KEY([Fk_Cod_Pedido])
REFERENCES [dbo].[Pedido] ([Cod_Pedido])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Pedido__FK_Cod_C__5FB337D6]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pedido]'))
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([FK_Cod_Cli])
REFERENCES [dbo].[Cliente] ([Cod_Cli])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Pedido__FK_Cod_F__02FC7413]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pedido]'))
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([FK_Cod_Func])
REFERENCES [dbo].[Funcionario] ([Cod_Func])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Produto__FK_Cod___693CA210]') AND parent_object_id = OBJECT_ID(N'[dbo].[Produto]'))
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([FK_Cod_Cat])
REFERENCES [dbo].[Categoria] ([Cod_Cat])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Vendas__FK_Cod_P__02084FDA]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendas]'))
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD FOREIGN KEY([FK_Cod_Pedidos])
REFERENCES [dbo].[Pedido] ([Cod_Pedido])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Vendas__FK_Cod_P__5BE2A6F2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendas]'))
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD FOREIGN KEY([FK_Cod_PGMT])
REFERENCES [dbo].[Formato_Pagamento] ([Cod_PGMT])
GO

CREATE TABLE Cupom_Cliente(
FK_CUPOM INT,
FK_COD_CLI INT

FOREIGN KEY (FK_CUPOM) REFERENCES CUPOM(COD_CUPOM),
FOREIGN KEY (FK_COD_CLI) REFERENCES CLIENTE(COD_CLI)
)
GO

CREATE TABLE Fale_Conosco
(
	--WEB
	CODMSG		  INT IDENTITY PRIMARY KEY,
	FK_COD_CLI	  INT  NOT NULL,
	MSG			  VARCHAR(400) NOT NULL,
	DATA_MSG	  DATETIME	   NOT NULL,
	STATUS_MSG	  VARCHAR(20)  NOT NULL,

	--DESKTOP
	FK_COD_FUNC		  INT,
	DATA_RESP_MSG DATETIME	   NULL,
	RESP_MSG	  VARCHAR(400) NULL

	FOREIGN KEY (FK_COD_CLI) REFERENCES CLIENTE(COD_CLI),
	FOREIGN KEY (FK_COD_FUNC) REFERENCES FUNCIONARIO(COD_FUNC)
)	
GO

CREATE TABLE FAVORITOS_CLIENTE(
FK_COD_CLI INT,
FK_COD_PROD INT,
ATIVO INT

	FOREIGN KEY (FK_COD_CLI) REFERENCES CLIENTE(COD_CLI),
	FOREIGN KEY (FK_COD_PROD) REFERENCES PRODUTO(COD_PROD)
)
GO

CREATE TABLE LISTA_DESEJO(
FK_COD_CLI INT,
FK_COD_PROD INT,
ATIVO INT

	FOREIGN KEY (FK_COD_CLI) REFERENCES CLIENTE(COD_CLI),
	FOREIGN KEY (FK_COD_PROD) REFERENCES PRODUTO(COD_PROD)
)
GO