def rot(texto, n)
  texto.chars.map do |char|
    if char =~ /[a-z]/
      (((char.ord - 'a'.ord + n) % 26) + 'a'.ord).chr
    elsif char =~ /[A-Z]/
      (((char.ord - 'A'.ord + n) % 26) + 'A'.ord).chr
    else
      char # No es una letra
    end
  end.join
end

puts rot("¡Bienvenidos a la cursada de TTPS Opción Ruby!", 13)

# char.ord: Convierte el carácter a su valor ASCII.
# n: Este es el valor del desplazamiento que el usuario elige.
# % 26: Mantiene el desplazamiento dentro de las 26 letras del alfabeto.