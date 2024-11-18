### ```¿Qué hacen y en qué clase define AS los siguientes métodos?```
`1. blank?`
Clase: Object (también en colecciones como Array, String, Hash, etc.).
Descripción: Devuelve true si el objeto es considerado "vacío". Esto aplica a varios tipos de objetos, por ejemplo: cadenas vacías, arreglos vacíos, hashes vacíos, o nil.<br>
`2. present?`
Clase: Object (también en colecciones como Array, String, Hash, etc.).
Descripción: Es la contraparte de blank?. Devuelve true si el objeto no es "vacío".<br>
`3. presence`
Clase: Object
Descripción: Devuelve el objeto si es "presente" (no vacío), de lo contrario devuelve nil.<br>
`4. try`
Clase: Object
Descripción: Permite llamar métodos en un objeto de manera segura sin lanzar una excepción si el objeto es nil. Si el objeto es nil, try devuelve nil en lugar de generar un error.<br>
`5. in?`
Clase: Object
Descripción: Verifica si el objeto está incluido en el conjunto dado (generalmente un Array o Range).<br>
`6. alias_method_chain`
Clase: Module
Descripción: Permite encadenar métodos, creando una versión original de un método y una nueva versión modificada del mismo. Este método ha sido descontinuado en Rails 5.<br>
`7. delegate`
Clase: Module
Descripción: Delegación de métodos a otro objeto, permitiendo que los métodos sean enviados a un objeto de otro tipo, sin tener que escribir el código explícitamente.<br>
`8. pluralize`
Clase: String
Descripción: Convierte una cadena en su forma plural.<br>
`9. singularize`
Clase: String
Descripción: Convierte una cadena en su forma singular.<br>
`10. camelize`
Clase: String
Descripción: Convierte una cadena de texto en formato "snake_case" a "CamelCase".<br>
`11. underscore`
Clase: String
Descripción: Convierte una cadena de "CamelCase" a "snake_case".<br>
`12. classify`
Clase: String
Descripción: Convierte una cadena en una clase, es decir, toma una cadena en formato "snake_case" y la convierte en el nombre de una clase en formato "CamelCase".<br>
`13. constantize`
Clase: String
Descripción: Convierte una cadena en su constante correspondiente. Busca una clase, módulo o constante cuyo nombre esté representado por la cadena.<br>
`14. safe_constantize`
Clase: String
Descripción: Similar a constantize, pero no lanza una excepción si la constante no existe. En su lugar, devuelve nil.<br>
`15. humanize`
Clase: String
Descripción: Convierte una cadena en formato "snake_case" en una frase más legible con espacios.<br>
`16. sum`
Clase: Enumerable
Descripción: Devuelve la suma de todos los elementos en una colección.<br>
`17. with_indifferent_access`
Clase: Hash
Descripción: Permite acceder a las claves de un Hash tanto como símbolos como cadenas. Esto hace que el acceso al Hash sea indiferente al tipo de clave utilizada.
