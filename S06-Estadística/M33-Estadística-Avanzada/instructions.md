¡Bienvenido a la actividad práctica del módulo! 

**Antes de empezar**

En este archivo pondrás en práctica algunos de los conceptos aprendidos de estadística avanzada, como pruebas de normalidad, algunas medidas estadísticas importantes como varianza y desviación estándar, así como el concepto de linealidad aplicado a un ejemplo sobre como predecir el precio de venta de casas de acuerdo a sus diferentes características. La descripción de cada característica la podrás encontrar en el archivo de data_description.txt

**Paso a paso:**

- Descarga el archivo House Pricing.csv. En la sección de Anexos.
- Verifica por medio de pruebas analíticas y visuales como es la distribución de las diferentes variables númericas que se encuentran en el dataset como “Salesprice”, “GrLivArea”, “'2ndFlrSF”. Calculando algunas métricas importantes como la media, la desviación estándar y sus cuártiles.

![img](https://static.lms.ebac.mx/content-files/03329cf7-ad71-4d68-b258-f443a233445a/original.png)

- Calcula las correlaciones entre estás variables y visualiza el resultado en un heatmap, ¿Qué variables correlacionan más con el Precio de Venta?
- Configura un modelo de regresión con todas las variables numéricas por medio de la función OLS de la librería *sm*
- Imprime el reporte de regresión y revisa que variables son estadísticamente significativas para nuestro modelo.
- Por último por medio de la libería *variance_inflation_factor* revisa que variables presentan multicolinealidad
- Con todo el análisis anterior construye el modelo de regresión final excluyendo aquellas variables que consideres necesarias y mide el nivel de precisión del modelo por medio del error cuadratico medio y la R cuadrada. ¿Qué tan preciso fue tu modelo?

**Archivo final**

**¿Cómo presentar su entrega?**

Un Jupyter Notebook (archivo de extensión .ipynb), archivo PDF y capturas de pantalla en el espacio de respuesta que muestren tanto el código desarrollado como la solución al problema planteado, incluyendo los comentarios que sean pertinentes a las preguntas que se plantean. Entregas sin estos elementos no serán calificadas.

**Tiempo estimado de resolución:** 90 minutos