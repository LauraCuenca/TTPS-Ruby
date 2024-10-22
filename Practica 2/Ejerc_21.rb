class PrimeEnumerator
  def initialize
    @primes = []  
  end

  # Método para generar números primos hasta un valor máximo
  def up_to(max)
    Enumerator.new do |yielder|
      num = 2  
      while num <= max
        if prime?(num)
          yielder << num  
        end
        num += 1  
      end
    end
  end

  # Método para generar el enésimo número primo
  def nth(n)
    Enumerator.new do |yielder|
      count = 0  
      num = 2   
      while count < n
        if prime?(num)
          yielder << num  
          count += 1     
        end
        num += 1  
      end
    end
  end

  private

  # Método para verificar si un número es primo
  def prime?(num)
    return false if num < 2
    (2..Math.sqrt(num)).none? { |i| num % i == 0 }
  end
end

# Crear una instancia del enumerador de números primos
prime_enum = PrimeEnumerator.new

# Generar números primos hasta un valor máximo
puts "Números primos hasta 30:"
prime_enum.up_to(30).each { |prime| puts prime }

# Generar el enésimo número primo
n = 10  
puts "\nLos primeros #{n} números primos son:"
prime_enum.nth(n).take(n).each { |prime| puts prime }
