USE db_escola_T;

--Lista os 3 primeiros alunos
SELECT TOP 3 matricula FROM tb_aluno;

SELECT		matricula
FROM		tb_aluno
ORDER BY	id  ASC;

--listar os 3 primeiros alunos
SELECT TOP 3 matricula
FROM tb_aluno
ORDER BY nome ASC;

--lista dos id's dos 3 primeiros alunos que foram recem cadastrados
SELECT TOP 1 matricula
FROM tb_aluno
ORDER BY id DESC;

--todos os alunos que tem o nome Mathias
SELECT nome
FROM tb_aluno
WHERE nome = 'Mathias Vasconcellos dos Santos';

--Lista o nome da escola Torloni
SELECT  nome
FROM tb_escola
WHERE nome = ('Torloni');

--Mostre as turmas que tem o nome SEDUC
SELECT nome_turma
FROM tb_turma
WHERE nome_turma = 'Segundo ano A-DS';

--Exiba
SELECT TOP 2 *
FROM tb_aluno
ORDER BY id DESC;

--Mostre qauntos alunos existe na base
SELECT COUNT(matricula) AS qtd_alunos FROM tb_aluno;

--Mostre os alunos mais novos
SELECT nome, MAX(data_nasc) AS idades_mais_novo FROM tb_aluno;

--Mostre os alunos mais velhos
SELECT nome, MIN(data_nasc) AS idades_mais_velha FROM tb_aluno;

--Exiba a idade mais velha e a idade mais nova em uma unica consulta
SELECT MIN(data_nasc) AS idades_mais_velha, MAX(data_nasc) AS idades_mais_novo FROM tb_aluno;

--Exiba a idade mais velha e a idade mais nova em uma unica consulta(LUCCAS)
SELECT nome, data_nasc
FROM tb_aluno
ORDER BY data_nasc ASC;


--media aritmedica de nota nas provas
SELECT AVG(nota) AS media_nota FROM tb_prova;

--Exiba a soma dos id's de turma
SELECT SUM(id) FROM tb_aluno;

--Mostre os nomes dos alunos mais novos
SELECT MAX(data_nasc) AS idade_mais_novo, nome
FROM tb_aluno
GROUP BY nome
ORDER BY idade_mais_novo DESC;

--Exibir quantas turmas tem no periodo da tarde
SELECT COUNT(periodo)
FROM tb_turma
WHERE periodo = 'Manhã';