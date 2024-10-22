# Definición de las excepciones personalizadas
class NoEsUnaPalabra < StandardError; end
class EsUnStringVacio < StandardError; end

class Palabra
  VOWELS = %w[a e i o u]
  JAKERS = { 'a' => '4', 'e' => '3', 'i' => '1', 'o' => '0', 'u' => '2' }

  def initialize(palabra)
    @palabra = palabra.strip

    # Verifica si es un string vacío
    if @palabra.empty?
      raise EsUnStringVacio, "Es un string vacío"
    end

    # Verifica si contiene caracteres y al menos un espacio
    if @palabra.match?(/[^\s]/) && @palabra.include?(" ")
      raise NoEsUnaPalabra, "#{palabra} no es una palabra"
    end
  end

  def vocales
    @palabra.downcase.chars.select { |c| VOWELS.include?(c) }.uniq
  end

  def consonantes
    @palabra.downcase.chars.select { |c| c.match?(/[a-z]/) && !VOWELS.include?(c) }.uniq
  end

  def longitud
    @palabra.length
  end

  def es_panvocalica?
    VOWELS.all? { |v| @palabra.downcase.include?(v) }
  end

  def es_palindroma?
    return false if longitud < 3

    @palabra.downcase == @palabra.downcase.reverse
  end

  def gritando
    @palabra.upcase
  end

  def en_jaquer
    @palabra.downcase.chars.map { |c| JAKERS[c] || c }.join
  end
end

begin
  palabra = Palabra.new("neuquen")
  puts "Vocales: #{palabra.vocales.join(', ')}"
  puts "Consonantes: #{palabra.consonantes.join(', ')}"
  puts "Longitud: #{palabra.longitud}"
  puts "Es panvocálica: #{palabra.es_panvocalica?}"
  puts "Es palíndroma: #{palabra.es_palindroma?}"
  puts "Gritando: #{palabra.gritando}"
  puts "En jaquer: #{palabra.en_jaquer}"
rescue StandardError => e
  puts e.message
end
