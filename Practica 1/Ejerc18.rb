# Verificar si se pasó un argumento (nombre)
if ARGV.empty?
  puts "Por favor, ejecutá el script pasando un nombre como argumento."
else
  nombre = ARGV[0]
  
  puts "¡Hola, #{nombre}!"
end

# ARGV: Es un array que contiene los argumentos que se pasan al script.
