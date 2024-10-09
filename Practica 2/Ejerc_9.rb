# Implementá el módulo Reverso para utilizar como Mixin e incluilo en alguna clase para probarlo.
# Reverso debe contener los siguientes métodos:

module Reverso
  def di_tcejbo
    self.object_id.to_s.reverse
  end

  def ssalc
    self.class.to_s.reverse
  end
end

class Persona
  include Reverso
  
  attr_accessor :nombre

  def initialize(nombre)
    @nombre = nombre
  end
end

# Probar la clase Persona con el mixin Reverso
persona = Persona.new("Laura")
puts persona.di_tcejbo   # => Esto imprimirá el object_id en espejo
puts persona.ssalc       # => Esto imprimirá "anosreP" 
