### ```¿Dónde almacenan las gemas que se instalan con el comando gem? ¿Y aquellas instaladas con el comando bundle? ```

#### gem which
El comando gem which se utiliza para encontrar la ruta del archivo que contiene la definición de una gema específica. Es útil cuando deseas saber dónde se encuentra una gema en tu sistema.

```ruby
gem which <nombre_de_la_gema>
```
#### bundle show
El comando bundle show se utiliza en el contexto de Bundler y permite ver la ubicación de las gemas que están instaladas y que forman parte del grupo de dependencias de tu proyecto, especificadas en el Gemfile. Si no se le pasa ningún argumento, mostrará todas las gemas instaladas en el proyecto actual.

```ruby
bundle show
```