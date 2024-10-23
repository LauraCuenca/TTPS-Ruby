### ``` ¿Para qué sirve retry? ¿Cómo podés evitar caer en un loop infinito al usarla? ```

 La palabra clave retry se utiliza dentro de un bloque rescue para intentar ejecutar nuevamente el código que está en el bloque begin. Es decir, cuando ocurre una excepción y se captura en el bloque rescue, se puede usar retry para reiniciar la ejecución desde el comienzo del bloque begin.

 Para evitar caer en un loop infinito al usar retry, es fundamental tener una condición de salida.

 ```ruby
 max_retries = 5
attempts = 0

begin
  attempts += 1

  raise "Error en la operación"
rescue
  if attempts < max_retries
    sleep(2**attempts) # Esperar un tiempo que crece exponencialmente con cada intento
    puts "Reintentando... intento #{attempts} después de #{2**attempts} segundos"
    retry
  else
    puts "Máximo número de intentos alcanzado. Abortando."
  end
end
```