### ```¿Qué convención define AR para inferir los nombres de las tablas a partir de las clases Ruby? Citá ejemplos.```

Las tablas de la base de datos se infieren automáticamente a partir de los nombres de las clases Ruby siguiendo una convención de nomenclatura basada en el plural y en minúsculas.

`Convención de nomenclatura:`
Las clases se escriben en CamelCase (cada palabra inicia con mayúscula)
Los nombres de las tablas se escriben en snake_case (todo en minúsculas, con palabras separadas por guiones bajos) y son plurales.
Ejemplos:

Clase: User
Tabla asociada: users
La clase User corresponde automáticamente a una tabla llamada users (en plural) en la base de datos.

Clase: Article
Tabla asociada: articles
La clase Article se asociará a la tabla articles.

Clase: ProductCategory
Tabla asociada: product_categories
La clase ProductCategory corresponde a la tabla product_categories.

Clase: OrderItem
Tabla asociada: order_items
La clase OrderItem se mapea a la tabla order_items.

Excepciones o personalización:
Si necesitas que una clase se asocie a una tabla con un nombre diferente, puedes especificar el nombre de la tabla manualmente usando la opción self.table_name dentro del modelo. 