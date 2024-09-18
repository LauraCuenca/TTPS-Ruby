def rot13(string)
  string.tr("A-Za-z", "N-ZA-Mn-za-m")
end

puts rot13("¡Bienvenidos a la cursada de TTPS Opción Ruby!")

# tr es un método que traduce los caracteres de una cadena según dos grupos de caracteres.
# El primer grupo 'A-Za-z' incluye todas las letras mayúsculas (A-Z) y minúsculas (a-z).
# El segundo grupo 'N-ZA-Mn-za-m' representa las letras desplazadas 13 posiciones en el alfabeto.