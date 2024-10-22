class Fibonacci
  include Enumerable

  def initialize
    @a, @b = 0, 1  # Inicializamos los dos primeros números de la serie
  end

  def each
    loop do
      yield @a  
      @a, @b = @b, @a + @b  
    end
  end
end


fibonacci = Fibonacci.new

# Generar los primeros 10 números de la serie de Fibonacci
puts "Los primeros 10 números de la serie de Fibonacci son:"
fibonacci.take(10).each { |num| puts num }
