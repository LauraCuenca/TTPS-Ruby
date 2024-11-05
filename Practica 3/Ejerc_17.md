#### ```1. ¿Qué finalidad tiene el archivo Gemfile?```
El Gemfile es un archivo de configuración en el que defines las gemas (bibliotecas) que tu proyecto Ruby necesita para funcionar. Además de listar las gemas, puedes especificar sus versiones y sus dependencias. Bundler utiliza este archivo para instalar y gestionar las gemas, asegurando que las dependencias de tu proyecto sean consistentes en cualquier entorno en el que se ejecute.

#### ```2. ¿Para qué sirve la directiva source del Gemfile? ¿Cuántas veces puede estar en un mismo archivo?```
La directiva source en el Gemfile especifica la URL desde la que se descargarán las gemas. Usualmente, se utiliza https://rubygems.org, que es la fuente oficial de RubyGems.
Un Gemfile debería tener una sola directiva source para definir la fuente principal de las gemas. Sin embargo, también es posible utilizar varias directivas source si necesitas diferentes repositorios de gemas, aunque esto es poco común.

#### ```3. Acorde a cómo agregaste la gema colorputs, ¿qué versión se instaló de la misma? Si mañana se publicara la versión 7.3.2, ¿esta se instalaría en tu proyecto? ¿Por qué? ¿Cómo podrías limitar esto y hacer que sólo se instalen releases de la gema en las que no cambie la versión mayor de la misma con respecto a la que tenés instalada ahora?```
Si no especificaste una versión en el Gemfile, Bundler instalará la versión más reciente de colorputs en el momento de la instalación.
Si mañana se publicara la versión 7.3.2, Bundler instalaría automáticamente esta nueva versión si ejecutas bundle update colorputs, ya que no se ha limitado la versión en el Gemfile.

#### ```4. ¿Qué ocurrió la primera vez que ejecutaste prueba.rb? ¿Por qué?```
La primera vez que ejecute prueba.rb, apareció un error de LoadError, indicando que Ruby no podía cargar la gema colorputs. Esto ocurrió porque la gema no estaba instalada en mi sistema 

#### ```5. ¿Qué cambió al ejecutar bundle install?```
Al ejecutar bundle install, Bundler leyó el Gemfile, descargó e instaló las gemas especificadas (en este caso, colorputs) y generó un archivo Gemfile.lock. Este archivo bloquea las versiones específicas de las gemas instaladas para asegurar que el proyecto siempre use las mismas versiones en cualquier entorno en el que se ejecute.

### ```6. ¿Qué diferencia hay entre bundle install y bundle update?```
- bundle install instala las versiones de gemas listadas en el Gemfile.lock, o crea este archivo si no existe. Es útil para mantener la consistencia en las versiones de gemas en todos los entornos.
- bundle update fuerza a Bundler a buscar las versiones más recientes de las gemas permitidas por las restricciones en el Gemfile, actualizando el Gemfile.lock con las nuevas versiones. Esto es útil cuando quieres actualizar tus dependencias.

### ```7. ¿Qué ocurrió al ejecutar prueba_dos.rb de las distintas formas enunciadas? ¿Por qué?  ¿Cómo modificarías el archivo prueba_dos.rb para que funcione correctamente sin importar de cuál de las dos maneras indicadas es ejecutado?```
Cuando lo ejecute con ruby prueba_dos.rb, me dio error, pero cuando lo hice con bundler me devolvio el Chau en rojo, calculo que es porque hace require Bundler.