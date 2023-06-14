

-- CARDINALIDADE

-- 1 X 1 Uma tabela pode possuir uma unica relação
-- 1 x N A tabela pode ter uma ou mais relações
-- N X 1 Onde eu tenho muitas tabelas relacionando com somente uma
-- 1 X Uma tabela sem relação 

-- JORNADA DO USUARIO

CREATE TABLE USUARIOS (

idUsuario  INT PRIMARY KEY,
nome VARCHAR(30) NOT NULL,
cpf INT(11) UNIQUE,
dataNacimento DATE,
sexo VARCHAR(10) NOT NULL,
email VARCHAR(30) UNIQUE,
contato VARCHAR(15) 
);

CREATE TABLE ENDERECOS ( 

idEndereco INT,
cep INT(8) NOT NULL,
rua  VARCHAR(30) NOT NULL,
numero  VARCHAR(30) NOT NULL,
cidade  VARCHAR(30) NOT NULL,
bairro  VARCHAR(30) NOT NULL,
complemento  VARCHAR(30) NOT NULL,
uf CHAR(2) NOT NULL,
id_usuario INT UNIQUE,

FOREIGN KEY(id_usuario)
REFERENCES USUARIOS(idUsuario)
);

-- CICLO DE COMPRA

PRODUTOS

id
sku
nome
categoria
quantidade
valor
usuario_id

ESTOQUE

id
categoria
disponibilidade
nome_produto
sku



-- FINALIZACAO

