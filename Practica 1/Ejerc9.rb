def string_inverso(cadena)
  cadena.reverse
end

def string_sin_espacios(cadena)
  cadena.delete(" ")
end

def string_a_arreglo_ascii(cadena)
  cadena.chars.map(&:ord)
end
#cadena.chars: Convierte la cadena en un arreglo de caracteres.
#.map(&:ord): Aplica el método ord a cada carácter del arreglo. 
#El método ord devuelve el valor numérico en la tabla de caracteres ASCII para cada carácter

def string_remplaza_vocales(cadena)
  cadena.gsub(/[aA]/, '4')
        .gsub(/[eE]/, '3')
        .gsub(/[iI]/, '1')
        .gsub(/[oO]/, '0')
        .gsub(/[uU]/, '6')
end


puts string_inverso("Hola Ruby")
puts string_sin_espacios("Hi Ruby")
puts string_a_arreglo_ascii("Hello Ruby")
puts string_remplaza_vocales("Murcielago")