# Estruturas basica de comandos em SQL

create database nomeDaBase; -// ultilizado para criar um banco de dados
drop database nomeDaBase;   -// utilizado para deletar o banco de dados


# SELECT

o comando SELECT é utilizado para selecionar colunas especificas definidas pela tabela dentro do comando FROM como exemplo abaixo:

SELECT coluna1, coluna2
FROM tabela

É possivel também utilizar o "*" no lugar da coluna para que selecionar todas as colunas na tabela.

SELECT *
FROM tabela

Podemos observervar também  que tanto SELECT quanto FROM estão em maiusculo, esta é uma converção utilizada para identificar os comandos referentes ao SQL para que os seus comandos se diferenciem dos nomes das tabelas e colunas.

Exemplo pratico a ser utilizado (com o banco de dados "AdventureWorks2017" já instalado)

    "Gostaria de selecionar todos os nomes mais comuns no sistema e preciso de uma lista de todos os nomes cadastrados no sistema."

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


