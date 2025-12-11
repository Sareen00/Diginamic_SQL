--a
UPDATE article
SET designation = lower(designation)
WHERE id = 2;

--b
UPDATE article
SET designation = upper(designation)
WHERE prix > 10;

--c
UPDATE article a
SET a.prix = a.prix * 0.9
WHERE NOT EXISTS (
    SELECT 1
    FROM compo c
    WHERE c.id_art = a.id
);



--d
UPDATE compo c
JOIN article a ON c.id_art = a.id
JOIN fournisseur f ON a.id_fou = f.id
SET c.qte = c.qte * 2
WHERE f.nom = 'Française d''Imports';

--e
UPDATE article
SET designation = SUBSTRING('(' IN )