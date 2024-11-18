### ```Sobre la configuración de Rails:
1. ¿De qué forma podés especificar parámetros de configuración del framework en una app
Rails?
2. ¿Cuáles son los archivos de configuración principales? Intentá relacionar este concepto
con los ambientes que antes viste.
3. Modificá el locale por defecto de tu aplicación para que sea español.
4. Modificá la zona horaria de tu aplicación para que sea la de la Argentina (GMT‑3).```

Especificar parámetros de configuración en Rails
Puedes especificar parámetros de configuración del framework Rails de las siguientes maneras:

Archivos de configuración en config/: Principalmente a través de config/application.rb y los archivos dentro de config/environments/ (como development.rb, test.rb, production.rb).
- Variables de entorno: Utilizando gemas como dotenv o configuraciones nativas para establecer valores dinámicos según el entorno.
- Inicializadores en config/initializers/: Archivos Ruby donde puedes añadir configuraciones específicas para gemas, bibliotecas o la aplicación en general.
- Comando rails credentials:edit: Para parámetros sensibles, como claves API, configuraciones de servicios externos, etc.

Los archivos más importantes relacionados con la configuración de Rails son:
`config/application.rb:`
Define configuraciones generales aplicables a todos los ambientes.
Ejemplo: Configurar el idioma y la zona horaria.

`config/environments/*.rb:`
Contiene configuraciones específicas para cada ambiente (development.rb, test.rb, production.rb).
Ejemplo: Configurar el manejo de errores detallados en desarrollo.

`config/database.yml:`
Configura la conexión a la base de datos para cada ambiente.

`config/credentials.yml.enc:`
Almacena claves y configuraciones sensibles encriptadas, como claves de API.

`config/routes.rb:`
Configura las rutas URL de la aplicación.

`config/storage.yml:`
Configuración para servicios de almacenamiento, como Amazon S3.



