def suma_multiplos(numeros, tope)
  suma = 0
  (1..tope).each do |elemento|
    suma += elemento if numeros.all? { |numero| elemento % numero == 0 }
  end
  suma
end

puts suma_multiplos([3, 5], 100) # => 315

# numeros.all? { |numero| elemento % numero == 0 } verifica si todos los números en el array numeros son divisores del valor elemento.

