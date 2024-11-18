#### 
```
Investigá cómo se crea una aplicación Rails nueva y enumerá los pasos básicos para tener la
aplicación funcionando con una base de datos SQLite.
Tip: investigá las opciones disponibles del comando rails new.
```

#### ``` Preparar el entorno ```
Asegúrate de tener instalado:
Ruby,Rails,Node.js,SQLite

#### ``` Crear una nueva aplicación ```
```ruby
rails new nueva_app
```
#### ```Explorar las opciones del comando rails new```
--skip-test: Omite la configuración inicial para pruebas.
--skip-active-record: No incluye ActiveRecord si no necesitas base de datos.
--skip-javascript: Omite la configuración para JavaScript.
--api: Configura la aplicación para funcionar como una API.

#### ``` Configurar la base de datos```
cd nueva_app
Configura la base de datos SQLite si necesitas ajustar algo en el archivo config/database.yml.
Por defecto, Rails ya lo configura para SQLite.
Crear la base de datos:
```ruby
rails db:create
```

#### ```Generar un recurso o modelo```
Crea un recurso para interactuar con la base de datos:
```ruby
rails generate scaffold NombreCampo atributo1:tipo atributo2:tipo
```

#### ``` Migrar la base de datos ```
Aplica las migraciones para que los cambios se reflejen en SQLite:
```ruby
rails db:migrate
```

#### ```Iniciar el servidor```
Inicia el servidor Rails:
```ruby
rails server
```
Accede en el navegador en http://localhost:3000.



