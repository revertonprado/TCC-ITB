USE ROSACHOC
/*CLIENTE*/
GO
CREATE PROCEDURE SP_SELECT_CLIENTE_ATIVO
@ATIVO INT
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT CLI.COD_CLI AS 'CÓDIGO',CLI.NOME_CLI AS 'NOME',CLI.EMAIL_CLI AS 'EMAIL',CLI.DT_NASC_CLI AS 'DATA DE NASCIMENTO',CLI.SEXO_CLI AS 'SEXO',CLI.CPF_CLI AS 'CPF',CLI.TEL_CLI AS 'TELEFONE',CLI.CEL_CLI AS 'CELULAR',CLI.CEP_CLI AS 'CEP', C.UF AS 'ESTADO', C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.Logradouro AS 'LOGRADOURO',COMPLEMENTO_CLI AS 'COMPLEMENTO',NUMERO_CLI AS 'N° CASA',DATA_CADASTRO AS 'DATA DE CADASTRO',ATIVO FROM Cliente Cli
		INNER JOIN CEP C ON CLI.CEP_Cli = C.CEP
		WHERE Ativo = 0
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT CLI.COD_CLI AS 'CÓDIGO',CLI.NOME_CLI AS 'NOME',CLI.EMAIL_CLI AS 'EMAIL',CLI.DT_NASC_CLI AS 'DATA DE NASCIMENTO',CLI.SEXO_CLI AS 'SEXO',CLI.CPF_CLI AS 'CPF',CLI.TEL_CLI AS 'TELEFONE',CLI.CEL_CLI AS 'CELULAR',CLI.CEP_CLI AS 'CEP', C.UF AS 'ESTADO', C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.Logradouro AS 'LOGRADOURO',COMPLEMENTO_CLI AS 'COMPLEMENTO',NUMERO_CLI AS 'N° CASA',DATA_CADASTRO AS 'DATA DE CADASTRO',ATIVO FROM Cliente Cli
		INNER JOIN CEP C ON CLI.CEP_Cli = C.CEP
		WHERE Ativo = 1
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT CLI.COD_CLI AS 'CÓDIGO',CLI.NOME_CLI AS 'NOME',CLI.EMAIL_CLI AS 'EMAIL',CLI.DT_NASC_CLI AS 'DATA DE NASCIMENTO',CLI.SEXO_CLI AS 'SEXO',CLI.CPF_CLI AS 'CPF',CLI.TEL_CLI AS 'TELEFONE',CLI.CEL_CLI AS 'CELULAR',CLI.CEP_CLI AS 'CEP', C.UF AS 'ESTADO', C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.Logradouro AS 'LOGRADOURO',COMPLEMENTO_CLI AS 'COMPLEMENTO',NUMERO_CLI AS 'N° CASA',DATA_CADASTRO AS 'DATA DE CADASTRO',ATIVO FROM Cliente Cli
		INNER JOIN CEP C ON CLI.CEP_Cli = C.CEP
	END
GO

CREATE PROCEDURE SP_SELECT_CLIENTE_CODIGO
@ATIVO INT,
@COD INT
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT CLI.COD_CLI AS 'CÓDIGO',CLI.NOME_CLI AS 'NOME',CLI.EMAIL_CLI AS 'EMAIL',CLI.DT_NASC_CLI AS 'DATA DE NASCIMENTO',CLI.SEXO_CLI AS 'SEXO',CLI.CPF_CLI AS 'CPF',CLI.TEL_CLI AS 'TELEFONE',CLI.CEL_CLI AS 'CELULAR',CLI.CEP_CLI AS 'CEP', C.UF AS 'ESTADO', C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.Logradouro AS 'LOGRADOURO',COMPLEMENTO_CLI AS 'COMPLEMENTO',NUMERO_CLI AS 'N° CASA',DATA_CADASTRO AS 'DATA DE CADASTRO',ATIVO FROM Cliente Cli
		INNER JOIN CEP C ON CLI.CEP_Cli = C.CEP 
		WHERE Ativo = 0 AND CLI.Cod_Cli = @COD
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT CLI.COD_CLI AS 'CÓDIGO',CLI.NOME_CLI AS 'NOME',CLI.EMAIL_CLI AS 'EMAIL',CLI.DT_NASC_CLI AS 'DATA DE NASCIMENTO',CLI.SEXO_CLI AS 'SEXO',CLI.CPF_CLI AS 'CPF',CLI.TEL_CLI AS 'TELEFONE',CLI.CEL_CLI AS 'CELULAR',CLI.CEP_CLI AS 'CEP', C.UF AS 'ESTADO', C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.Logradouro AS 'LOGRADOURO',COMPLEMENTO_CLI AS 'COMPLEMENTO',NUMERO_CLI AS 'N° CASA',DATA_CADASTRO AS 'DATA DE CADASTRO',ATIVO FROM Cliente Cli
		INNER JOIN CEP C ON CLI.CEP_Cli = C.CEP 
		WHERE Ativo = 1 AND CLI.Cod_Cli = @COD
	END
	IF(@ATIVO) = 2
	BEGIN
		SELECT CLI.COD_CLI AS 'CÓDIGO',CLI.NOME_CLI AS 'NOME',CLI.EMAIL_CLI AS 'EMAIL',CLI.DT_NASC_CLI AS 'DATA DE NASCIMENTO',CLI.SEXO_CLI AS 'SEXO',CLI.CPF_CLI AS 'CPF',CLI.TEL_CLI AS 'TELEFONE',CLI.CEL_CLI AS 'CELULAR',CLI.CEP_CLI AS 'CEP', C.UF AS 'ESTADO', C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.Logradouro AS 'LOGRADOURO',COMPLEMENTO_CLI AS 'COMPLEMENTO',NUMERO_CLI AS 'N° CASA',DATA_CADASTRO AS 'DATA DE CADASTRO',ATIVO FROM Cliente Cli
		INNER JOIN CEP C ON CLI.CEP_Cli = C.CEP 
		WHERE CLI.Cod_Cli = @COD
	END
GO

CREATE PROCEDURE SP_SELECT_CLIENTE_NOME
@ATIVO INT,
@NOME VARCHAR(50)
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT CLI.COD_CLI AS 'CÓDIGO',CLI.NOME_CLI AS 'NOME',CLI.EMAIL_CLI AS 'EMAIL',CLI.DT_NASC_CLI AS 'DATA DE NASCIMENTO',CLI.SEXO_CLI AS 'SEXO',CLI.CPF_CLI AS 'CPF',CLI.TEL_CLI AS 'TELEFONE',CLI.CEL_CLI AS 'CELULAR',CLI.CEP_CLI AS 'CEP', C.UF AS 'ESTADO', C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.Logradouro AS 'LOGRADOURO',COMPLEMENTO_CLI AS 'COMPLEMENTO',NUMERO_CLI AS 'N° CASA',DATA_CADASTRO AS 'DATA DE CADASTRO',ATIVO FROM Cliente Cli
		INNER JOIN CEP C ON CLI.CEP_Cli = C.CEP 
		WHERE Ativo = 0 AND CLI.Nome_Cli LIKE @NOME
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT CLI.COD_CLI AS 'CÓDIGO',CLI.NOME_CLI AS 'NOME',CLI.EMAIL_CLI AS 'EMAIL',CLI.DT_NASC_CLI AS 'DATA DE NASCIMENTO',CLI.SEXO_CLI AS 'SEXO',CLI.CPF_CLI AS 'CPF',CLI.TEL_CLI AS 'TELEFONE',CLI.CEL_CLI AS 'CELULAR',CLI.CEP_CLI AS 'CEP', C.UF AS 'ESTADO', C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.Logradouro AS 'LOGRADOURO',COMPLEMENTO_CLI AS 'COMPLEMENTO',NUMERO_CLI AS 'N° CASA',DATA_CADASTRO AS 'DATA DE CADASTRO',ATIVO FROM Cliente Cli
		INNER JOIN CEP C ON CLI.CEP_Cli = C.CEP 
		WHERE Ativo = 1 AND CLI.Nome_Cli LIKE @NOME
	END
	IF(@ATIVO) = 2
	BEGIN
		SELECT CLI.COD_CLI AS 'CÓDIGO',CLI.NOME_CLI AS 'NOME',CLI.EMAIL_CLI AS 'EMAIL',CLI.DT_NASC_CLI AS 'DATA DE NASCIMENTO',CLI.SEXO_CLI AS 'SEXO',CLI.CPF_CLI AS 'CPF',CLI.TEL_CLI AS 'TELEFONE',CLI.CEL_CLI AS 'CELULAR',CLI.CEP_CLI AS 'CEP', C.UF AS 'ESTADO', C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.Logradouro AS 'LOGRADOURO',COMPLEMENTO_CLI AS 'COMPLEMENTO',NUMERO_CLI AS 'N° CASA',DATA_CADASTRO AS 'DATA DE CADASTRO',ATIVO FROM Cliente Cli
		INNER JOIN CEP C ON CLI.CEP_Cli = C.CEP 
		WHERE CLI.Nome_Cli LIKE @NOME
	END
GO

CREATE PROCEDURE SP_SELECT_CLIENTE_CPF
@ATIVO INT,
@CPF CHAR(11)
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT CLI.COD_CLI AS 'CÓDIGO',CLI.NOME_CLI AS 'NOME',CLI.EMAIL_CLI AS 'EMAIL',CLI.DT_NASC_CLI AS 'DATA DE NASCIMENTO',CLI.SEXO_CLI AS 'SEXO',CLI.CPF_CLI AS 'CPF',CLI.TEL_CLI AS 'TELEFONE',CLI.CEL_CLI AS 'CELULAR',CLI.CEP_CLI AS 'CEP', C.UF AS 'ESTADO', C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.Logradouro AS 'LOGRADOURO',COMPLEMENTO_CLI AS 'COMPLEMENTO',NUMERO_CLI AS 'N° CASA',DATA_CADASTRO AS 'DATA DE CADASTRO',ATIVO FROM Cliente Cli
		INNER JOIN CEP C ON CLI.CEP_Cli = C.CEP 
		WHERE Ativo = 0 AND CLI.CPF_Cli = @CPF
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT CLI.COD_CLI AS 'CÓDIGO',CLI.NOME_CLI AS 'NOME',CLI.EMAIL_CLI AS 'EMAIL',CLI.DT_NASC_CLI AS 'DATA DE NASCIMENTO',CLI.SEXO_CLI AS 'SEXO',CLI.CPF_CLI AS 'CPF',CLI.TEL_CLI AS 'TELEFONE',CLI.CEL_CLI AS 'CELULAR',CLI.CEP_CLI AS 'CEP', C.UF AS 'ESTADO', C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.Logradouro AS 'LOGRADOURO',COMPLEMENTO_CLI AS 'COMPLEMENTO',NUMERO_CLI AS 'N° CASA',DATA_CADASTRO AS 'DATA DE CADASTRO',ATIVO FROM Cliente Cli
		INNER JOIN CEP C ON CLI.CEP_Cli = C.CEP 
		WHERE Ativo = 1 AND CLI.CPF_Cli = @CPF
	END
	IF(@ATIVO) = 2
	BEGIN
		SELECT CLI.COD_CLI AS 'CÓDIGO',CLI.NOME_CLI AS 'NOME',CLI.EMAIL_CLI AS 'EMAIL',CLI.DT_NASC_CLI AS 'DATA DE NASCIMENTO',CLI.SEXO_CLI AS 'SEXO',CLI.CPF_CLI AS 'CPF',CLI.TEL_CLI AS 'TELEFONE',CLI.CEL_CLI AS 'CELULAR',CLI.CEP_CLI AS 'CEP', C.UF AS 'ESTADO', C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.Logradouro AS 'LOGRADOURO',COMPLEMENTO_CLI AS 'COMPLEMENTO',NUMERO_CLI AS 'N° CASA',DATA_CADASTRO AS 'DATA DE CADASTRO',ATIVO FROM Cliente Cli
		INNER JOIN CEP C ON CLI.CEP_Cli = C.CEP 
		WHERE CLI.CPF_Cli = @CPF
	END
GO
/*FUNCIONARIO*/
CREATE PROCEDURE SP_SELECT_FUNCIONARIO_ATIVO
@ATIVO INT
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT FUNC.COD_FUNC AS 'CÓDIGO', FUNC.Nome_Func AS 'NOME',FUNC.CPF_Func AS 'CPF',FUNC.Sexo_Func AS 'SEXO',FUNC.Dt_Nasc_Func AS 'DATA DE NASCIMENTO',FUNC.Tel_Func AS 'TELEFONE',FUNC.Cel_Func AS 'CELULAR',FUNC.Email_Func AS 'EMAIL',FUNC.CEP_Func AS 'CEP',C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.UF AS 'ESTADO', C.Logradouro AS 'LOGRADOURO',FUNC.Complemento_Func AS 'COMPLEMENTO',FUNC.Numero_Func AS 'N° CASA',CAR.Nome AS 'CARGO', CAR.Salario AS 'SALARIO', FUNC.Ativo AS 'ATIVO' FROM Funcionario FUNC 
		INNER JOIN CEP C ON FUNC.CEP_Func = C.CEP
		INNER JOIN Cargo CAR ON FK_Cargo = Cod_Cargo
		WHERE FUNC.Ativo = 0
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT FUNC.COD_FUNC AS 'CÓDIGO', FUNC.Nome_Func AS 'NOME',FUNC.CPF_Func AS 'CPF',FUNC.Sexo_Func AS 'SEXO',FUNC.Dt_Nasc_Func AS 'DATA DE NASCIMENTO',FUNC.Tel_Func AS 'TELEFONE',FUNC.Cel_Func AS 'CELULAR',FUNC.Email_Func AS 'EMAIL',FUNC.CEP_Func AS 'CEP',C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.UF AS 'ESTADO', C.Logradouro AS 'LOGRADOURO',FUNC.Complemento_Func AS 'COMPLEMENTO',FUNC.Numero_Func AS 'N° CASA',CAR.Nome AS 'CARGO', CAR.Salario AS 'SALARIO', FUNC.Ativo AS 'ATIVO' FROM Funcionario FUNC 
		INNER JOIN CEP C ON FUNC.CEP_Func = C.CEP
		INNER JOIN Cargo CAR ON FK_Cargo = Cod_Cargo
		WHERE FUNC.Ativo = 1
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT FUNC.COD_FUNC AS 'CÓDIGO', FUNC.Nome_Func AS 'NOME',FUNC.CPF_Func AS 'CPF',FUNC.Sexo_Func AS 'SEXO',FUNC.Dt_Nasc_Func AS 'DATA DE NASCIMENTO',FUNC.Tel_Func AS 'TELEFONE',FUNC.Cel_Func AS 'CELULAR',FUNC.Email_Func AS 'EMAIL',FUNC.CEP_Func AS 'CEP',C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.UF AS 'ESTADO', C.Logradouro AS 'LOGRADOURO',FUNC.Complemento_Func AS 'COMPLEMENTO',FUNC.Numero_Func AS 'N° CASA',CAR.Nome AS 'CARGO', CAR.Salario AS 'SALARIO', FUNC.Ativo AS 'ATIVO' FROM Funcionario FUNC 
		INNER JOIN CEP C ON FUNC.CEP_Func = C.CEP
		INNER JOIN Cargo CAR ON FK_Cargo = Cod_Cargo
	END
GO

CREATE PROCEDURE SP_SELECT_FUNCIONARIO_CODIGO
@ATIVO INT,
@COD INT
AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT FUNC.COD_FUNC AS 'CÓDIGO', FUNC.Nome_Func AS 'NOME',FUNC.CPF_Func AS 'CPF',FUNC.Sexo_Func AS 'SEXO',FUNC.Dt_Nasc_Func AS 'DATA DE NASCIMENTO',FUNC.Tel_Func AS 'TELEFONE',FUNC.Cel_Func AS 'CELULAR',FUNC.Email_Func AS 'EMAIL',FUNC.CEP_Func AS 'CEP',C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.UF AS 'ESTADO', C.Logradouro AS 'LOGRADOURO',FUNC.Complemento_Func AS 'COMPLEMENTO',FUNC.Numero_Func AS 'N° CASA',CAR.Nome AS 'CARGO', CAR.Salario AS 'SALARIO', FUNC.Ativo AS 'ATIVO' FROM Funcionario FUNC 
		INNER JOIN CEP C ON FUNC.CEP_Func = C.CEP
		INNER JOIN Cargo CAR ON FK_Cargo = Cod_Cargo
		WHERE FUNC.Ativo = 0 AND FUNC.Cod_Func = @COD
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT FUNC.COD_FUNC AS 'CÓDIGO', FUNC.Nome_Func AS 'NOME',FUNC.CPF_Func AS 'CPF',FUNC.Sexo_Func AS 'SEXO',FUNC.Dt_Nasc_Func AS 'DATA DE NASCIMENTO',FUNC.Tel_Func AS 'TELEFONE',FUNC.Cel_Func AS 'CELULAR',FUNC.Email_Func AS 'EMAIL',FUNC.CEP_Func AS 'CEP',C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.UF AS 'ESTADO', C.Logradouro AS 'LOGRADOURO',FUNC.Complemento_Func AS 'COMPLEMENTO',FUNC.Numero_Func AS 'N° CASA',CAR.Nome AS 'CARGO', CAR.Salario AS 'SALARIO', FUNC.Ativo AS 'ATIVO' FROM Funcionario FUNC 
		INNER JOIN CEP C ON FUNC.CEP_Func = C.CEP
		INNER JOIN Cargo CAR ON FK_Cargo = Cod_Cargo
		WHERE FUNC.Ativo = 1 AND FUNC.Cod_Func = @COD
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT FUNC.COD_FUNC AS 'CÓDIGO', FUNC.Nome_Func AS 'NOME',FUNC.CPF_Func AS 'CPF',FUNC.Sexo_Func AS 'SEXO',FUNC.Dt_Nasc_Func AS 'DATA DE NASCIMENTO',FUNC.Tel_Func AS 'TELEFONE',FUNC.Cel_Func AS 'CELULAR',FUNC.Email_Func AS 'EMAIL',FUNC.CEP_Func AS 'CEP',C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.UF AS 'ESTADO', C.Logradouro AS 'LOGRADOURO',FUNC.Complemento_Func AS 'COMPLEMENTO',FUNC.Numero_Func AS 'N° CASA',CAR.Nome AS 'CARGO', CAR.Salario AS 'SALARIO', FUNC.Ativo AS 'ATIVO' FROM Funcionario FUNC 
		INNER JOIN CEP C ON FUNC.CEP_Func = C.CEP
		INNER JOIN Cargo CAR ON FK_Cargo = Cod_Cargo
		WHERE FUNC.Cod_Func = @COD
	END
GO

CREATE PROCEDURE SP_SELECT_FUNCIONARIO_NOME
@ATIVO INT,
@NOME VARCHAR(50)
AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT FUNC.COD_FUNC AS 'CÓDIGO', FUNC.Nome_Func AS 'NOME',FUNC.CPF_Func AS 'CPF',FUNC.Sexo_Func AS 'SEXO',FUNC.Dt_Nasc_Func AS 'DATA DE NASCIMENTO',FUNC.Tel_Func AS 'TELEFONE',FUNC.Cel_Func AS 'CELULAR',FUNC.Email_Func AS 'EMAIL',FUNC.CEP_Func AS 'CEP',C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.UF AS 'ESTADO', C.Logradouro AS 'LOGRADOURO',FUNC.Complemento_Func AS 'COMPLEMENTO',FUNC.Numero_Func AS 'N° CASA',CAR.Nome AS 'CARGO', CAR.Salario AS 'SALARIO', FUNC.Ativo AS 'ATIVO' FROM Funcionario FUNC 
		INNER JOIN CEP C ON FUNC.CEP_Func = C.CEP
		INNER JOIN Cargo CAR ON FK_Cargo = Cod_Cargo
		WHERE FUNC.Ativo = 0 AND FUNC.Nome_Func LIKE @NOME
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT FUNC.COD_FUNC AS 'CÓDIGO', FUNC.Nome_Func AS 'NOME',FUNC.CPF_Func AS 'CPF',FUNC.Sexo_Func AS 'SEXO',FUNC.Dt_Nasc_Func AS 'DATA DE NASCIMENTO',FUNC.Tel_Func AS 'TELEFONE',FUNC.Cel_Func AS 'CELULAR',FUNC.Email_Func AS 'EMAIL',FUNC.CEP_Func AS 'CEP',C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.UF AS 'ESTADO', C.Logradouro AS 'LOGRADOURO',FUNC.Complemento_Func AS 'COMPLEMENTO',FUNC.Numero_Func AS 'N° CASA',CAR.Nome AS 'CARGO', CAR.Salario AS 'SALARIO', FUNC.Ativo AS 'ATIVO' FROM Funcionario FUNC 
		INNER JOIN CEP C ON FUNC.CEP_Func = C.CEP
		INNER JOIN Cargo CAR ON FK_Cargo = Cod_Cargo
		WHERE FUNC.Ativo = 1 AND FUNC.Nome_Func LIKE @NOME
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT FUNC.COD_FUNC AS 'CÓDIGO', FUNC.Nome_Func AS 'NOME',FUNC.CPF_Func AS 'CPF',FUNC.Sexo_Func AS 'SEXO',FUNC.Dt_Nasc_Func AS 'DATA DE NASCIMENTO',FUNC.Tel_Func AS 'TELEFONE',FUNC.Cel_Func AS 'CELULAR',FUNC.Email_Func AS 'EMAIL',FUNC.CEP_Func AS 'CEP',C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.UF AS 'ESTADO', C.Logradouro AS 'LOGRADOURO',FUNC.Complemento_Func AS 'COMPLEMENTO',FUNC.Numero_Func AS 'N° CASA',CAR.Nome AS 'CARGO', CAR.Salario AS 'SALARIO', FUNC.Ativo AS 'ATIVO' FROM Funcionario FUNC 
		INNER JOIN CEP C ON FUNC.CEP_Func = C.CEP
		INNER JOIN Cargo CAR ON FK_Cargo = Cod_Cargo
		WHERE FUNC.Nome_Func LIKE @NOME
	END
GO

CREATE PROCEDURE SP_SELECT_FUNCIONARIO_CPF
@ATIVO INT,
@CPF CHAR(11)
AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT FUNC.COD_FUNC AS 'CÓDIGO', FUNC.Nome_Func AS 'NOME',FUNC.CPF_Func AS 'CPF',FUNC.Sexo_Func AS 'SEXO',FUNC.Dt_Nasc_Func AS 'DATA DE NASCIMENTO',FUNC.Tel_Func AS 'TELEFONE',FUNC.Cel_Func AS 'CELULAR',FUNC.Email_Func AS 'EMAIL',FUNC.CEP_Func AS 'CEP',C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.UF AS 'ESTADO', C.Logradouro AS 'LOGRADOURO',FUNC.Complemento_Func AS 'COMPLEMENTO',FUNC.Numero_Func AS 'N° CASA',CAR.Nome AS 'CARGO', CAR.Salario AS 'SALARIO', FUNC.Ativo AS 'ATIVO' FROM Funcionario FUNC 
		INNER JOIN CEP C ON FUNC.CEP_Func = C.CEP
		INNER JOIN Cargo CAR ON FK_Cargo = Cod_Cargo
		WHERE FUNC.Ativo = 0 AND FUNC.CPF_Func = @CPF
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT FUNC.COD_FUNC AS 'CÓDIGO', FUNC.Nome_Func AS 'NOME',FUNC.CPF_Func AS 'CPF',FUNC.Sexo_Func AS 'SEXO',FUNC.Dt_Nasc_Func AS 'DATA DE NASCIMENTO',FUNC.Tel_Func AS 'TELEFONE',FUNC.Cel_Func AS 'CELULAR',FUNC.Email_Func AS 'EMAIL',FUNC.CEP_Func AS 'CEP',C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.UF AS 'ESTADO', C.Logradouro AS 'LOGRADOURO',FUNC.Complemento_Func AS 'COMPLEMENTO',FUNC.Numero_Func AS 'N° CASA',CAR.Nome AS 'CARGO', CAR.Salario AS 'SALARIO', FUNC.Ativo AS 'ATIVO' FROM Funcionario FUNC 
		INNER JOIN CEP C ON FUNC.CEP_Func = C.CEP
		INNER JOIN Cargo CAR ON FK_Cargo = Cod_Cargo
		WHERE FUNC.Ativo = 1 AND FUNC.CPF_Func = @CPF
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT FUNC.COD_FUNC AS 'CÓDIGO', FUNC.Nome_Func AS 'NOME',FUNC.CPF_Func AS 'CPF',FUNC.Sexo_Func AS 'SEXO',FUNC.Dt_Nasc_Func AS 'DATA DE NASCIMENTO',FUNC.Tel_Func AS 'TELEFONE',FUNC.Cel_Func AS 'CELULAR',FUNC.Email_Func AS 'EMAIL',FUNC.CEP_Func AS 'CEP',C.Cidade AS 'CIDADE', C.Bairro AS 'BAIRRO',C.UF AS 'ESTADO', C.Logradouro AS 'LOGRADOURO',FUNC.Complemento_Func AS 'COMPLEMENTO',FUNC.Numero_Func AS 'N° CASA',CAR.Nome AS 'CARGO', CAR.Salario AS 'SALARIO', FUNC.Ativo AS 'ATIVO' FROM Funcionario FUNC 
		INNER JOIN CEP C ON FUNC.CEP_Func = C.CEP
		INNER JOIN Cargo CAR ON FK_Cargo = Cod_Cargo
		WHERE FUNC.CPF_Func = @CPF
	END
GO
/*FORNECEDOR*/
CREATE PROCEDURE SP_SELECT_FORNECEDOR_ATIVO
@ATIVO INT
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT COD_FORN AS 'CÓDIGO',Nome_Fantasia AS 'NOME FANTASIA',Razao_Social AS 'RAZÃO SOCIAL',CNPJ AS 'CNPJ',Cel_Forn AS 'CELULAR',Tel_Forn AS 'TELEFONE',Email_Forn AS 'EMAIL',Website AS 'SITE',Dt_Cadastro AS 'DATA DE CADASTRO',Ativo AS 'ATIVO' FROM Fornecedor 
		WHERE Ativo = 0
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT COD_FORN AS 'CÓDIGO',Nome_Fantasia AS 'NOME FANTASIA',Razao_Social AS 'RAZÃO SOCIAL',CNPJ AS 'CNPJ',Cel_Forn AS 'CELULAR',Tel_Forn AS 'TELEFONE',Email_Forn AS 'EMAIL',Website AS 'SITE',Dt_Cadastro AS 'DATA DE CADASTRO',Ativo AS 'ATIVO' FROM Fornecedor 
		WHERE Ativo = 1
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT COD_FORN AS 'CÓDIGO',Nome_Fantasia AS 'NOME FANTASIA',Razao_Social AS 'RAZÃO SOCIAL',CNPJ AS 'CNPJ',Cel_Forn AS 'CELULAR',Tel_Forn AS 'TELEFONE',Email_Forn AS 'EMAIL',Website AS 'SITE',Dt_Cadastro AS 'DATA DE CADASTRO',Ativo AS 'ATIVO' FROM Fornecedor 
	END
GO

CREATE PROCEDURE SP_SELECT_FORNECEDOR_NOMEFANTASIA
@ATIVO INT,
@NOME VARCHAR(50)
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT COD_FORN AS 'CÓDIGO',Nome_Fantasia AS 'NOME FANTASIA',Razao_Social AS 'RAZÃO SOCIAL',CNPJ AS 'CNPJ',Cel_Forn AS 'CELULAR',Tel_Forn AS 'TELEFONE',Email_Forn AS 'EMAIL',Website AS 'SITE',Dt_Cadastro AS 'DATA DE CADASTRO',Ativo AS 'ATIVO' FROM Fornecedor 
		WHERE Ativo = 0 AND Nome_Fantasia LIKE @NOME
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT COD_FORN AS 'CÓDIGO',Nome_Fantasia AS 'NOME FANTASIA',Razao_Social AS 'RAZÃO SOCIAL',CNPJ AS 'CNPJ',Cel_Forn AS 'CELULAR',Tel_Forn AS 'TELEFONE',Email_Forn AS 'EMAIL',Website AS 'SITE',Dt_Cadastro AS 'DATA DE CADASTRO',Ativo AS 'ATIVO' FROM Fornecedor 
		WHERE Ativo = 1 AND Nome_Fantasia LIKE @NOME
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT COD_FORN AS 'CÓDIGO',Nome_Fantasia AS 'NOME FANTASIA',Razao_Social AS 'RAZÃO SOCIAL',CNPJ AS 'CNPJ',Cel_Forn AS 'CELULAR',Tel_Forn AS 'TELEFONE',Email_Forn AS 'EMAIL',Website AS 'SITE',Dt_Cadastro AS 'DATA DE CADASTRO',Ativo AS 'ATIVO' FROM Fornecedor
		WHERE Nome_Fantasia LIKE @NOME
	END
GO

CREATE PROCEDURE SP_SELECT_FORNECEDOR_CODIGO
@ATIVO INT,
@COD INT
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT COD_FORN AS 'CÓDIGO',Nome_Fantasia AS 'NOME FANTASIA',Razao_Social AS 'RAZÃO SOCIAL',CNPJ AS 'CNPJ',Cel_Forn AS 'CELULAR',Tel_Forn AS 'TELEFONE',Email_Forn AS 'EMAIL',Website AS 'SITE',Dt_Cadastro AS 'DATA DE CADASTRO',Ativo AS 'ATIVO' FROM Fornecedor 
		WHERE Ativo = 0 AND Cod_Forn = @COD
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT COD_FORN AS 'CÓDIGO',Nome_Fantasia AS 'NOME FANTASIA',Razao_Social AS 'RAZÃO SOCIAL',CNPJ AS 'CNPJ',Cel_Forn AS 'CELULAR',Tel_Forn AS 'TELEFONE',Email_Forn AS 'EMAIL',Website AS 'SITE',Dt_Cadastro AS 'DATA DE CADASTRO',Ativo AS 'ATIVO' FROM Fornecedor 
		WHERE Ativo = 1 AND Cod_Forn = @COD
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT COD_FORN AS 'CÓDIGO',Nome_Fantasia AS 'NOME FANTASIA',Razao_Social AS 'RAZÃO SOCIAL',CNPJ AS 'CNPJ',Cel_Forn AS 'CELULAR',Tel_Forn AS 'TELEFONE',Email_Forn AS 'EMAIL',Website AS 'SITE',Dt_Cadastro AS 'DATA DE CADASTRO',Ativo AS 'ATIVO' FROM Fornecedor
		WHERE Cod_Forn = @COD
	END
GO

CREATE PROCEDURE SP_SELECT_FORNECEDOR_CNPJ
@ATIVO INT,
@CNPJ CHAR(14)
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT COD_FORN AS 'CÓDIGO',Nome_Fantasia AS 'NOME FANTASIA',Razao_Social AS 'RAZÃO SOCIAL',CNPJ AS 'CNPJ',Cel_Forn AS 'CELULAR',Tel_Forn AS 'TELEFONE',Email_Forn AS 'EMAIL',Website AS 'SITE',Dt_Cadastro AS 'DATA DE CADASTRO',Ativo AS 'ATIVO' FROM Fornecedor 
		WHERE Ativo = 0 AND CNPJ = @CNPJ
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT COD_FORN AS 'CÓDIGO',Nome_Fantasia AS 'NOME FANTASIA',Razao_Social AS 'RAZÃO SOCIAL',CNPJ AS 'CNPJ',Cel_Forn AS 'CELULAR',Tel_Forn AS 'TELEFONE',Email_Forn AS 'EMAIL',Website AS 'SITE',Dt_Cadastro AS 'DATA DE CADASTRO',Ativo AS 'ATIVO' FROM Fornecedor 
		WHERE Ativo = 1 AND CNPJ = @CNPJ
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT COD_FORN AS 'CÓDIGO',Nome_Fantasia AS 'NOME FANTASIA',Razao_Social AS 'RAZÃO SOCIAL',CNPJ AS 'CNPJ',Cel_Forn AS 'CELULAR',Tel_Forn AS 'TELEFONE',Email_Forn AS 'EMAIL',Website AS 'SITE',Dt_Cadastro AS 'DATA DE CADASTRO',Ativo AS 'ATIVO' FROM Fornecedor
		WHERE CNPJ = @CNPJ
	END
GO
/*PRODUTO*/
CREATE PROCEDURE SP_SELECT_PRODUTO_ATIVO
@ATIVO INT
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT Produto.Cod_Prod as 'Codigo', Produto.Cod_Barras as 'Codigo de Barras', Produto.Nome_Prod as 'Nome',  Produto.Descri_Prod as 'Descrição',Produto.Marca as 'Marca', Produto.Preco_Atual as 'Preço', Produto.Qnt_Estoque as 'Estoque', Produto.Qnt_Min as 'Estoque Minimo', Produto.Qnt_Max as 'Estoque Máximo', Produto.Preco_Compra as 'Custo', Categoria.Nome as 'Categoria', Produto.Data_Cadastro as 'DATA DE CADASTRO',Produto.Ativo AS 'ATIVO',Produto.Imagem as 'IMAGEM'  FROM PRODUTO 
		INNER JOIN Categoria on Produto.FK_COD_CAT = Categoria.Cod_Cat
		WHERE Produto.Ativo = 0
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT Produto.Cod_Prod as 'Codigo', Produto.Cod_Barras as 'Codigo de Barras', Produto.Nome_Prod as 'Nome',  Produto.Descri_Prod as 'Descrição',Produto.Marca as 'Marca', Produto.Preco_Atual as 'Preço', Produto.Qnt_Estoque as 'Estoque', Produto.Qnt_Min as 'Estoque Minimo', Produto.Qnt_Max as 'Estoque Máximo', Produto.Preco_Compra as 'Custo', Categoria.Nome as 'Categoria', Produto.Data_Cadastro as 'DATA DE CADASTRO',Produto.Ativo AS 'ATIVO',Produto.Imagem as 'IMAGEM' FROM PRODUTO 
		INNER JOIN Categoria on Produto.FK_COD_CAT = Categoria.Cod_Cat
		WHERE Produto.Ativo = 1
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT Produto.Cod_Prod as 'Codigo', Produto.Cod_Barras as 'Codigo de Barras', Produto.Nome_Prod as 'Nome',  Produto.Descri_Prod as 'Descrição',Produto.Marca as 'Marca', Produto.Preco_Atual as 'Preço', Produto.Qnt_Estoque as 'Estoque', Produto.Qnt_Min as 'Estoque Minimo', Produto.Qnt_Max as 'Estoque Máximo', Produto.Preco_Compra as 'Custo', Categoria.Nome as 'Categoria', Produto.Data_Cadastro as 'DATA DE CADASTRO',Produto.Ativo AS 'ATIVO',Produto.Imagem as 'IMAGEM' FROM PRODUTO 
		INNER JOIN Categoria on Produto.FK_COD_CAT = Categoria.Cod_Cat
	END
GO

CREATE PROCEDURE SP_SELECT_PRODUTO_CODIGO
@ATIVO INT,
@COD INT
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT Produto.Cod_Prod as 'Codigo', Produto.Cod_Barras as 'Codigo de Barras', Produto.Nome_Prod as 'Nome',  Produto.Descri_Prod as 'Descrição',Produto.Marca as 'Marca', Produto.Preco_Atual as 'Preço', Produto.Qnt_Estoque as 'Estoque', Produto.Qnt_Min as 'Estoque Minimo', Produto.Qnt_Max as 'Estoque Máximo', Produto.Preco_Compra as 'Custo', Categoria.Nome as 'Categoria', Produto.Data_Cadastro as 'DATA DE CADASTRO',Produto.Ativo AS 'ATIVO',Produto.Imagem as 'IMAGEM' FROM PRODUTO 
		INNER JOIN Categoria on Produto.FK_COD_CAT = Categoria.Cod_Cat
		WHERE Produto.Ativo = 0 AND Produto.Cod_Prod = @COD
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT Produto.Cod_Prod as 'Codigo', Produto.Cod_Barras as 'Codigo de Barras', Produto.Nome_Prod as 'Nome',  Produto.Descri_Prod as 'Descrição',Produto.Marca as 'Marca', Produto.Preco_Atual as 'Preço', Produto.Qnt_Estoque as 'Estoque', Produto.Qnt_Min as 'Estoque Minimo', Produto.Qnt_Max as 'Estoque Máximo', Produto.Preco_Compra as 'Custo', Categoria.Nome as 'Categoria', Produto.Data_Cadastro as 'DATA DE CADASTRO',Produto.Ativo AS 'ATIVO',Produto.Imagem as 'IMAGEM' FROM PRODUTO 
		INNER JOIN Categoria on Produto.FK_COD_CAT = Categoria.Cod_Cat
		WHERE Produto.Ativo = 1 AND Produto.Cod_Prod = @COD
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT Produto.Cod_Prod as 'Codigo', Produto.Cod_Barras as 'Codigo de Barras', Produto.Nome_Prod as 'Nome',  Produto.Descri_Prod as 'Descrição',Produto.Marca as 'Marca', Produto.Preco_Atual as 'Preço', Produto.Qnt_Estoque as 'Estoque', Produto.Qnt_Min as 'Estoque Minimo', Produto.Qnt_Max as 'Estoque Máximo', Produto.Preco_Compra as 'Custo', Categoria.Nome as 'Categoria', Produto.Data_Cadastro as 'DATA DE CADASTRO',Produto.Ativo AS 'ATIVO',Produto.Imagem as 'IMAGEM' FROM PRODUTO 
		INNER JOIN Categoria on Produto.FK_COD_CAT = Categoria.Cod_Cat
		WHERE Produto.Cod_Prod = @COD
	END
GO

CREATE PROCEDURE SP_SELECT_PRODUTO_CODIGOBARRAS
@ATIVO INT,
@CODBARRAS VARCHAR(255)
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT Produto.Cod_Prod as 'Codigo', Produto.Cod_Barras as 'Codigo de Barras', Produto.Nome_Prod as 'Nome',  Produto.Descri_Prod as 'Descrição', Produto.Preco_Atual as 'Preço', Produto.Qnt_Estoque as 'Estoque', Produto.Qnt_Min as 'Estoque Minimo', Produto.Qnt_Max as 'Estoque Máximo', Produto.Preco_Compra as 'Custo', Categoria.Nome as 'Categoria', Produto.Data_Cadastro as 'DATA DE CADASTRO',Produto.Ativo AS 'ATIVO' FROM PRODUTO 
		INNER JOIN Categoria on Produto.FK_COD_CAT = Categoria.Cod_Cat
		WHERE Produto.Ativo = 0 AND Produto.Cod_Barras = @CODBARRAS
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT Produto.Cod_Prod as 'Codigo', Produto.Cod_Barras as 'Codigo de Barras', Produto.Nome_Prod as 'Nome',  Produto.Descri_Prod as 'Descrição', Produto.Preco_Atual as 'Preço', Produto.Qnt_Estoque as 'Estoque', Produto.Qnt_Min as 'Estoque Minimo', Produto.Qnt_Max as 'Estoque Máximo', Produto.Preco_Compra as 'Custo', Categoria.Nome as 'Categoria', Produto.Data_Cadastro as 'DATA DE CADASTRO',Produto.Ativo AS 'ATIVO' FROM PRODUTO 
		INNER JOIN Categoria on Produto.FK_COD_CAT = Categoria.Cod_Cat
		WHERE Produto.Ativo = 1 AND Produto.Cod_Barras = @CODBARRAS
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT Produto.Cod_Prod as 'Codigo', Produto.Cod_Barras as 'Codigo de Barras', Produto.Nome_Prod as 'Nome',  Produto.Descri_Prod as 'Descrição', Produto.Preco_Atual as 'Preço', Produto.Qnt_Estoque as 'Estoque', Produto.Qnt_Min as 'Estoque Minimo', Produto.Qnt_Max as 'Estoque Máximo', Produto.Preco_Compra as 'Custo', Categoria.Nome as 'Categoria', Produto.Data_Cadastro as 'DATA DE CADASTRO',Produto.Ativo AS 'ATIVO' FROM PRODUTO 
		INNER JOIN Categoria on Produto.FK_COD_CAT = Categoria.Cod_Cat
		WHERE Produto.Cod_Barras = @CODBARRAS
	END
GO

CREATE PROCEDURE SP_SELECT_PRODUTO_NOME
@ATIVO INT,
@NOME VARCHAR(50)
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT Produto.Cod_Prod as 'Codigo', Produto.Cod_Barras as 'Codigo de Barras', Produto.Nome_Prod as 'Nome',  Produto.Descri_Prod as 'Descrição',Produto.Marca as 'Marca', Produto.Preco_Atual as 'Preço', Produto.Qnt_Estoque as 'Estoque', Produto.Qnt_Min as 'Estoque Minimo', Produto.Qnt_Max as 'Estoque Máximo', Produto.Preco_Compra as 'Custo', Categoria.Nome as 'Categoria', Produto.Data_Cadastro as 'DATA DE CADASTRO',Produto.Ativo AS 'ATIVO',Produto.Imagem as 'IMAGEM' FROM PRODUTO 
		INNER JOIN Categoria on Produto.FK_COD_CAT = Categoria.Cod_Cat
		WHERE Produto.Ativo = 0 AND Produto.Nome_Prod LIKE @NOME
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT Produto.Cod_Prod as 'Codigo', Produto.Cod_Barras as 'Codigo de Barras', Produto.Nome_Prod as 'Nome',  Produto.Descri_Prod as 'Descrição',Produto.Marca as 'Marca', Produto.Preco_Atual as 'Preço', Produto.Qnt_Estoque as 'Estoque', Produto.Qnt_Min as 'Estoque Minimo', Produto.Qnt_Max as 'Estoque Máximo', Produto.Preco_Compra as 'Custo', Categoria.Nome as 'Categoria', Produto.Data_Cadastro as 'DATA DE CADASTRO',Produto.Ativo AS 'ATIVO',Produto.Imagem as 'IMAGEM' FROM PRODUTO 
		INNER JOIN Categoria on Produto.FK_COD_CAT = Categoria.Cod_Cat
		WHERE Produto.Ativo = 1 AND Produto.Nome_Prod LIKE @NOME
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT Produto.Cod_Prod as 'Codigo', Produto.Cod_Barras as 'Codigo de Barras', Produto.Nome_Prod as 'Nome',  Produto.Descri_Prod as 'Descrição',Produto.Marca as 'Marca', Produto.Preco_Atual as 'Preço', Produto.Qnt_Estoque as 'Estoque', Produto.Qnt_Min as 'Estoque Minimo', Produto.Qnt_Max as 'Estoque Máximo', Produto.Preco_Compra as 'Custo', Categoria.Nome as 'Categoria', Produto.Data_Cadastro as 'DATA DE CADASTRO',Produto.Ativo AS 'ATIVO',Produto.Imagem as 'IMAGEM' FROM PRODUTO 
		INNER JOIN Categoria on Produto.FK_COD_CAT = Categoria.Cod_Cat
		WHERE Produto.Nome_Prod LIKE @NOME
	END
GO

/*ITENS PEDIDO*/
CREATE PROCEDURE SP_SELECT_ITENSPEDIDOS_QUANTIDADE
@FKPEDIDO INT
AS
	SELECT SUM(QUANTIDADE) QTDE FROM ITENS_PEDIDOS WHERE ATIVO = 1 AND Fk_Cod_Pedido = @FKPEDIDO
GO
/*PEDIDO*/
CREATE PROCEDURE SP_SELECT_PEDIDO
@IDVENDA INT
AS
		SELECT ped.cod_pedido AS 'Codigo Pedido', pd.Cod_Prod AS 'Codigo Produto', pd.Nome_Prod AS 'Nome Produto', pd.Preco_Atual AS 'Preço Atual',it.Quantidade, (pd.Preco_Atual * it.Quantidade) AS 'Sub Total', ct.Nome AS 'CATEGORIA' FROM produto pd 
		INNER JOIN Itens_Pedidos it ON pd.Cod_Prod = it.FK_Cod_Prod
	    INNER JOIN Pedido ped ON it.fk_cod_pedido = ped.Cod_Pedido
		INNER JOIN Categoria ct ON pd.FK_Cod_Cat =  ct.Cod_Cat
		WHERE ped.Cod_Pedido=@IDVENDA AND it.ATIVO = 1
GO

/*VENDA*/
CREATE PROCEDURE CANCELA
@FKPEDIDO INT
AS		
		IF(SELECT SUM(CAST(Ativo AS INT)) FROM Itens_Pedidos WHERE Fk_Cod_Pedido LIKE @FKPEDIDO AND ATIVO = 0) = 0
		BEGIN
			DELETE FROM ITENS_PEDIDOS WHERE Fk_Cod_Pedido = @FKPEDIDO
		END
		IF(SELECT SUM(Cod_Pedido) FROM Pedido WHERE Cod_Pedido = @FKPEDIDO) != 0
		BEGIN
			DELETE FROM Pedido WHERE Cod_Pedido = @FKPEDIDO	
		END
GO

--CREATE TRIGGER ATUALIZAESTOQUE
--ON PEDIDO
--FOR UPDATE
--AS
--BEGIN
--	BEGIN TRANSACTION
--	DECLARE 
--		@COD INT,
--		@QUANT INT, 
--		@ESTOQUE INT, 
--		@CODITENS INT
--	SELECT @CODITENS = Itens_Pedidos.Cod_Itens , @QUANT = QUANTIDADE FROM INSERTED  -- @COD = 1, @QUANT = 10
--	SELECT @ESTOQUE = ESTOQUEATUAL FROM TB_ESTOQUE3D WHERE CODIGOPRODUTO = @COD  -- @ESTOQUE = 50
--	IF @ESTOQUE >= @QUANT
--		BEGIN
--			UPDATE TB_ESTOQUE3D SET ESTOQUEATUAL = ESTOQUEATUAL - @QUANT WHERE CODIGOPRODUTO = @COD
--			PRINT 'ESTOQUE ATUALIZADO'
--			COMMIT TRANSACTION
--		END
--	ELSE
--		BEGIN
--			ROLLBACK TRANSACTION
--			PRINT 'ESTOQUE INDISPONÍVEL'
--		END
--END
--GO

/*CONTAS A PAGAR*/
CREATE PROCEDURE SP_SELECT_CONTAS
@ATIVO INT
AS
IF(@ATIVO) = 0
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.Ativo AS 'ATIVO' FROM Contas_Pagar CP
			INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
			WHERE @ATIVO = 0
		END
	IF(@ATIVO) = 1
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.ativo AS 'ATIVO' FROM Contas_Pagar CP
			INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
			WHERE @ATIVO = 1
		END

	IF(@ATIVO) = 2
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.ativo AS 'ATIVO' FROM Contas_Pagar CP
			INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
		END
GO
--FILTRAM POR DATA, METODO 0 = INCLUSAO, METODO 1 = VENCIMENTO
CREATE PROCEDURE SP_SELECT_CONTAS_CODIGO
@ATIVO INT,
@METODODEBUSCA INT,
@DATA1 DATETIME,
@DATA2 DATETIME,
@COD INT
AS
IF(@METODODEBUSCA = 0)
BEGIN
	IF(@ATIVO) = 0
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.ativo as 'ATIVO' FROM Contas_Pagar CP
				INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
			WHERE @ATIVO = 0 AND CP.Cod_Conta = @COD 
			AND 
			CP.Inclusao BETWEEN @DATA1 AND @DATA2
		END
	IF(@ATIVO) = 1
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.ativo as 'ATIVO' FROM Contas_Pagar CP
				INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
			WHERE @ATIVO = 1 AND CP.Cod_Conta = @COD 
			AND 
			CP.Inclusao BETWEEN @DATA1 AND @DATA2
		END
	IF(@ATIVO) = 2
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.ativo as 'ATIVO' FROM Contas_Pagar CP
				INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
			WHERE CP.Cod_Conta = @COD 
			AND 
			CP.Inclusao BETWEEN @DATA1 AND @DATA2
		END
END

IF(@METODODEBUSCA = 1)
BEGIN
	IF(@ATIVO) = 0
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.ativo as 'ATIVO' FROM Contas_Pagar CP
			INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
			WHERE @ATIVO = 0 AND CP.Cod_Conta = @COD AND CP.Vencimento BETWEEN @DATA1 AND @DATA2
		END
	IF(@ATIVO) = 1
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.ativo as 'ATIVO' FROM Contas_Pagar CP
			INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
			WHERE @ATIVO = 1 AND CP.Cod_Conta = @COD AND CP.Vencimento BETWEEN @DATA1 AND @DATA2
		END

	IF(@ATIVO) = 2
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.ativo as 'ATIVO' FROM Contas_Pagar CP
			INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
			WHERE CP.Vencimento BETWEEN @DATA1 AND @DATA2
		END
END

GO
CREATE PROCEDURE SP_SELECT_CONTAS_NOME
@ATIVO INT,
@METODODEBUSCA INT,
@DATA1 DATETIME,
@DATA2 DATETIME,
@NOME VARCHAR(50)
AS
IF(@METODODEBUSCA = 0)
BEGIN
	IF(@ATIVO) = 0
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.ativo as 'ATIVO' FROM Contas_Pagar CP
				INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
			WHERE @ATIVO = 0 AND CP.Nome_Conta LIKE @NOME 
			AND 
			CP.Inclusao BETWEEN @DATA1 AND @DATA2
		END
	IF(@ATIVO) = 1
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.ativo as 'ATIVO' FROM Contas_Pagar CP
				INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
			WHERE @ATIVO = 1 AND CP.Nome_Conta LIKE @NOME
			AND 
			CP.Inclusao BETWEEN @DATA1 AND @DATA2
		END
	IF(@ATIVO) = 2
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.ativo as 'ATIVO' FROM Contas_Pagar CP
				INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
			WHERE CP.Nome_Conta LIKE @NOME 
			AND 
			CP.Inclusao BETWEEN @DATA1 AND @DATA2
		END
END

IF(@METODODEBUSCA = 1)
BEGIN
	IF(@ATIVO) = 0
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.ativo as 'ATIVO' FROM Contas_Pagar CP
			INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
			WHERE @ATIVO = 0 AND CP.Nome_Conta LIKE @NOME 
			AND 
			CP.Vencimento BETWEEN @DATA1 AND @DATA2
		END
	IF(@ATIVO) = 1
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.ativo as 'ATIVO' FROM Contas_Pagar CP
			INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
			WHERE @ATIVO = 1 AND CP.Nome_Conta LIKE @NOME 
			AND 
			CP.Vencimento BETWEEN @DATA1 AND @DATA2
		END

	IF(@ATIVO) = 2
		BEGIN
			SELECT CP.Cod_Conta AS 'CODIGO DA CONTA', CP.Nome_Conta AS 'NOME DA CONTA', CP.Descricao AS 'DESCRIÇÃO', CP.Valor AS 'VALOR', CP.Vencimento AS 'DATA DE VENCIMENTO', CP.Inclusao 'DATA DE INCLUSÃO', CP.Dt_Pagamento AS 'DATA DE PAGAMENTO', FUNC.Nome_Func AS 'FUNCIONARIO RESPONSAVEL', CP.ativo as 'ATIVO' FROM Contas_Pagar CP
			INNER JOIN Funcionario FUNC ON CP.Cod_Conta = FUNC.Cod_Func
			WHERE CP.Nome_Conta LIKE @NOME 
			AND 
			CP.Vencimento BETWEEN @DATA1 AND @DATA2
		END
END

GO
/*RELATORIO DE VENDAS*/
--2 SEÇOES, 1 SELECAO DA VENDA(CODVENDA,NOMEFUNC,NOMECLIENTE,VALORTOTAL,DATA), 2 VENDA DETALHADA(CODVENDA,CODPEDIDO,FMTPAGAMENTO,NOMEFUNC,NOMECLIENTE,VALORTOTAL,DATA, ITENS DO PEDIDO(TABELA DE PEDIDOS DA TELA VENDA),USO DE CUPONS,)
CREATE PROCEDURE SP_SELECT_VENDAS_CODIGO
@CODVENDA INT,
@DATA1 DATETIME,
@DATA2 DATETIME
AS
	SELECT V.Cod_Vendas AS 'CODIGO DA VENDA',FUNC.Nome_Func AS 'NOME FUNCIONARIO', CLI.Nome_Cli AS 'NOME CLIENTE',P.Valor_Total AS 'VALOR TOTAL', V.Data_Venda AS 'DATA DA VENDA' FROM VENDAS V 
	INNER JOIN Pedido P ON V.FK_Cod_Pedidos = P.Cod_Pedido
	INNER JOIN Funcionario FUNC ON P.FK_Cod_Func = FUNC.Cod_Func
	INNER JOIN Cliente CLI ON P.FK_Cod_Cli = CLI.Cod_Cli 
	WHERE V.Cod_Vendas =@CODVENDA 
	AND
	V.Data_Venda BETWEEN @DATA1 AND @DATA2
GO

CREATE PROCEDURE SP_SELECT_VENDAS_ATIVO
AS
	SELECT V.Cod_Vendas,FUNC.Nome_Func, CLI.Nome_Cli ,P.Valor_Total, V.Data_Venda FROM VENDAS V 
	INNER JOIN Pedido P ON V.FK_Cod_Pedidos = P.Cod_Pedido
	INNER JOIN Funcionario FUNC ON P.FK_Cod_Func = FUNC.Cod_Func
	INNER JOIN Cliente CLI ON P.FK_Cod_Cli = CLI.Cod_Cli 
GO

CREATE PROCEDURE SP_SELECT_VENDAS_DATA_GERAL
@DATA1 DATETIME,
@DATA2 DATETIME
AS
	SELECT V.Cod_Vendas AS 'CODIGO DA VENDA',FUNC.Nome_Func AS 'NOME FUNCIONARIO', CLI.Nome_Cli AS 'NOME CLIENTE',P.Valor_Total AS 'VALOR TOTAL',P.Desconto AS 'DESCONTO', P.Porcentagem AS '% DE DESCONTO', V.Data_Venda AS 'DATA DA VENDA' FROM VENDAS V 
	INNER JOIN Pedido P ON V.FK_Cod_Pedidos = P.Cod_Pedido
	INNER JOIN Funcionario FUNC ON P.FK_Cod_Func = FUNC.Cod_Func
	INNER JOIN Cliente CLI ON P.FK_Cod_Cli = CLI.Cod_Cli 
	WHERE
	V.Data_Venda BETWEEN @DATA1 AND @DATA2
GO


CREATE PROCEDURE SP_SELECT_VENDAS_CLIENTE
@CODCLIENTE INT,
@DATA1 DATETIME,
@DATA2 DATETIME
AS
	SELECT V.Cod_Vendas AS 'CODIGO DA VENDA',FUNC.Nome_Func AS 'NOME FUNCIONARIO', CLI.Nome_Cli AS 'NOME CLIENTE',P.Valor_Total AS 'VALOR TOTAL', V.Data_Venda AS 'DATA DA VENDA' FROM VENDAS V 
	INNER JOIN Pedido P ON V.FK_Cod_Pedidos = P.Cod_Pedido
	INNER JOIN Funcionario FUNC ON P.FK_Cod_Func = FUNC.Cod_Func
	INNER JOIN Cliente CLI ON P.FK_Cod_Cli = CLI.Cod_Cli 
	WHERE CLI.Cod_Cli =@CODCLIENTE 
	AND
	V.Data_Venda BETWEEN @DATA1 AND @DATA2
GO

CREATE PROCEDURE SP_SELECT_VENDAS_FUNCIONARIO
@CODFUNC INT,
@DATA1 DATETIME,
@DATA2 DATETIME
AS
	SELECT V.Cod_Vendas AS 'CODIGO DA VENDA',FUNC.Nome_Func AS 'NOME FUNCIONARIO', CLI.Nome_Cli AS 'NOME CLIENTE',P.Valor_Total AS 'VALOR TOTAL', V.Data_Venda AS 'DATA DA VENDA' FROM VENDAS V 
	INNER JOIN Pedido P ON V.FK_Cod_Pedidos = P.Cod_Pedido
	INNER JOIN Funcionario FUNC ON P.FK_Cod_Func = FUNC.Cod_Func
	INNER JOIN Cliente CLI ON P.FK_Cod_Cli = CLI.Cod_Cli 
	WHERE FUNC.Cod_Func =@CODFUNC 
	AND
	V.Data_Venda BETWEEN @DATA1 AND @DATA2
GO

/*RELATORIO DE VENDAS DETALHADO*/
--PARA PUXAR O DATAGRID DOS PRODUTOS DA COMPRA, BASTA CHAMAR A PROCEDURE SP_SELECT_PEDIDO E COLOCAR O CODIGO DA VENDA DESEJADA PARA BUSCA
CREATE PROCEDURE SP_SELECT_VENDAS_DETALHADA
@CODVENDA INT
AS
--PARA PUXAR O DATAGRID DOS PRODUTOS DA COMPRA, BASTA CHAMAR A PROCEDURE SP_SELECT_PEDIDO E COLOCAR O CODIGO DA VENDA DESEJADA PARA BUSCA
--USO DE CUPONS NAO COMPLETO E INTEGRADO NA PROCEDURE
	SELECT V.Cod_Vendas, P.Cod_Pedido, FP.Dinheiro , FP.Cheque, FP.Cartao_Debito, FP.Cartao_Credito , FP.Parcela, FUNC.Nome_Func, CLI.Nome_Cli ,P.Valor_Total , V.Data_Venda, CU.Qr_Cod, p.Desconto, p.Porcentagem  FROM VENDAS V

		INNER JOIN Pedido P ON V.Cod_Vendas = P.Cod_Pedido
		INNER JOIN Formato_Pagamento FP ON V.FK_Cod_PGMT = FP.Cod_PGMT
		INNER JOIN Funcionario FUNC ON P.FK_Cod_Func = FUNC.Cod_Func
		INNER JOIN Cliente CLI ON P.FK_Cod_Cli = CLI.Cod_Cli
		INNER JOIN Itens_Pedidos IT ON P.Cod_Pedido = IT.Fk_Cod_Pedido
		INNER JOIN Cupom CU ON CU.Cod_Cupom = IT.FK_CUPOM
		INNER JOIN Produto PR ON IT.FK_Cod_Prod = PR.Cod_Prod
	WHERE V.COD_VENDAS = @CODVENDA
GO
CREATE PROCEDURE SP_SELECT_VENDAS_DETALHADA_SEMCUPOM
@CODVENDA INT
AS
--PARA PUXAR O DATAGRID DOS PRODUTOS DA COMPRA, BASTA CHAMAR A PROCEDURE SP_SELECT_PEDIDO E COLOCAR O CODIGO DA VENDA DESEJADA PARA BUSCA
--USO DE CUPONS NAO COMPLETO E INTEGRADO NA PROCEDURE
	SELECT V.Cod_Vendas, P.Cod_Pedido, FP.Dinheiro , FP.Cheque, FP.Cartao_Debito, FP.Cartao_Credito , FP.Parcela, FUNC.Nome_Func, CLI.Nome_Cli ,P.Valor_Total , V.Data_Venda, p.Desconto, p.Porcentagem  FROM VENDAS V

		INNER JOIN Pedido P ON V.Cod_Vendas = P.Cod_Pedido
		INNER JOIN Formato_Pagamento FP ON V.FK_Cod_PGMT = FP.Cod_PGMT
		INNER JOIN Funcionario FUNC ON P.FK_Cod_Func = FUNC.Cod_Func
		INNER JOIN Cliente CLI ON P.FK_Cod_Cli = CLI.Cod_Cli
		INNER JOIN Itens_Pedidos IT ON P.Cod_Pedido = IT.Fk_Cod_Pedido
		INNER JOIN Produto PR ON IT.FK_Cod_Prod = PR.Cod_Prod
	WHERE V.COD_VENDAS = @CODVENDA
GO
/*LOGAR*/
/*
NIVEL DE ACESSO
0 = FUNCIONARIO
1 = GERENTE
2 = CLIENTE
*/
CREATE PROCEDURE SP_SELECT_LOGAR
@NOME VARCHAR(30),
@SENHA VARCHAR(30),
@NIVELACESSO INT
AS
	IF(@NIVELACESSO = 0)
	BEGIN
		SELECT LO.Nome_Login AS 'NOME', LO.Senha AS 'SENHA', LO.Nivel_Acesso AS 'NIVEL', LO.Ativo AS 'ATIVO', LO.Fk_Funcionario as 'CODFUNCIONARIO'  FROM LOGAR LO
		INNER JOIN FUNCIONARIO FUNC ON LO.FK_FUNCIONARIO = FUNC.Cod_Func
		WHERE LO.Nome_Login= @NOME AND LO.Senha = @SENHA AND LO.ATIVO = 1
	END
	IF(@NIVELACESSO = 1)
	BEGIN
		SELECT LO.Nome_Login AS 'NOME', LO.Senha AS 'SENHA', LO.Nivel_Acesso AS 'NIVEL', LO.Ativo AS 'ATIVO', LO.Fk_Funcionario as 'CODFUNCIONARIO' FROM LOGAR LO
		INNER JOIN FUNCIONARIO FUNC ON LO.FK_FUNCIONARIO = FUNC.Cod_Func
		WHERE LO.Nome_Login= @NOME AND LO.Senha = @SENHA AND LO.ATIVO = 1
	END
	IF(@NIVELACESSO = 2)
	BEGIN
		SELECT LO.Nome_Login AS 'NOME', LO.Senha AS 'SENHA', LO.Ativo AS 'ATIVO', LO.FK_CLIENTE AS 'CODCLI' FROM LOGAR LO
		INNER JOIN CLIENTE CLI ON LO.FK_CLIENTE = CLI.COD_CLI
		WHERE LO.Nome_Login = @NOME AND LO.SENHA = @SENHA AND LO.ATIVO = 1
	END
GO

CREATE TRIGGER SP_CRIAR_LOGAR_FUNC
ON FUNCIONARIO
FOR INSERT
AS
BEGIN
	DECLARE
		@CODFUNC INT,
		@LOGIN VARCHAR(100)
	SELECT @CODFUNC = COD_FUNC, @LOGIN = LEFT(NOME_FUNC,3) + '_' + CONVERT(CHAR,COD_FUNC) FROM INSERTED
	BEGIN
		INSERT INTO LOGAR(NOME_LOGIN, SENHA, NIVEL_ACESSO, ATIVO, FK_FUNCIONARIO) VALUES(@LOGIN,'000000', 1, 1, @CODFUNC)
	END
END
GO

CREATE PROCEDURE SP_CRIAR_LOGAR_CLIENTE
@EMAIL VARCHAR(30),
@SENHA VARCHAR(30),
@CODCLI INT
AS
	INSERT INTO LOGAR (NOME_LOGIN, SENHA, NIVEL_ACESSO, ATIVO, FK_FUNCIONARIO, FK_CLIENTE) VALUES (@EMAIL, @SENHA, 2, 1, NULL, @CODCLI)
GO

CREATE PROCEDURE SP_UPDATE_LOGIN
@COD INT,
@SENHA VARCHAR(30),
@NIVELACESSO INT
AS
	UPDATE LOGAR set SENHA = @SENHA, Nivel_Acesso = @NIVELACESSO WHERE COD_LOGIN = @COD
GO

CREATE PROCEDURE SP_SELECT_LOGIN
@ATIVO INT
AS
	IF(@ATIVO = 0)
	SELECT LO.Cod_Login AS 'CODIGO LOGIN', FUNC.Nome_Func AS 'NOME FUNCIONARIO', LO.Senha AS 'SENHA', LO.Nivel_Acesso AS 'NIVEL DE ACESSO', LO.Ativo AS 'ATIVO' FROM LOGAR LO
		INNER JOIN Funcionario FUNC ON LO.Fk_Funcionario = FUNC.Cod_Func
	WHERE LO.Ativo = 0
	IF(@ATIVO = 1)
		SELECT LO.Cod_Login AS 'CODIGO LOGIN', FUNC.Nome_Func AS 'NOME FUNCIONARIO', LO.Senha AS 'SENHA', LO.Nivel_Acesso AS 'NIVEL DE ACESSO', LO.Ativo AS 'ATIVO' FROM LOGAR LO
		INNER JOIN Funcionario FUNC ON LO.Fk_Funcionario = FUNC.Cod_Func
	WHERE LO.Ativo = 1
	IF(@ATIVO = 2)
		SELECT LO.Cod_Login AS 'CODIGO LOGIN', FUNC.Nome_Func AS 'NOME FUNCIONARIO', LO.Senha AS 'SENHA', LO.Nivel_Acesso AS 'NIVEL DE ACESSO', LO.Ativo AS 'ATIVO' FROM LOGAR LO
		INNER JOIN Funcionario FUNC ON LO.Fk_Funcionario = FUNC.Cod_Func
GO

CREATE PROCEDURE SP_SELECT_LOGIN_NOME
@NOME VARCHAR(50),
@ATIVO INT
AS
	IF(@ATIVO = 0)
	SELECT LO.Cod_Login AS 'CODIGO LOGIN', FUNC.Nome_Func AS 'NOME FUNCIONARIO', LO.Senha AS 'SENHA', LO.Nivel_Acesso AS 'NIVEL DE ACESSO', LO.Ativo AS 'ATIVO' FROM LOGAR LO
		INNER JOIN Funcionario FUNC ON LO.Fk_Funcionario = FUNC.Cod_Func
	WHERE FUNC.Nome_Func = @NOME AND LO.Ativo = 0
	IF(@ATIVO = 1)
	SELECT LO.Cod_Login AS 'CODIGO LOGIN', FUNC.Nome_Func AS 'NOME FUNCIONARIO', LO.Senha AS 'SENHA', LO.Nivel_Acesso AS 'NIVEL DE ACESSO', LO.Ativo AS 'ATIVO' FROM LOGAR LO
		INNER JOIN Funcionario FUNC ON LO.Fk_Funcionario = FUNC.Cod_Func
	WHERE FUNC.Nome_Func = @NOME AND LO.Ativo = 1
	IF(@ATIVO = 2)
	SELECT LO.Cod_Login AS 'CODIGO LOGIN', FUNC.Nome_Func AS 'NOME FUNCIONARIO', LO.Senha AS 'SENHA', LO.Nivel_Acesso AS 'NIVEL DE ACESSO', LO.Ativo AS 'ATIVO' FROM LOGAR LO
		INNER JOIN Funcionario FUNC ON LO.Fk_Funcionario = FUNC.Cod_Func
	WHERE FUNC.Nome_Func = @NOME
GO

CREATE PROCEDURE SP_SELECT_LOGIN_COD
@CODLOGIN INT,
@ATIVO INT
AS
	IF(@ATIVO = 0)
	SELECT LO.Cod_Login AS 'CODIGO LOGIN', FUNC.Nome_Func AS 'NOME FUNCIONARIO', LO.Senha AS 'SENHA', LO.Nivel_Acesso AS 'NIVEL DE ACESSO', LO.Ativo AS 'ATIVO' FROM LOGAR LO
		INNER JOIN Funcionario FUNC ON LO.Fk_Funcionario = FUNC.Cod_Func
	WHERE LO.Cod_Login = @CODLOGIN AND LO.ATIVO = 0
	IF(@ATIVO = 1)
	SELECT LO.Cod_Login AS 'CODIGO LOGIN', FUNC.Nome_Func AS 'NOME FUNCIONARIO', LO.Senha AS 'SENHA', LO.Nivel_Acesso AS 'NIVEL DE ACESSO', LO.Ativo AS 'ATIVO' FROM LOGAR LO
		INNER JOIN Funcionario FUNC ON LO.Fk_Funcionario = FUNC.Cod_Func
	WHERE LO.Cod_Login = @CODLOGIN AND LO.ATIVO = 1
	IF(@ATIVO = 2)
	SELECT LO.Cod_Login AS 'CODIGO LOGIN', FUNC.Nome_Func AS 'NOME FUNCIONARIO', LO.Senha AS 'SENHA', LO.Nivel_Acesso AS 'NIVEL DE ACESSO', LO.Ativo AS 'ATIVO' FROM LOGAR LO
		INNER JOIN Funcionario FUNC ON LO.Fk_Funcionario = FUNC.Cod_Func
	WHERE LO.Cod_Login = @CODLOGIN
GO
/*CUPOM*/
CREATE PROCEDURE SP_SELECT_PRODUTO_CATEGORIA
@CATEGORIA INT
AS
	SELECT P.Cod_Prod AS 'CODIGO PRODUTO', P.Nome_Prod AS 'NOMEPRODUTO', CA.Nome AS 'NOMECATEGORIA' FROM PRODUTO P
		INNER JOIN Categoria CA ON P.FK_Cod_Cat = @CATEGORIA
	WHERE P.FK_Cod_Cat = @CATEGORIA AND CA.Cod_Cat = @CATEGORIA
GO

CREATE PROCEDURE SP_INSERT_CUPOM
@CODCUPOM INT,
@QRCODE VARCHAR(100),
@DESCONTO DECIMAL(10,2),
@DTVALIDADE DATETIME,
@METODO INT,
@CODCATEGORIA INT,
@CODPRODUTO INT
AS
	IF(@METODO = 0)
		INSERT INTO CUPOM (Qr_Cod, Desconto, Dt_Validade) VALUES (@QRCODE, @DESCONTO, @DTVALIDADE)
	IF(@METODO = 0)
		INSERT INTO Cupom_Categoria (Fk_Cod_Cupom, Fk_Cod_Cat) VALUES (@CODCUPOM, @CODCATEGORIA)
	IF(@METODO = 1)
		INSERT INTO CUPOM (Qr_Cod, Desconto, Dt_Validade) VALUES (@QRCODE, @DESCONTO, @DTVALIDADE)
	IF(@METODO = 1)
		INSERT INTO Cupom_Produto(Fk_Cod_Cupom, Fk_Cod_Prod) VALUES (@CODCUPOM, @CODPRODUTO) 
GO

CREATE PROCEDURE SP_APLICAR_CUPOM_CATEGORIA
@IDVENDA INT,
@CODCUPOM INT,
@FKCATE INT
AS
		select SUM(it.sub_total * c.Desconto) as 'VALOR_TOTAL' from itens_pedidos it
			INNER JOIN CUPOM C ON C.COD_CUPOM = @CODCUPOM
			INNER JOIN Produto P ON IT.FK_Cod_Prod = P.Cod_Prod
			INNER JOIN Categoria CA ON P.FK_Cod_Cat = @FKCATE
		 where fk_cod_pedido= @idVenda AND IT.Ativo = 1 AND CA.Cod_Cat = @FKCATE
GO

CREATE PROCEDURE SP_APLICAR_CUPOM_PRODUTO
@IDVENDA INT,
@CODCUPOM INT,
@FKPROD INT
AS
		select SUM(it.sub_total * c.Desconto) as 'VALOR_TOTAL' from itens_pedidos it
			INNER JOIN CUPOM C ON C.COD_CUPOM = @CODCUPOM
			INNER JOIN Produto P ON IT.FK_Cod_Prod = P.Cod_Prod
		 where fk_cod_pedido= @idVenda AND IT.Ativo = 1 AND P.Cod_Prod = @FKPROD
GO


CREATE PROCEDURE SP_SELECT_CUPOM_QR
@ATIVO INT,
@QR VARCHAR(100)
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT C.COD_CUPOM AS 'CÓDIGO',C.QR_COD AS 'NOME',C.DESCONTO AS 'DESCONTO',C.DT_VALIDADE AS 'DATA DE VALIDADE',C.ATIVO FROM CUPOM C
		
		WHERE Ativo = 0 AND C.QR_COD=@QR
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT C.COD_CUPOM AS 'CÓDIGO',C.QR_COD AS 'NOME',C.DESCONTO AS 'DESCONTO',C.DT_VALIDADE AS 'DATA DE VALIDADE',C.ATIVO FROM CUPOM C
		
		WHERE Ativo = 1 AND C.QR_COD=@QR
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT C.COD_CUPOM AS 'CÓDIGO',C.QR_COD AS 'NOME',C.DESCONTO AS 'DESCONTO',C.DT_VALIDADE AS 'DATA DE VALIDADE',C.ATIVO FROM CUPOM C
	END
GO

CREATE PROCEDURE SP_SELECT_CUPOM_ATIVO
@ATIVO INT
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT C.COD_CUPOM AS 'CÓDIGO',C.QR_COD AS 'NOME',C.DESCONTO AS 'DESCONTO',C.DT_VALIDADE AS 'DATA DE VALIDADE',C.ATIVO FROM CUPOM C
		
		WHERE Ativo = 0
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT C.COD_CUPOM AS 'CÓDIGO',C.QR_COD AS 'NOME',C.DESCONTO AS 'DESCONTO',C.DT_VALIDADE AS 'DATA DE VALIDADE',C.ATIVO FROM CUPOM C
		
		WHERE Ativo = 1
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT C.COD_CUPOM AS 'CÓDIGO',C.QR_COD AS 'NOME',C.DESCONTO AS 'DESCONTO',C.DT_VALIDADE AS 'DATA DE VALIDADE',C.ATIVO FROM CUPOM C
	END
GO


CREATE PROCEDURE SP_SELECT_CUPOM_DESCONTO
@ATIVO INT,
@DESCONTO DECIMAL(10,2)
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT C.COD_CUPOM AS 'CÓDIGO',C.QR_COD AS 'NOME',C.DESCONTO AS 'DESCONTO',C.DT_VALIDADE AS 'DATA DE VALIDADE',C.ATIVO FROM CUPOM C
		
		WHERE Ativo = 0 AND C.DESCONTO= @DESCONTO
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT C.COD_CUPOM AS 'CÓDIGO',C.QR_COD AS 'NOME',C.DESCONTO AS 'DESCONTO',C.DT_VALIDADE AS 'DATA DE VALIDADE',C.ATIVO FROM CUPOM C
		
		WHERE Ativo = 1 AND C.DESCONTO= @DESCONTO
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT C.COD_CUPOM AS 'CÓDIGO',C.QR_COD AS 'NOME',C.DESCONTO AS 'DESCONTO',C.DT_VALIDADE AS 'DATA DE VALIDADE',C.ATIVO FROM CUPOM C
	END
GO


CREATE PROCEDURE SP_SELECT_CUPOM_DATA
@ATIVO INT,
@DATA DATE
	AS
	IF(@ATIVO) = 0
	BEGIN
		SELECT C.COD_CUPOM AS 'CÓDIGO',C.QR_COD AS 'NOME',C.DESCONTO AS 'DESCONTO',C.DT_VALIDADE AS 'DATA DE VALIDADE',C.ATIVO FROM CUPOM C
		
		WHERE Ativo = 0 AND C.Dt_Validade = @DATA
	END
	IF(@ATIVO) = 1
	BEGIN
		SELECT C.COD_CUPOM AS 'CÓDIGO',C.QR_COD AS 'NOME',C.DESCONTO AS 'DESCONTO',C.DT_VALIDADE AS 'DATA DE VALIDADE',C.ATIVO FROM CUPOM C
		
		WHERE Ativo = 1 AND C.Dt_Validade = @DATA
	END

	IF(@ATIVO) = 2
	BEGIN
		SELECT C.COD_CUPOM AS 'CÓDIGO',C.QR_COD AS 'NOME',C.DESCONTO AS 'DESCONTO',C.DT_VALIDADE AS 'DATA DE VALIDADE',C.ATIVO FROM CUPOM C
	END
GO

--FALE CONOSCO
CREATE TRIGGER TG_STATUS_MENSAGEM
ON FALE_CONOSCO
FOR INSERT
AS
	BEGIN
		DECLARE
		@CODMSG INT
			SELECT @CODMSG = CODMSG FROM INSERTED
			UPDATE FALE_CONOSCO SET STATUS_MSG = 'PENDENTE', DATA_MSG = GETDATE() WHERE CODMSG = @CODMSG
	END
GO

CREATE PROCEDURE SP_ENVIAR_FALE_CONOSCO
@FKCLIENTE INT,
@MSG VARCHAR(400)
AS
BEGIN
	INSERT INTO FALE_CONOSCO ( FK_COD_CLI, MSG, STATUS_MSG, DATA_MSG,FK_COD_FUNC, DATA_RESP_MSG, RESP_MSG) 
	VALUES ( @FKCLIENTE, @MSG, 'ERRO','01/01/2001', NULL, NULL, NULL)
END
GO

CREATE PROCEDURE SP_SELECT_FALE_CONOSCO_PENDENTE
AS
BEGIN
	SELECT FL.CODMSG as 'CODIGO',C.Nome_Cli AS 'NOME', FL.MSG AS 'MENSAGEM', FL.DATA_MSG AS 'DATA', FL.STATUS_MSG AS 'STATUS' FROM Fale_Conosco FL
	INNER JOIN CLIENTE C ON C.COD_CLI = FL.FK_COD_CLI
	WHERE FL.STATUS_MSG = 'PENDENTE' AND C.ATIVO = 1
END
GO

CREATE PROCEDURE SP_SELECT_FALE_CONOSCO_RESPONDIDOS
AS
BEGIN
	SELECT FL.CODMSG as 'CODIGO',C.Nome_Cli AS 'NOME', FL.MSG AS 'MENSAGEM', FL.RESP_MSG AS 'RESPOSTA', FL.DATA_MSG AS 'DATA', FL.STATUS_MSG AS 'STATUS' FROM Fale_Conosco FL
	INNER JOIN CLIENTE C ON C.COD_CLI = FL.FK_COD_CLI
	WHERE FL.STATUS_MSG = 'RESPONDIDO' AND C.ATIVO = 1
END
GO
--EXEC SP_ENVIAR_FALE_CONOSCO 3, 'Posso ser'

--EXEC SP_SELECT_FALE_CONOSCO_PENDENTE
SELECT * FROM FALE_CONOSCO