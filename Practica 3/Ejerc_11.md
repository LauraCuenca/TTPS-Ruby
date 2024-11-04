### ```¿Qué es una gema? ¿Para qué sirve? ¿Qué estructura general suele tener?```

Una gema en el contexto de Ruby es un paquete de código que se puede reutilizar, distribuir y compartir con otros desarrolladores. Las gemas son una parte fundamental del ecosistema de Ruby y se utilizan para añadir funcionalidad a las aplicaciones sin tener que escribir todo el código desde cero.

#### ¿Para qué sirve?
- Reutilización de Código: Facilitan la integración de funcionalidades ya desarrolladas y probadas, ahorrando tiempo y esfuerzo.
- Manejo de Dependencias: Ayudan a gestionar bibliotecas y sus dependencias, garantizando que todas las partes de la aplicación sean compatibles.
- Comunidad: Muchas gemas son desarrolladas por la comunidad de Ruby, lo que fomenta la colaboración y el intercambio de soluciones a problemas comunes.
- Facilidad de Instalación: Se pueden instalar fácilmente mediante el gestor de paquetes de Ruby llamado Bundler.

#### Estructura General de una Gema
gemspec: Un archivo con la extensión .gemspec, que describe la gema, incluyendo su nombre, versión, autor, licencia y dependencias. Este archivo es fundamental para que RubyGems (el sistema de gestión de gemas de Ruby) pueda entender cómo manejar la gema.

Ejemplo

```ruby
Gem::Specification.new do |spec|
  spec.name          = "mi_gema"
  spec.version       = "0.1.0"
  spec.authors       = ["Tu Nombre"]
  spec.email         = ["tu_email@ejemplo.com"]
  spec.summary       = "Descripción breve de la gema"
  spec.files         = Dir["lib/**/*.rb"]
  spec.require_paths  = ["lib"]
end
```
lib/: Esta carpeta contiene el código fuente de la gema. El archivo principal de la gema suele tener el mismo nombre que la gema y se utiliza para cargar el resto de los archivos de la biblioteca.

README.md: Un archivo que proporciona documentación sobre cómo usar la gema, ejemplos y otra información útil.

LICENSE: El archivo que especifica los términos bajo los cuales se distribuye la gema.

tests/ o spec/: Carpetas que pueden contener pruebas unitarias o de integración para asegurar que la gema funcione correctamente.

Gemfile: Aunque no es obligatorio, muchas gemas incluyen un Gemfile que define las gemas requeridas para el desarrollo y las pruebas.