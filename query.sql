SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN (2,3,13)


SELECT*
FROM Person.Person
WHERE BusinessEntityID = 2
OR BusinessEntityID = 3
OR BusinessEntityID = 13
