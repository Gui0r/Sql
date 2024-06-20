SELECT a.nome AS Autor, l.titulo AS Título
FROM Autores a
JOIN Livros l ON a.id_autor = l.id_autor;

SELECT nome, telefone
FROM Membros
WHERE nome LIKE 'J%';

SELECT COUNT(*) AS Total_Livros
FROM Livros;

SELECT g.descricao AS Gênero, COUNT(l.id_livro) AS Numero_Livros
FROM Generos g
JOIN Livros l ON g.id_genero = l.id_genero
GROUP BY g.descricao;

SELECT DISTINCT m.nome
FROM Membros m
WHERE m.id_membro IN (
  SELECT e.id_membro
  FROM Emprestimos e
);

SELECT nome
FROM Autores
WHERE id_autor IN (SELECT DISTINCT id_autor FROM Livros)
UNION
SELECT nome
FROM Editoras
WHERE id_editora IN (SELECT DISTINCT id_editora FROM Livros);

SELECT l.titulo
FROM Livros l
WHERE NOT EXISTS (
  SELECT 1
  FROM Emprestimos e
  WHERE e.id_livro = l.id_livro
);


SELECT COUNT(*) AS Total_Emprestimos
FROM Emprestimos;
