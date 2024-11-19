### ```¿Qué metodos (getters y setters) genera AR para los campos escalares básicos (integer, string, text, boolean, float)?```

ActiveRecord (AR) genera automáticamente los getters y setters para los campos escalares básicos (como integer, string, text, boolean, float) que están definidos en la tabla correspondiente en la base de datos. Estos métodos permiten acceder a los valores de las columnas y asignarles nuevos valores.

Getter: Método para obtener el valor de la columna.

Setter: Método para asignar un nuevo valor a la columna.

`1. Integer (integer)`
Si hay una columna llamada age de tipo integer en la tabla users, ActiveRecord generará los métodos:

Getter: user.age
Setter: user.age = 25

`2. String (string)`
Si hay una columna llamada name de tipo string en la tabla users, ActiveRecord generará los métodos:

Getter: user.name
Setter: user.name = "John"

`3. Text (text)`
Si hay una columna llamada description de tipo text en la tabla products, ActiveRecord generará los métodos:

Getter: product.description
Setter: product.description = "This is a description"

`4. Boolean (boolean)`
Si hay una columna llamada is_active de tipo boolean en la tabla users, ActiveRecord generará los métodos:

Getter: user.is_active
Setter: user.is_active = true
Para los valores booleanos, el getter devolverá true o false y el setter puede recibir valores como true, false, nil, o incluso valores como "1", "0" que Rails convertirá en valores booleanos.

`5. Float (float)`
Si hay una columna llamada price de tipo float en la tabla products, ActiveRecord generará los métodos:

Getter: product.price
Setter: product.price = 19.99