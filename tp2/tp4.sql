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
ORDER BY prix;

SELECT * 
FROM article 
WHERE lower(designation) LIKE '%sachet%'

--f le tri important au debut puis les prix decroissants
SELECT * 
FROM article a JOIN fournisseur f ON a.id_fou = f.id
ORDER BY f.nom ASC, a.prix DESC;

--g
SELECT *
FROM article a JOIN fournisseur f ON a.id_fou = f.id
WHERE f.nom = 'Dubois & Fils'

--h
SELECT AVG(prix) AS prix_moyen
FROM article a JOIN fournisseur f ON a.id_fou = f.id
WHERE f.nom = 'Dubois & Fils';

--i
SELECT AVG(prix) AS prix_moyen
FROM article a JOIN fournisseur f ON a.id_fou = f.id
GROUP BY a.id_fou;

--j
SELECT *
FROM bon JOIN compo ON bon.id = compo.id_bon
WHERE bon.date_cmde >= '2019-03-01' AND bon.date_cmde <= '2019-04-05';

--k
SELECT  *
FROM bon JOIN compo ON bon.id = compo.id_bon JOIN article ON compo.id_art = article.id
WHERE article.designation LIKE '%boulon%';

--l
SELECT bon.numero, article.designation, fournisseur.nom
FROM bon 
JOIN compo ON bon.id = compo.id_bon 
JOIN article ON compo.id_art = article.id 
JOIN fournisseur ON article.id_fou = fournisseur.id
WHERE article.designation LIKE '%Boulon%';

--m
SELECT *, SUM(compo.qte * prix) AS prix_total
FROM bon JOIN compo ON bon.id = compo.id_bon JOIN article ON compo.id_art = article.id
GROUP BY bon.id;

-- resultat (561.62, 262.54 ,365.75 etc)

--n
SELECT SUM(qte) AS nb_articles, bon.id
FROM bon JOIN compo ON bon.id = compo.id_bon JOIN article ON compo.id_art = article.id
GROUP BY bon.id;

--o
SELECT bon.numero, SUM(qte)  AS nb_articles
FROM bon JOIN compo ON bon.id = compo.id_bon JOIN article ON compo.id_art = article.id
GROUP BY bon.id
HAVING nb_articles > 25;

--p
SELECT bon.numero, SUM(compo.qte * prix) AS prix_total
FROM bon JOIN compo ON bon.id = compo.id_bon JOIN article ON compo.id_art = article.id
WHERE date_cmde BETWEEN '2019-04-01' AND '2019-04-30'
GROUP BY bon.numero;
--mounth(date_cmde) = 4 permet de selectionner juste le mois dans la date
--a

--b

--c

--d