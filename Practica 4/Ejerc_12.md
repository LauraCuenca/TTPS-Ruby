### ``` ¿De qué manera se le puede enseñar a AS cómo pasar de singular a plural (o viceversa) los sustantivos que usamos en nuestro código?```
Tip: Mirá el archivo config/initializers/inflections.rb.

En Ruby on Rails, puedes personalizar la forma en que se manejan los sustantivos en singular y plural mediante las inflections (inflexiones). Rails usa un conjunto de reglas predefinidas para convertir entre singular y plural (y viceversa), pero en algunos casos necesitas añadir tus propias reglas para tratar sustantivos irregulares o personalizados.

`¿Cómo se configura esto?`
Rails te permite definir inflexiones personalizadas en el archivo config/initializers/inflections.rb. Este archivo es donde puedes agregar reglas para manejar sustantivos irregulares que no siguen las reglas estándar de pluralización o singularización de Rails.

`¿Cómo funciona?`
Cuando Rails necesita pluralizar o singularizar un sustantivo (por ejemplo, para generar nombres de rutas, clases, tablas de bases de datos, etc.), buscará las reglas definidas en este archivo de inicialización. Si un sustantivo tiene una regla personalizada, Rails la usará en lugar de la regla predeterminada.

`¿Dónde se usa esto?`
En las rutas: Por ejemplo, si tienes un controlador llamado people_controller.rb, Rails buscará la forma pluralizada de "person" al generar rutas.
En la base de datos: Si tienes una clase Person, Rails generará una tabla llamada people en la base de datos.