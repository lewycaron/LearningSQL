# Estruturas básica de comandos em SQL (parte 3)


## Funções de agragação em SQL

Funções de agregação basicamente agregam ou combinam dados de uma tabela em 1 resoltado só

- MIN (valor minimo da coluna)
- MAX (valor máximo da coluna)
- SUM (soma dos valores da coluna)
- AVG (média dos valores da coluna)

Exemplo:

```
SELECT TOP 10 SUM(linetotal)
FROM Sales.SalesOrderDetail
``` 


Você também pode colocar um apelido na coluna que apresentará o resultado inserindo 'AS "apelido"' logo após o valor da coluna.


```
SELECT TOP 10 SUM(linetotal) AS 'Soma'
FROM Sales.SalesOrderDetail
```

 ## GROUP BY

 É responsável por dividir o resultado da sua pesquisa em grupos, para cada grupo você pode aplicar uma função de agragação, por exemplo:

 - calcular a soma de itens
 - contar o número de itens daquele grupo

 ```
 