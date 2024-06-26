CREATE TABLE CLIENTE(
 Cod_Cliente INT PRIMARY KEY NOT NULL IDENTITY(1,1),
 CPF INT NOT NULL,
 Nome CHAR(50) NOT NULL,
 Endere�o CHAR(100) NOT NULL,
 Telefone INT NOT NULL,
 Email CHAR(50) NOT NULL,
 Senha CHAR(16) NOT NULL,
 Data_ALT DATE NULL,
 Data_EXC DATE NULL,
 Data_INC DATE NOT NULL
);
GO

CREATE TABLE ANIMAL(
 Cod_Animal INT PRIMARY KEY NOT NULL,
 Cod_Cliente INT FOREIGN KEY REFERENCES CLIENTE,
 Nome CHAR(50) NOT NULL,
 Sexo CHAR(1) NOT NULL,
 Ra�a CHAR(50) NOT NULL,
 Porte CHAR(1) NOT NULL,
 Data_ALT DATE NULL,
 Data_EXC DATE NULL,
 Data_INC DATE NOT NULL
);
GO

CREATE TABLE SERVI�OS(
 Cod_Servi�o INT PRIMARY KEY NOT NULL,
 Cod_Cliente INT FOREIGN KEY REFERENCES CLIENTE,
 Cod_Animal INT FOREIGN KEY REFERENCES ANIMAL,
 Tipo_Servi�o CHAR(50) NOT NULL,
 Valor MONEY NOT NULL,
 Agendamento DATE NOT NULL
);
GO

CREATE TABLE LA�OS_LATIDOS(
 Cod_Loja INT PRIMARY KEY NOT NULL,
 Telefone INT NOT NULL,
 Endere�o CHAR(100) NOT NULL,
 CNPJ INT NOT NULL
);
GO

SELECT * FROM ANIMAL
GO

INSERT INTO CLIENTE (CPF,Nome,Endere�o,Telefone,Email,Senha,Data_INC)
VALUES (12345678910,'Claudio','Rua Realista dos Anjos',912345678,'claudio@gmail.com','12345','12-12-2005');
GO

ALTER TABLE ANIMAL
ALTER COLUMN Porte CHAR(10)
GO

INSERT INTO ANIMAL (Cod_Animal,Cod_Cliente,Nome,Sexo,Ra�a,Porte,Data_INC)
VALUES (1,2,'Rex','M','Labrador','M�dio','12-12-2005');
GO

ALTER TABLE CLIENTE
ALTER COLUMN CPF NUMERIC(11)

ALTER TABLE CLIENTE
ALTER COLUMN Telefone NUMERIC(9)

DELETE CLIENTE
WHERE Cod_Cliente = 2
