--toutes les données des articles*
SELECT * FROM article; 
--tous lkes articles de plsu de 2euros
SELECT ref,designation FROM article WHERE prix>2; 
--tous entre 2et 6.25
SELECT * FROM article WHERE prix >= 2 AND prix <= 6.25; 
--tous entre 2et 6.25
SELECT * FROM article WHERE prix BETWEEN 2 AND 6.25; 

---articles dont le fournisseur a l'id 1 et dont le prix n'est pas entre 2 et 6.25
SELECT * 
FROM article 
WHERE id_fou = 1 AND prix NOT BETWEEN 2 AND 6.25
ORDER BY prix DESC;

--articles dont le fournisseur a l'id 1 ou 3
SELECT * 
FROM article 
WHERE id_fou = 1 OR id_fou = 3;

--pareil avec IN
SELECT * 
FROM article 
WHERE id_fou IN (1,3);

SELECT * 
FROM article 
WHERE id_fou NOT IN (1,3);

SELECT * 
FROM bon 
WHERE date_cmde >= '2019-02-01' AND date_cmde <= '2019-04-30';