def ejecutar_con_manejo(*args)
  begin
    yield(*args)  # Ejecutar el bloque con los parámetros dados
    :ok  # Si no hay errores, retornar :ok
  rescue RuntimeError
    puts "Hay algo mal que no anda bien"
    :rt  # Retornar :rt en caso de RuntimeError
  rescue NoMethodError => e
    puts "Y este método? #{e.message}"  # Capturar el mensaje de error
    :nm  # Retornar :nm en caso de NoMethodError
  rescue => e
    puts "Y ahora?"  # Para cualquier otro tipo de excepción
    raise e  # Relanzar la excepción
  end
end

# Ejemplo sin errores
resultado = ejecutar_con_manejo(1, 2, 3) do |a, b, c|
  puts "Sumando: #{a + b + c}"
end
puts resultado  # => :ok

# Ejemplo con RuntimeError
resultado = ejecutar_con_manejo(1, 2) do |a, b|
  raise "Error en la ejecución"
end
puts resultado  # => :rt

# Ejemplo con NoMethodError
resultado = ejecutar_con_manejo(1, 2) do |a, b|
  a.non_existent_method
end
puts resultado  # => :nm

# Ejemplo con otra excepción (IndexError)
begin
  ejecutar_con_manejo(1, 2) do |a, b|
    raise IndexError, "Índice fuera de rango"
  end
rescue => e
  puts "Se capturó la excepción relanzada: #{e.class}"
end
