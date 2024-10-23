### ```¿Para qué sirven begin .. rescue .. else y ensure? ```
```Pensá al menos 2 casos concretos en que usarías estas sentencias en un script Ruby. ```

Las sentencias begin .. rescue .. else .. ensure se utilizan para manejar excepciones y asegurar la ejecución de ciertos bloques de código, independientemente de si ocurre un error o no.

#### ``` begin .. rescue```
La sección begin contiene el código que puede lanzar una excepción.
La sección rescue atrapa cualquier excepción que ocurra dentro de begin y permite manejarla. Puedes especificar el tipo de excepción que quieres capturar.

#### ```else ```
La sección else se ejecuta solo si no ocurre ninguna excepción en el bloque begin. Si el código dentro de begin falla y pasa a rescue, el bloque else no se ejecuta.

#### ```ensure ```
El bloque ensure se ejecuta siempre, ya sea que ocurra una excepción o no. Es útil para tareas de limpieza, cerrar archivos o liberar recursos, asegurando que esas acciones ocurran sin importar el resultado.


```ruby
def write_to_file(filename, content)
  file = nil
  begin
    file = File.open(filename, "w") # Abrir archivo para escritura
    file.write(content) # Escribir contenido
  rescue IOError => e
    puts "Error al escribir en el archivo: #{e.message}"
  else
    puts "Escritura en archivo exitosa"
  ensure
    file.close if file # Cerrar archivo, haya o no error
    puts "Archivo cerrado"
  end
end
```

