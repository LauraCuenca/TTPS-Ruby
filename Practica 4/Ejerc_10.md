### ``` Investigá qué métodos agrega AS a las siguientes clases:```
`1. String`
ActiveSupport extiende la clase String con varios métodos útiles para manipular cadenas de texto. Por ej:
- titleize: Convierte una cadena a formato título, capitalizando las primeras letras de cada palabra.
- camelize: Convierte una cadena en formato "underscore" a formato "CamelCase".
- underscore: Convierte una cadena en formato "CamelCase" a "snake_case".
- humanize: Convierte una cadena en formato "snake_case" a una frase más legible, separando palabras con espacios.
- blank?: Devuelve true si la cadena está vacía o es solo espacios en blanco.
- present?: Devuelve true si la cadena no está vacía.<br>
`2. Array`
ActiveSupport agrega métodos útiles a la clase Array para trabajar con colecciones de elementos. 
Por ej:<br>
- deep_dup: Realiza una duplicación profunda de un arreglo, copiando también los elementos internos.
- blank?: Devuelve true si el arreglo está vacío.
- present?: Devuelve true si el arreglo contiene elementos.
- to_sentence: Convierte un arreglo en una cadena, agregando "and" o "or" antes del último elemento.
- sum: Suma los elementos del arreglo. Para objetos no numéricos, se puede pasar un bloque.
- in_groups_of: Divide el arreglo en subarreglos de un tamaño específico.<br>
`3. Hash`
ActiveSupport también extiende la clase Hash con varios métodos útiles:<br>
- deep_merge: Fusiona dos hashes de forma recursiva, combinando valores anidados.
- symbolize_keys: Convierte todas las claves de un hash en símbolos.
- deep_symbolize_keys: Convierte recursivamente todas las claves del hash en símbolos.
- compact: Elimina las claves con valores nil.<br>
`4. Date`
ActiveSupport agrega varios métodos útiles a la clase Date para trabajar con fechas:<br>
- beginning_of_day: Devuelve la fecha con la hora establecida a las 00:00:00.
- end_of_day: Devuelve la fecha con la hora establecida a las 23:59:59.
- next_day: Devuelve la fecha del día siguiente.
- prev_day: Devuelve la fecha del día anterior.
- advance: Permite avanzar la fecha por una cantidad de días, meses o años.<br>
`5. Numeric`
también extiende la clase Numeric con algunos métodos útiles:
- hours, minutes, seconds: Convierte un número a horas, minutos o segundos.
- to_time: Convierte un número en un objeto Time usando la zona horaria local.
- weeks, months, years: Métodos para convertir un número a semanas, meses o años.

