### ```¿Para qué sirve redo? ¿Qué diferencias principales tiene con retry? ```

Redo se utiliza dentro de un bucle o iteración para volver a ejecutar el bloque actual (la misma iteración del bucle) sin evaluar de nuevo la condición del bucle. Es decir, la iteración actual se repite sin avanzar al siguiente ciclo o sin re-evaluar las condiciones del bucle.
Solo funciona dentro de bucles (for, while, until, each, etc.). 
Se usa si quieres repetir la misma iteración debido a alguna condición específica sin iniciar una nueva iteración ni cambiar el estado del bucle.

Retry se utiliza en el contexto de manejo de excepciones (begin..rescue) y reinicia todo el bloque begin desde el principio. Es útil cuando se desea volver a intentar ejecutar el código después de un error, con la posibilidad de corregir las condiciones que causaron la excepción.

Conclusión:
- redo es útil para repetir la misma iteración dentro de un bucle sin avanzar a la siguiente.
- retry es útil para reiniciar la ejecución de un bloque begin tras capturar una excepción en un bloque rescue.
- redo actúa en bucles, mientras que retry se usa en bloques de manejo de excepciones.
