
   ### ```. Investigá qué métodos provee Ruby para:```

   #### Obtener la lista de ancestros (superclases) de una clase
 ```ruby
   class MiClase
   end

   puts MiClase.ancestors
```
#### Conocer la lista de métodos de una clase
```ruby
class MiClase
  def metodo1; end
  def metodo2; end
end

puts MiClase.methods - Object.methods # Para excluir métodos heredados de Object
```
#### Conocer la lista de métodos de instancia de una clase
```ruby
class MiClase
  def metodo1; end
end

puts MiClase.instance_methods(false) # false para obtener solo los métodos definidos en MiClase
```
#### Conocer las variables de instancia de una clase
```ruby
class MiClase
  def initialize
    @variable1 = 'valor1'
  end
end

obj = MiClase.new
puts obj.instance_variables
```
#### Obtener el valor de una variable de instancia de un objeto (sin utilizar un método generado con attr_reader o similar)
```ruby
class MiClase
  def initialize
    @variable1 = 'valor1'
  end
end

obj = MiClase.new
puts obj.instance_variable_get(:@variable1)
```
#### Establecer el valor de una variable de instancia de un objeto (sin utilizar un método generado con attr_writer o similar)
```ruby
class MiClase
  def initialize
    @variable1 = 'valor1'
  end
end

obj = MiClase.new
obj.instance_variable_set(:@variable1, 'nuevo valor')
puts obj.instance_variable_get(:@variable1)
```

