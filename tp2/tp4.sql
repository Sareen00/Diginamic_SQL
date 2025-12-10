SELECT * 
FROM article 
ORDER BY designation ASC;

--du plus eleve au moins eleve
SELECT * 
FROM article 
ORDER BY prix DESC;


SELECT * 
FROM article 
WHERE designation LIKE '%boulon%'

SELECT * 
FROM article 
WHERE lower(designation) LIKE '%sachet%'


SELECT * 
FROM article a JOIN fournisseur f ON a.id_fou = f.id
ORDER BY f.nom ASC, a.prix DESC;