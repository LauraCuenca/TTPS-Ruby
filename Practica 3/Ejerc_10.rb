# Implementá un método que reciba dos parámetros: un String que representa la ruta a un ar‑
# chivo y un bloque. El método deberá abrir el archivo indicado, leer su contenido y procesar cada
# linea del mismo con el bloque recibido, imprimiendo a la salida estándar el resultado de cada
# invocación al bloque.
# Considerá qué posibles excepciones pueden ocurrir, intentá manejarlas, y en caso que la ejecu‑
# ción del bloque falle para alguna de las líneas, en el lugar que iría la salida de la ejecución falli‑
# da deberá imprimirse Error encontrado: mensaje de error (ClaseDelError). 
# Finalmente, el método deberá retornar la cantidad de líneas procesadas correctamente.

def procesar_archivo(ruta, &bloque)
  lineas_procesadas = 0
  archivo = nil

  begin
    archivo = File.open(ruta, 'r')
    archivo.each_line do |linea|
      begin
        resultado = bloque.call(linea.strip) 
        puts resultado  
        lineas_procesadas += 1
      rescue StandardError => e
        puts "Error encontrado: #{e.message} (#{e.class})"
      end
    end
  rescue Errno::ENOENT
    puts "Error: el archivo '#{ruta}' no existe."
  rescue Errno::EACCES
    puts "Error: permiso denegado para abrir el archivo '#{ruta}'."
  rescue => e
    puts "Error inesperado: #{e.message} (#{e.class})"
  ensure
    archivo.close if archivo 
  end

  lineas_procesadas 
end

total_procesadas = procesar_archivo("C:\\Users\\laura\\Desktop\\ttp-Ruby\\Practicas\\Practica 3\\datos.txt") { |linea| Integer(linea) }
puts "Líneas procesadas correctamente: #{total_procesadas}"

