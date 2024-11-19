### ```Sobre las migraciones de AR:```

`1. ¿Qué son y para qué sirven?`
Las migraciones en ActiveRecord son una forma de gestionar y versionar los cambios en la estructura de la base de datos. Sirven para definir las modificaciones en la base de datos de manera declarativa, como la creación, modificación o eliminación de tablas y columnas. Las migraciones permiten mantener sincronizada la estructura de la base de datos con el código de la aplicación a lo largo del tiempo, facilitando la implementación de cambios sin perder datos ni complicaciones.

`2. ¿Cómo se generan?`
Las migraciones se generan mediante el comando rails generate migration. Este comando crea un archivo de migración vacío que luego puedes completar con las modificaciones necesarias para la base de datos.

`3. ¿Dónde se guardan en el proyecto?`
Las migraciones se guardan en el directorio db/migrate dentro de tu proyecto Rails. Este directorio contiene todos los archivos de migración que se han generado y ejecutado.

`4. ¿Qué formato/organización tienen sus nombres de archivo? ¿Por qué es necesario respetar ese formato?`
El formato de los nombres de archivo de las migraciones sigue este patrón:
```ruby
<timestamp>_<migration_name>.rb
```
`5. Generá una migración que cree la tabla offices con los siguientes atributos:`
• name: string de 255 caracteres, no puede ser nulo.
• phone_number: string de 30 caracteres, no puede ser nulo y debe ser único.
• address: text.
• available: boolean, por defecto true, no puede ser nulo.