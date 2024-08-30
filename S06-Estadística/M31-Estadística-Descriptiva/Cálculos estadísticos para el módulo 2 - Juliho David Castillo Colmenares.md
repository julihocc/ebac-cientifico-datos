# Cálculos estadísticos para el módulo 2 - Juliho David Castillo Colmenares

## Ejercicio uno

### Planteamiento

Dado el siguiente gráfico, escribe para cada número con qué parte está relacionado.

Las opciones son: 1er Cuartil, Mínimo, Mediana, 2o Cuartil, Máximo, Outlier, 3er Cuartil. (Sólo 6 opciones son correctas).

![img](https://static.lms.ebac.mx/embeds/a7a0fb88-8eca-420b-bd1a-7c8ef775d9fc/original.png)

### Solución

A fin de utilizar de manera única las 6 posibles respuestas, las etiquetas se asignarían de la siguiente manera:

1.   Outlier
2.   Máximo
3.   3er cuartil
4.   Mediana
5.   Primer cuartil
6.   Mínimo

### Observaciones

Sin embargo, es claro que punto con valor de `2.1` es mayor que cualquier otro en el diagrama de caja mostrado. Por tanto podríamos decir que es el máximo. Sin embargo, al estar fuera de los “bigotes”, en particular del bigote superior, se consideraría un valor atípico (‘outlier’). 
## Ejercicio 2

### Planteamiento

Dado el siguiente set de datos, {10,15,12,8,17,14,20,8,12,16,14} calcula:

-   Media
-   Moda
-   Mediana
-   Máximo
-   Mínimo
-   Varianza
-   Desviación típica

Anota los resultados de cada cálculo.

### Solución

Resultados de los cálculos estadísticos:

-   **Media**: 13.27
-   **Moda**: 8 
-   **Mediana**: 14.0
-   **Máximo**: 20
-   **Mínimo**: 8
-   **Varianza**: 14.02
-   **Desviación Típica**: 3.74

### Observaciones

La distribución es multimodal, ya que los datos 8, 12 y 14 se repiten dos veces cada uno, pero elegimos `8` por ser la moda al centro.

## Ejercicio 3

### Planteamiento

Con cada gráfico, menciona que tipo de correlación se tiene en los datos.

Las opciones son: correlación nula, correlación ideal negativa, correlación negativa, correlación ideal positiva, correlación positiva.

1.   ![img](./assets/original-1702922514212-4.png)
2.   ![img](./assets/original-1702922521436-7.png)
3.   ![img](./assets/original-1702922533045-10.png)
4.   ![](./assets/original-1702922543620-13.png)
5.   ![img](./assets/original.png)

### Respuestas

1.   Correlación positiva
2.   Correlación nula
3.   Correlación negativa
4.   Correlación ideal positiva 
5.   Correlación ideal negativa

## Ejercicio 4

### Planteamiento

Ante el siguiente gráfico, considere lo siguiente: 

-   ¿Qué modelo se está utilizando? 
-   ¿Con qué indicador lo determinaría? 
-   y ¿Qué interpretación le daría?

![Cómo se relaciona el Coeficiente de Correlación de Pearson (r) y el  Coeficiente de Determinación r Cuadrado (r²)](./assets/original.jpeg)

### Solución

Interpretación del Gráfico de Dispersión

**Modelo Utilizado:**
El gráfico muestra una línea de tendencia que representa un modelo de regresión lineal. La ecuación de la línea de tendencia es `y = 3,6x + 2,6`.

**Indicador Determinante:**
El indicador clave que se está utilizando para determinar la adecuación del modelo es el coeficiente de determinación, representado por `R² = 0,864`.

**Interpretación:**
El coeficiente `R²` indica qué tan bien los valores se ajustan al modelo de regresión lineal. Un `R²` de 0,864 significa que aproximadamente el 86,4% de la variabilidad de los datos observados puede ser explicada por el modelo lineal propuesto. Esto sugiere que el modelo tiene una buena capacidad predictiva en relación con los datos proporcionados.

En términos del modelo, la pendiente `3,6` indica que por cada unidad que aumenta `x`, el valor de `y` aumenta en 3,6 unidades. El término independiente `2,6` es el valor de `y` cuando `x` es 0, lo que se conoce como la intersección con el eje Y.
