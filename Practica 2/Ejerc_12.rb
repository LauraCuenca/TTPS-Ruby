# Modificá la implementación del ejercicio anterior para que GenericFactory sea un módulo
# que se incluya como Mixin en las subclases que implementaste. 
# ¿Qué modificaciones tuviste que hacer en tus clases?

# Un mixin es cuando incluyes un módulo en una clase para compartir funcionalidad sin necesidad de heredar de esa clase. 
# Esto permite que varias clases compartan el mismo comportamiento, pero sin requerir herencia directa.

module GenericFactory
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def create(**args)
      new(**args)
    end
  end
end

class ProductA
  include GenericFactory  

  attr_accessor :name, :value

  def initialize(name:, value:)
    @name = name
    @value = value
  end

  def to_s
    "ProductA: Name = #{@name}, Value = #{@value}"
  end
end

product_a = ProductA.create(name: "Tablet", value: 10)

puts product_a



