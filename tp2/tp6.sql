SET SQL_SAFE_UPDATES = 0;
--a
SELECT *
DELETE c
FROM compo c
JOIN bon b ON c.id_bon = b.id
WHERE month(date_cmde) = 4 AND year(date_cmde) = 2019;

--b
