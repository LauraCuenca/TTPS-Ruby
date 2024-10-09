# Implementá el Mixin Countable que te permita hacer que cualquier clase cuente la cantidad de
# veces que los métodos de instancia definidos en ella es invocado. Utilizalo en distintas clases,
# tanto desarrolladas por vos como clases de la librería standard de Ruby, y chequeá los resultados
# El Mixin debe tener los siguientes métodos:

module Countable
  # Método que se ejecuta cuando se incluye el módulo
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    # Método de clase para contabilizar las invocaciones
    def count_invocations_of(sym)
      # Guardamos el método original
      original_method = instance_method(sym)

      # Redefinimos el método para contar invocaciones
      define_method(sym) do |*args|
        @invocation_counts ||= Hash.new(0) 
        @invocation_counts[sym] += 1        
        original_method.bind(self).call(*args) 
      end
    end
  end

  # Método de instancia para verificar si el método fue invocado al menos una vez
  def invoked?(sym)
    @invocation_counts && @invocation_counts[sym] > 0
  end

  # Método de instancia que devuelve la cantidad de veces que el método fue invocado
  def invoked(sym)
    @invocation_counts ? @invocation_counts[sym] : 0
  end
end

class Greeter
  include Countable 

  def hi
    puts 'Hey!'
  end

  def bye
    puts 'See you!'
  end

  # Indicamos que queremos contar las invocaciones del método hi
  count_invocations_of :hi
end

# Prueba de la clase Greeter
a = Greeter.new
b = Greeter.new

# Verificamos si ha sido invocado
puts a.invoked?(:hi)  # => false
puts b.invoked?(:hi)  # => false

# Invocamos el método hi
a.hi                  # Imprime "Hey!"

# Verificamos la cantidad de invocaciones
puts a.invoked(:hi)   # => 1
puts b.invoked(:hi)   # => 0

# Invocamos de nuevo
a.hi                  # Imprime "Hey!"

# Verificamos nuevamente
puts a.invoked(:hi)   # => 2
puts b.invoked(:hi)   # => 0

