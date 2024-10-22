# Dada la siguiente clase abstracta GenericFactory, implementá subclases de la misma que
# permitan la creación de instancias de dichas clases mediante el uso del método de clase .
# create, de manera tal que luego puedas usar esa lógica para instanciar objetos sin invocar
# directamente el constructor new.

class GenericFactory
  def self.create(**args)
  new(**args)
  end
  def initialize(**args)
  raise NotImplementedError
  end
  end

  class ProductA < GenericFactory
    attr_accessor :name, :value
  
    def initialize(name:, value:)
      @name = name
      @value = value
    end
  
    def to_s
      "ProductA: Name = #{@name}, Value = #{@value}"
    end
  end

  product_a = ProductA.create(name: "Tablet", value: 100)
  puts product_a # => ProductA: Name = Tablet, Value = 100