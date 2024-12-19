SELECT *
FROM PETS;

-------------------------------

select * from pets
left join owners
on pets.ownerid = owners.ownerid;


-------------------------------
SELECT PETS.NAME as cria_peluda, OWNERS.NAME as hooman
FROM PETS
LEFT JOIN OWNERS
ON PETS.OWNERID = OWNERS.OWNERID;

------------------------------- PT2


------------------------------- LEFT JOIN
SELECT A.NAME as cria_peluda, B.NAME as hooman
FROM PETS AS A
LEFT JOIN OWNERS AS B
ON A.OWNERID = B.OWNERID
WHERE LEFT(A.NAME, 1) = LEFT(B.NAME, 1);



------------------------------- RIGHT JOIN
SELECT A.NAME as cria_peluda, B.NAME as hooman_name
FROM OWNERS AS B
RIGHT JOIN PETS AS A
ON A.OWNERID = B.OWNERID;
--WHERE LEFT(A.NAME, 1) = LEFT(B.NAME, 1);


------------------------------- INNER JOIN
SELECT *
FROM PROCEDUREHISTORY;




SELECT *
FROM PETS AS A
INNER JOIN PROCEDUREHISTORY AS B
ON A.PETID = B.PETID
ORDER BY A.PETID ASC;

SELECT *
FROM PETS AS A
RIGHT JOIN PROCEDUREHISTORY AS B
ON A.PETID = B.PETID
WHERE A.PETID IS NOT NULL;