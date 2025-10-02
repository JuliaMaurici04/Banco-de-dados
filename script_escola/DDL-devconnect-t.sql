--DDL
CREATE DATABASE db_devconnect;

USE db_devconnect;

CREATE TABLE tb_usuario(
id					INT IDENTITY(1, 1)	PRIMARY KEY,
nome_completo		NVARCHAR(255)						NOT NULL,
nome_usuario		NVARCHAR(50)						NOT NULL,
email				NVARCHAR(255)						NOT NULL,
senha				NVARCHAR(50)		UNIQUE			NOT NULL,
foto_perfil_url		NVARCHAR(150)						NOT NULL

);

SELECT * FROM tb_usuario;


CREATE TABLE tb_publicacao(
id_Publi	INT					NOT NULL,
id_Usuario	INT					NOT NULL,
descricao	NVARCHAR(255)		NOT NULL,
img_url		NVARCHAR(255)		NOT NULL,
data_publi	DATE				NOT NULL,

);

SELECT * FROM tb_publicacao;

CREATE TABLE tb_curtida(
id_Curtida	INT NOT NULL
id_Usuario	INT NOT NULL
id_Postagem	INT NOT NULL

id_Usuario INT FOREIGN KEY REFERENCES id_Curtida

);

SELECT * FROM tb_curtida;

CREATE TABLE tb_cometario(
id_comentario	INT IDENTITY(1, 1) PRIMARY KEY,
id_usuario		INT IDENTITY(1, 1) PRIMARY KEY,
id_postagem		INT IDENTITY(1, 1) PRIMARY KEY,
texto			NVARCHAR(255)		NOT NULL,
data_coment		DATE				NOT NULL,

);

SELECT * FROM tb_cometario;

CREATE TABLE tb_seguidor(
id_usuario_seguir  INT IDENTITY(1, 1) PRIMARY KEY,
id_usuario_seguido INT IDENTITY(1, 1)PRIMARY KEY, 

);

SELECT * FROM tb_seguidor;
