### ``` ¿De qué forma extiende AS las clases básicas de Ruby para incorporar nuevos métodos?```
ActiveSupport es una de las bibliotecas fundamentales de Rails, y su propósito es proporcionar un conjunto de herramientas y utilidades adicionales, agrega métodos a clases básicas de Ruby como String, Array, Hash, Time, entre otras.

Utiliza la técnica de mixin para añadir funcionalidades a las clases estándar de Ruby,ademas de métodos de conveniencia.
Por ejemplo:
#blank? y #present?: Se usan para verificar si un objeto está vacío o tiene valor, respectivamente.
#constantize: Convierte una cadena a una constante (por ejemplo, una clase).

