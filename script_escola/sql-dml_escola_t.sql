--Usar um banco ja criado
USE db_escola_T;


--INSERIR UM REGISTRO NA TABELA ESCOLA
INSERT INTO tb_escola	(nome, endreco)
VALUES					('Torloni','Estradas das lágrimas, 579 - São José');

SELECT * FROM tb_escola;


--INSERIR UM REGISTRO NA TABELA TURMA
USE db_escola_T;


--INSERIR UM REGISTRO NA TABELA TURMA
INSERT INTO tb_turma(serie, periodo, numero_sala, nome_turma)
VALUES					(2, 'Manhã', 4, 'Segundo ano A-DS');

SELECT * FROM tb_turma;

--INSERIR UM REGISTRO NA TABELA PROVA
INSERT INTO tb_prova	(nome_professor, materia, duracao, nota, data_prova)
VALUES					('Ana Claudia', 'Educacão Física',	'13:15:00', 0,		'2025-09-25'),
						('Rogeria',		'Matematica',		'14:20:00', 10,		'2025-09-26'),
						('Adair',		'Sociologia',		'08:30:00', 7.5,	'2025-09-29');

SELECT * FROM tb_prova;

--INSERIR UM REGISTRO NA TABELA ALUNO
INSERT INTO tb_aluno (nome, cpf, matricula, data_nasc, id_escola)
VALUES
		('Elaine Isabelle Renata Silva',	'70582240565',	'0475Elaine',	'2009-03-20', 1),
		('Thomas Calebe Pietro Almeida',	'54169291620',	'0498Thomas',	'2007-09-15', 1),
		('Breno Gabriel Araújo',			'75138207750',	'0753Breno' ,	'2006-06-17', 1),
		('Mathias Vasconcellos dos Santos', '385127236'	 ,	'064Mathias',	'2009-04-19', 1),
		('Givanna Pinheiro da Silva',		'123389860'	 ,	'0826Gio'	,	'2009-08-26', 1),
		('Maria Helena Ribeiro',			'293077654'  ,	'0931MariaH',	'2007-02-22', 1);


SELECT * FROM tb_aluno;








