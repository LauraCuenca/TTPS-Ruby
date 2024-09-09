def longitud(array)
  array.map { |e| e.length }
end

result= longitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2024']) # => [4, 6, 4, 12]
puts result.inspect
puts result.is_a?(Array) # true <3

# Inspect devuelve una cadena que describe el objeto en un formato que es generalmente más útil para depuración,
# que la cadena devuelta por to_s.

# Para cadenas, devuelve la cadena entre comillas.
# Para arreglos, devuelve los elementos entre corchetes.
# Para hashes, devuelve los pares clave-valor entre llaves.


