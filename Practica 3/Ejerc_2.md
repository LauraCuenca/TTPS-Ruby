### ```¿Cuál es la diferencia entre raise y throw? ¿Para qué usarías una u otra opción? ```

 #### Raise
 Es utilizado para generar (lanzar) una excepción que puede ser capturada y manejada por un bloque rescue. Se utiliza típicamente para indicar que ha ocurrido un error en la ejecución de un programa.
 Raise interrumpe la ejecución normal y busca el bloque rescue más cercano que maneje la excepción. Si no se captura la excepción, el programa se detiene y muestra un mensaje de error.
 Caso de uso: Se utiliza principalmente para manejar errores y condiciones excepcionales en el flujo normal de un programa.

```ruby
def divide(a, b)
  raise ZeroDivisionError, "Can't divide by zero!" if b == 0
  a / b
end

begin
  divide(10, 0)
rescue ZeroDivisionError => e
  puts e.message
end
# Salida: Can't divide by zero!
```

 #### Throw
 Es utilizado para salir de manera prematura de un bloque de código cuando se utiliza junto con catch. Es un mecanismo de control de flujo no estrictamente relacionado con el manejo de excepciones, sino con el flujo de ejecución del programa.
 Throw no busca manejar excepciones, sino que transfiere el control a un bloque catch con una etiqueta correspondiente (el símbolo que se pasa a throw). Si no se encuentra un bloque catch correspondiente, se genera un error.
 Caso de uso: Se usa cuando se desea terminar una operación de manera anticipada en bloques anidados o iteraciones complejas. Es útil cuando se quiere escapar rápidamente de múltiples niveles de llamadas o loops.

```ruby
catch(:done) do
  [1, 2, 3, 4, 5].each do |i|
    if i == 3
      throw :done
    end
    puts i
  end
end
# Salida:
# 1
# 2
```