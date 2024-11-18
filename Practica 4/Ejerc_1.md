### Para cada una de estas librerías, analizá y respondé las siguientes preguntas:
 1. ¿Qué funcion principal cumple?
 2. Citá algún ejemplo donde se te ocurra que podrías utilizarla.

#### ``` ActionMailer ```
 Función principal: Permite enviar y recibir correos electrónicos desde una aplicación Rails
 Ejemplo: Enviar un correo de bienvenida cuando un usuario se registra.

#### ``` ActionPack ```
 Función principal: Es el componente que combina ActionController y ActionView. Gestiona las solicitudes HTTP, rutas, controladores y vistas.
 Ejemplo: Mostrar una lista de productos en una página.

#### ``` ActionView ```
 Función principal: Maneja la generación de vistas (HTML, JSON, etc.) en una aplicación Rails.
 Ejemplo: Crear una vista para mostrar los detalles de un producto.

```ruby 
<h1><%= @product.name %></h1>
<p><%= @product.description %></p>
```
#### ``` ActiveJob ```
Función principal: Gestiona tareas en segundo plano para mejorar el rendimiento de la aplicación.
Ejemplo: Procesar una subida de archivo en segundo plano.

#### ``` ActiveModel ```
Función principal: Proporciona validaciones, conversiones y otras funcionalidades a objetos que no son modelos directamente relacionados con una base de datos.
Ejemplo: Validar datos de un formulario sin guardar en la base de datos.

#### ``` ActiveRecord ```
Función principal: Es la capa ORM (Mapeo Objeto-Relacional) que conecta modelos con bases de datos.
Ejemplo: Guardar un nuevo usuario en la base de datos.

#### ``` ActiveSupport ```
Función principal: Proporciona utilidades y extensiones de Ruby para hacer más fácil el desarrollo en Rails.
Ejemplo: Usar métodos de tiempo como 2.days.ago.

 #### ``` ActionCable ```
Función principal: Facilita el uso de websockets para comunicación en tiempo real.
Ejemplo: Implementar un chat en vivo.

 #### ``` ActiveStorage ```
Función principal: Gestiona la subida de archivos y su almacenamiento en servicios como AWS S3 o Google Cloud.
Ejemplo: Subir una imagen de perfil.

 #### ``` ActionText ```
Función principal: Permite gestionar contenido enriquecido como texto con formato (incluyendo imágenes y enlaces).
Ejemplo: Crear un editor de texto para artículos de blog.

 #### ``` ActionMailbox ```
Función principal: Procesa correos electrónicos entrantes y los integra en la aplicación.
Ejemplo: Crear un sistema de tickets basado en correos.




