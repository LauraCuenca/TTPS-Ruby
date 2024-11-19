### ``` ¿Cómo se define un modelo con ActiveRecord? ¿Qué requisitos tienen que cumplir las clases para utilizar la lógica de abstracción del acceso a la base de datos que esta librería ofrece?```

Un modelo se define como una clase que hereda de ActiveRecord::Base. 
Esta clase proporciona una serie de métodos que permiten interactuar con la base de datos de manera sencilla y eficiente, como el guardar, actualizar, eliminar y consultar registros.

La clase debe heredar de ApplicationRecord:
Esto permite que ActiveRecord gestione la interacción con la base de datos para esa clase.
El nombre de la clase debe estar en singular y en formato CamelCase (por ejemplo, Product, User, Order).

La tabla correspondiente debe existir en la base de datos con un nombre en plural:
Por convención, Rails espera que el nombre de la tabla asociada al modelo sea el plural del nombre de la clase en minúsculas (por ejemplo, para el modelo Product, la tabla asociada será products).
Si no sigues esta convención, puedes especificar el nombre de la tabla manualmente utilizando self.table_name = 'nombre_tabla' dentro del modelo.

La tabla debe tener una columna primaria llamada id:
Rails asume que cada modelo tiene una columna id como clave primaria de la tabla. Esta columna debe ser un número entero que se auto-incremente, a menos que se especifique lo contrario.
El modelo puede tener otros atributos mapeados a columnas en la tabla:

Las columnas en la base de datos se mapean automáticamente a atributos del modelo (por ejemplo, una columna name en la tabla products se mapea al atributo name del modelo Product).
Relaciones entre tablas (si corresponde):

ActiveRecord permite definir relaciones entre modelos (por ejemplo, has_many, belongs_to, has_one, has_and_belongs_to_many).
Estas relaciones se reflejan en las claves foráneas en las tablas de la base de datos.