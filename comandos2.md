# Estruturas básica de comandos em SQL (parte 2)

## BETWEEN

É utilizado para encotrar o valor minimo e máximo de uma variavel

Pela logica diz-se que é <Strong>"valor BETWEEN minimo AND máximo" é mesma coisa que dizer</strong>

<strong>Valor >= minimo AND valor <= máximo;</strong>

```
SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 and 1500;
```

Para utilizar a negação da formula ou seja dizer que vc quer os dados que estão fora daquele intervalo, basta adicionar "NOT" em frente ao BETWEEN assim negado a sentença


```
SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 and 1500;
```

Este comando também pode ser utilizado com datas, mas temos que utilizar o formato de <strong>YYYY/MM/DD</strong> ou seja, se quiser a data de <strong>"01/03/2021"</strong> teria que ser inserido como <strong>"2021/03/01"</strong>


```
SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' and '2010/01/01'
ORDER BY HireDate 
```

## IN

É um comando utilizado para identificar os valores contidos dentro de uma tabela, passados na lista de valores, ele é utilizado juntamente com o WHERE. Na prática podemos descrever o codigo da seguinte forma.

```
valor IN (valor1, valor2)
color IN ('blue', 'black')
```

Você também pode encontrar uma variação deste comando da seguinte maneira 

<strong>Valor IN (SELECT valor FROM nomeDaTabela)</strong>

Isso é chamado de subquery ou SubSelect, ao invés de comparar os valores exatos ele vai compara os valores com outra tabéla.

Este codigo facilita muito os dados de pesquisa por conta do seguinte exemplo

```
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2,3,13)
```
Este codigo retorna as linhas da tabela apenas dos elementos 2, 3 e 13 de BusinessEntityID. Se tivesse que fazer ele de outra maneria sem o IN seria dessa forma:

```
SELECT*
FROM Person.Person
WHERE BusinessEntityID = 2
OR BusinessEntityID = 3
OR BusinessEntityID = 13
```

Ambos retornam o mesmo resultado, mas utilizando o IN o codigo fica mais rapido se ser feito e deixa o codigo mais limpo.

Lembrondo que você pode utilizar o NOT na maioria dos operadores para retornar a variavel negativa da função

```
SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN (2,3,13)
```

