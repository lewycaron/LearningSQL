# Estruturas básica de comandos em SQL (parte 2)

## BETWEEN

ë utilizado para encotrar o valor minimo e maximo de uma variavel

Pela logica diz-se que é <Strong>"valor BETWEEN minimo AND maximo" é mesma coisa que dizer</strong>

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
