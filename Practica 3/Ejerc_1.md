### ``` Investigá la jerarquía de clases que presenta Ruby para las excepciones. ```
```¿Para qué se utilizan las siguientes clases? ```

#### • ArgumentError
  Descripción: Se lanza cuando un argumento pasado a un método es inválido o inapropiado.
 ```ruby 
 def add(a, b)
  raise ArgumentError, "Both arguments must be numbers" unless a.is_a?(Numeric) && b.is_a?(Numeric)
  a + b
 end
```
#### • IOError
  Descripción: Se lanza cuando ocurre un error de entrada/salida (por ejemplo, problemas al leer o escribir archivos).
  Hereda de: StandardError
```ruby
  File.open("non_existent_file.txt") # Puede lanzar IOError si el archivo no existe
```
#### • NameError
  Descripción: Se lanza cuando un nombre de variable o constante no puede ser resuelto (no existe o no ha sido definido).
  Hereda de: StandardError
```ruby
  puts non_existent_variable # Lanza NameError
```
#### • NotImplementedError
  Descripción: Se utiliza para señalar que un método o funcionalidad aún no ha sido implementado. Generalmente es lanzado por desarrolladores que están creando clases base o abstractas.
  Hereda de: ScriptError
```ruby
  class BaseClass
  def perform
    raise NotImplementedError, "You must implement the perform method"
  end
end
```
#### • RuntimeError
  Descripción: Se lanza cuando ocurre un error general en tiempo de ejecución que no pertenece a otras categorías específicas.
  Hereda de: StandardError
  ```ruby
  raise "An error occurred" # Esto lanza RuntimeError por defecto
```
#### • StandardError
  Descripción: Es la clase base para la mayoría de las excepciones que ocurren en tiempo de ejecución en Ruby. Muchas excepciones comunes, como ArgumentError, RuntimeError y TypeError, heredan de StandardError.
  Hereda de: Exception
  ```ruby
  begin
  # Código que podría fallar
  rescue StandardError => e
  puts "An error of type #{e.class} occurred"
  end
```
#### • StopIteration
  Descripción: Se lanza para detener un iterador que ha alcanzado el final de una secuencia. Normalmente se lanza dentro de enumeradores.
  Hereda de: IndexError
  ```ruby
  enumerator = [1, 2, 3].to_enum
  loop do
    puts enumerator.next
  end
  # Lanza StopIteration cuando se agota la enumeración
```
#### • SystemExit
  Descripción: Se lanza cuando se llama al método exit. Permite capturar la salida de un programa de manera controlada.
  Hereda de: Exception
  ```ruby
  begin
  exit
rescue SystemExit => e
  puts "Exiting with status #{e.status}"
end
```
#### • SystemStackError
 Descripción: Se lanza cuando se produce un desbordamiento de pila (stack overflow), por ejemplo, cuando hay demasiada recursión.
 Hereda de: Exception
 ```ruby
 def recursive_method
  recursive_method
end
recursive_method # Esto lanzara SystemStackError
```
#### • TypeError
 Descripción: Se lanza cuando un objeto es de un tipo inapropiado para una operación particular.
 Hereda de: StandardError
 ```ruby
 "5" + 5 # Esto lanzara TypeError ya que no se puede sumar String y Fixnum
```
#### • ZeroDivisionError
 Descripción: Se lanza cuando se intenta dividir un número por cero.
 Hereda de: StandardError
 ```ruby
 1 / 0 # Esto lanzara un ZeroDivisionError
```