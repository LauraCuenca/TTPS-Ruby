### ```Diferencias entre include y extend```
include:

Se utiliza para mezclar un módulo en una clase y permite que los métodos del módulo se conviertan en métodos de instancia de la clase. Esto significa que puedes llamar a esos métodos en instancias de la clase.
Se agrega al espacio de nombres de la clase, lo que significa que los métodos se pueden llamar directamente en las instancias.
extend:

Se utiliza para mezclar un módulo en una clase de tal manera que los métodos del módulo se conviertan en métodos de clase. Esto significa que puedes llamar a esos métodos directamente en la clase, pero no en las instancias de la clase.
Se agrega al espacio de nombres de la clase misma, permitiendo acceso a los métodos sin crear una instancia.
Respuestas a tus preguntas 

### ``` 1. Si quisieras usar un módulo para agregar métodos de instancia a una clase, ¿qué forma usarías a la hora de incorporar el módulo a la clase?```

Utilizarías include. Esto permite que los métodos del módulo se conviertan en métodos de instancia de la clase.
```ruby
module Saludos
  def hola
    puts "¡Hola!"
  end
end

class Persona
  include Saludos
end

persona = Persona.new
persona.hola  # => "¡Hola!"
```

### ```2. Si en cambio quisieras usar un módulo para agregar métodos de clase, ¿qué forma usarías en ese caso? ```

Utilizarías extend. Esto permite que los métodos del módulo se conviertan en métodos de clase, accesibles directamente en la clase.

```ruby
module Matematicas
  def suma(a, b)
    a + b
  end
end

class Calculadora
  extend Matematicas
end

puts Calculadora.suma(5, 3)  # => 8
```
