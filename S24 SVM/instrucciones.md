lms.ebac.mx /lesson/dfae3cd0-1d1c-469e-84ff-24d3983efbf5
Práctica — EBAC LMS
3-4 minutes
¡Bienvenidos a la actividad práctica del módulo! 

Antes de empezar

El objetivo de esta actividad es que efectúes un análisis de clasificación mediante Máquinas de soporte vectorial que permita desarrollar un modelo predictivo basado en distintas métricas aplicadas a una base de datos grande.

Entregable: Un Jupyter Notebook (archivo de extensión .ipynb), archivo PDF y capturas de pantalla en el espacio de respuesta que muestren tanto el código desarrollado como la solución al problema planteado, incluyendo los comentarios que sean pertinentes a las preguntas que se plantean. Entregas sin estos elementos no serán calificadas.

¡Buena suerte!

Paso a paso:

Considere la base de datos “recursos_humanos.csv” sobre empleados que abandonan una empresa.


El objetivo es analizar porqué los empleados deciden irse con la competencia y éste podría ser un desafío serio para un departamento de recursos humanos, el cual se podría abordar mediante modelos predictivos de Machine Learning. Las variables manejadas son:

satisfaction_level: Nivel de satisfacción. 
last_evaluation: Puntaje obtenido en la ultima evaluación. 
average_montly_hours: Promedio de horas trabajadas al mes. 
time_spend_company: Tiempo del usuario en la compañía. 
work_accident: Si el empleado ha tenido algún accidente laboral (1 = Sí, 0 = No). 
promotion_last_5years: Si el empleado ha sido promovido en los últimos 5 años. 
sales: Departamento donde trabaja. 
salary: Categoría del salario. 
left: Variable a predecir y si el empleado dejó o no la empresa (1 = Sí, 0 = No).
Cargue la base de datos en Python y asegúrese de re-codificar las variables categóricas de manera pertinente antes de iniciar su análisis (Sugerencia: Use “pd.get_dummies”) 
Use el método de Máquinas de soporte vectorial para generar un modelo predictivo. Para dicho fin, pruebe los 4 diferentes tipos de Kernel discutidos en esta lección. En cada caso elabore un mapa de calor para las matrices de confusión así como un reporte de clasificación detallado. Interprete verbalmente sus indicadores. 
¿Cuál resultó ser el modelo predictivo más adecuado? Explique su razonamiento. 
¿Qué resultado pronosticaría para un empleado con los siguientes indicadores? 
Recuerda guardar el archivo en formato notebook (.ipynb), archivo PDF y capturas de pantalla,
Titula el archivo como 'Tarea M22-CD – TU NOMBRE'.
Archivo final

¿Cómo presentar su entrega?

Un Jupyter Notebook (archivo de extensión .ipynb), archivo PDF y capturas de pantalla en el espacio de respuesta que muestren tanto el código desarrollado como la solución al problema planteado, incluyendo los comentarios que sean pertinentes a las preguntas que se plantean. Entregas sin estos elementos no serán calificadas.

Tiempo estimado de resolución: 40 minutos

El tutor revisará tu actividad en un plazo de 3 días laborables.

La calificación mínima para aprobar esta actividad es 70. Si no alcanzas esta calificación, puedes volver a hacerla

Adjuntar archivo de máximo 500 MB

¿Tienes preguntas sobre esta lección? ¡Pregúntale a un tutor!

Siguiente:

Recapitula el trayecto

Completa la tarea para completar la lección

¿Te gustó el contenido de esta actividad?