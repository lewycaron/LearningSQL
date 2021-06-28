## Estruturas basica de comandos em SQL

create database nomeDaBase; -// ultilizado para criar um banco de dados <br>
drop database nomeDaBase;   -// utilizado para deletar o banco de dados

'''
SELECT
DISTINCT
WHERE
COUNT
TOP
ORDER BY
'''

# SELECT

o comando SELECT é utilizado para selecionar colunas especificas definidas pela tabela dentro do comando FROM como exemplo abaixo:

SELECT coluna1, coluna2
FROM tabela

É possivel também utilizar o "*" no lugar da coluna para que selecionar todas as colunas na tabela.

SELECT *
FROM tabela

Podemos observervar também  que tanto SELECT quanto FROM estão em maiusculo, esta é uma converção utilizada para identificar os comandos referentes ao SQL para que os seus comandos se diferenciem dos nomes das tabelas e colunas.

Exemplo pratico a ser utilizado (com o banco de dados "AdventureWorks2017" já instalado)

Gostaria de selecionar todos os nomes mais comuns no sistema e preciso de uma lista de todos os nomes cadastrados no sistema.

a soluçao seria:

SELECT FirsName, LastName
FROM Person.Person


# DiSTINCT

Utilizado para retornar valores exatos sem contar os valores duplicados de uma coluna dentro de uma tabela.

SELECT DISTINCT coluna1,
FROM tabela

exemplo: 
    Quantos sobrenomes unicos tem dentro da tabela Person.Person?

solução

SELECT DISTINCT Lastname
FROM Person.Person


# WHERE 

Usado para extrair apenas algumas inforçoes das tabelas.

SELECT coluna1, coluna2, colunaX
FROM tabela
WHERE condição;

>

Operadores   -   Descriçao

=               IGUAL
>               MAIOR QUE
<               MENOR QUE
>=              MAIOR QUE OU IGUAL
<=              MENOR QUE OU IGUAL
<>              DIFERENTE
AND             OPERADOR LOGICO E
OR              OPERADOR LOGICO OU

>


exemplo:

SELEC *
FROM Person.Person
WHERE color = 'blue' OR color = 'black'


SELEC *
FROM Production.product
WHERE listPrice > 1500 AND listPrice < 3000

-- A equipe de produçao de produtos precisa do nome de todas as peças que pesam mais que 500kg mas não mais que 700kg para inspeção

SELECT *
FROM Production.Product
WHERE Weight >= 500 AND Weight <= 700


-- Foi pedido pelo MKT  uma relaçao de todos os empregados(employees) que são casados (single=solteiro; marries=casados;) e são assalariados(salaried)

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' AND SalariedFlag = '1'


-- Um usário chamado Peter Krebs está devendo um pagamento, consiga o email dele para que possamos enviar uma cobrança!
(vair ter que usar a tabela persno.person e depois a tabela person.emailaddress)

SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' AND LastName = 'Krebs'

SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = '26'


# COUNT

Serve para definir exatamente o numero de linhas definido pela condição.

SELECT COUNT(*)
FROM TABELA

SELECT COUNT(DISTINCT COLUNA1)
FROM TABELA

Retorna apenas o valor exato do numero de linhas sem precisa mostrar toda os dados da coluna ou tabela, se aplicarmos isso a tabela person.person por exemplo teremos um retorno apenas do numero total que é: 19972

SELECT COUNT(*)
FROM Person.Person

Se filtrarmos apenas para numeros de titulos na tabela teremos um retorno de 1009 titulos.

SELECT COUNT(Title)
FROM Person.Person

Mas se filtrarmos por titulos unicos

SELECT COUNT(DISTINCT Title)
FROM Person.Person

teremos um retorno de apenas 6 titulos diferente na tabela inteira.

--Quantos produtos temos cadastrados em nossa tabela de produtos (production.Product)


SELECT count(*)
FROM Production.Product


-- Quantos tamanhos de produtos temos cadastrados em nossa tabela

SELECT COUNT(Size)
FROM Production.Product


# TOP

Serve para limitar a quantidade de dados exibidos no resultado

SELECT TOP 1O *
FROM TABELA


# ORDER BY

Permite que você ordene os resultados em uma coluna por ordem crescente ou decrescente.

Crescente/Decrescente

SELECT *
FROM TABELA
ORDER BY coluna asc/desc

É possivel utilizar o filtro para duas colunas, como por exemplo nome e sobrenome

SELECT *
FROM Person.Person
ORDER BY FirstName asc, LastName desc

Tambem é possivel utilizar uma coluna que não foi citada para ordenamento.

SELECT FirstName, LastName
FROM Person.Person
ORDER BY MiddleName asc/desc

*(Por boa prática alguns bancos de dados não permitem um ordenamento por colunas que não foram citadas no SELECT)*


-- Obter o Productid dos 10 produtos mais caros cadastrados no sistema,s listando do mais caro para o mais barato.

SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice desc


-- Obeter o nome e o numero do produto dos produtos que tem o producid entre 1-4

SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc
