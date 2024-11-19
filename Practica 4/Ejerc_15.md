### ```¿De qué forma sabe ActiveRecord qué campos tiene un modelo?```

ActiveRecord sabe qué campos tiene un modelo a través de la estructura de la tabla correspondiente en la base de datos.
 Esto se debe a que ActiveRecord se basa en convenciones y metadatos almacenados en la base de datos para determinar los atributos que un modelo tiene.

`1. Convenciones de Nombres de Tabla y Columna:`
Tabla: Cada modelo en Rails se asocia a una tabla de la base de datos con un nombre pluralizado (por ejemplo, el modelo Product se asocia a la tabla products).
Columnas: ActiveRecord toma las columnas definidas en la tabla de la base de datos como los atributos del modelo. Si tienes una columna name en la tabla products, ActiveRecord crea un atributo name para el modelo Product, el cual puedes usar directamente en tu código Ruby.

`2. Metadatos de la Base de Datos:`
ActiveRecord utiliza la información del esquema de la base de datos para determinar qué columnas están disponibles para un modelo. En la mayoría de las bases de datos, la información sobre las columnas de una tabla se almacena en una tabla de metadatos (como information_schema.columns en PostgreSQL y MySQL). Rails consulta esta información automáticamente para construir los atributos del modelo.

`3. Migraciones:`
Cuando creas migraciones en Rails, defines las columnas de las tablas (por ejemplo, con t.string :name, t.integer :price, etc.). Estas migraciones son las que estructuran la base de datos, y cuando Rails se conecta a la base de datos, consulta la estructura de la tabla para determinar qué columnas existen y cuáles están disponibles en el modelo.

`4. Métodos Automáticos de ActiveRecord:`
Rails crea automáticamente métodos para interactuar con las columnas de la tabla. Si una tabla tiene una columna name, automáticamente podrás acceder a esa columna como un atributo del modelo, utilizando el método name (por ejemplo, product.name para obtener el valor de la columna name en la tabla products).