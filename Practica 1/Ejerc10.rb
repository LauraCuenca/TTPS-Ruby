results = [:upcase, :downcase, :capitalize, :swapcase].map do |meth|
  "TTPS Ruby".send(meth)
end

puts results

# Resultado:
#TTPS RUBY
#ttps ruby
#Ttps ruby
#ttps rUBY

# Explicación: 
#[:upcase, :downcase, :capitalize, :swapcase] es un arreglo de símbolos que representan métodos de cadena.
#.map do |meth| itera sobre cada símbolo del arreglo.
# "TTPS Ruby".send(meth) llama al método indicado por meth en la cadena "TTPS Ruby".