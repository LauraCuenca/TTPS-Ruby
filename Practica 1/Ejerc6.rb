def tiempo_en_palabras(hora, minuto)
  hora_12 = hora % 12
  hora_12 = 12 if hora_12 == 0 

  siguiente_hora_12 = (hora_12 % 12) + 1
  siguiente_hora_12 = 12 if siguiente_hora_12 == 0

  prefix = hora_12 == 1 ? "Es la" : "Son las" #El operador ternario ? : es una forma compacta de una declaración if-else.

  if minuto == 0
    return "#{prefix} #{hora_12} en punto"
  elsif minuto == 15
    return "#{prefix} #{hora_12} y cuarto"
  elsif minuto == 30
    return "#{prefix} #{hora_12} y media"
  elsif minuto == 45
    return "#{prefix} #{siguiente_hora_12} menos cuarto"
  elsif minuto < 30
    return "#{prefix} #{hora_12} y #{minuto}"
  else
    return "#{prefix} #{siguiente_hora_12} menos #{60 - minuto}"
  end
end

# Ejemplos de prueba
puts tiempo_en_palabras(1, 15)    # "Es la 1 y cuarto"
puts tiempo_en_palabras(5, 0)     # "Son las 5 en punto"
puts tiempo_en_palabras(14, 45)   # "Son las 3 menos cuarto"
puts tiempo_en_palabras(9, 30)    # "Son las 9 y media"
puts tiempo_en_palabras(6, 22)    # "Son las 6 y 22 minutos"
puts tiempo_en_palabras(23, 40)   # "Son las 12 menos 20 minutos"
puts tiempo_en_palabras(13, 0)    # "Es la 1 en punto" 


