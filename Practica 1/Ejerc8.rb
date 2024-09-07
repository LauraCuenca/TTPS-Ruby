def contar(cad1, cad2)
  cad1.scan(/\b#{cad2}\b/).size
end

#\b: Es útil para tratar con límites de palabras
puts contar('la casa de la esquina tiene la puerta roja y la ventana blanca', 'la') # 4
