# Polinomio Interpolador de Newton

## Función

Cálculo del polinomio interpolador de Newton o diferencias divididas en Matlab con n puntos

## Funcionamiento

1. Se guardan los datos en los arreglos `xi` y `y`.
1. Se hace una copia del vector original `x` en `cx` porque se usará mas tarde.
1. Se calcula el numerador y el denominador del siguiente término. El numerador no es gran problema pero si te das cuenta el denominador puede ser dividido en dos vectores.

x|y|
---|---
1|2
3|3
4|2
8|10

En la siguiente iteración los numeros que se ocupan serán todos los del vector `x` menos el segundo y todos los del vector `y` menos el último.

x|y|
---|---
1|2
4|3
8|2

Seguiremos asi...

x|y
---|---
1|2
8|3


## Funciones de formato de Matlab

    format rat;
Muestra la salida de los numeros del fprintf en fracciones.
    ```pretty(R)```
Le da formato al resultado con guiones para que se vea más ordenado y más parecido al escrito en papel.