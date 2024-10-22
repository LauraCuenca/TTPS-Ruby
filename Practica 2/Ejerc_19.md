### ```Lazy Enumerators```

Los lazy enumerators en Ruby permiten trabajar con colecciones de datos de manera perezosa, es decir, generan los elementos de la colección a medida que se necesitan, en lugar de calcular todos los elementos de la colección de una vez y almacenarlos en memoria. Esto se logra utilizando el método lazy, que se puede encadenar a un enumerador o a un arreglo.

Características de los Lazy Enumerators
Evaluación Pérezosa: Los elementos se generan solo cuando se requieren. Por ejemplo, si utilizas lazy con un enumerador y luego llamas a take(n), solo se calcularán los primeros n elementos.

Cadenas de Métodos: Se pueden combinar múltiples métodos (como map, select, etc.) y la evaluación perezosa se aplicará a toda la cadena. Esto significa que el cálculo se retrasa hasta que se necesita un resultado final.

Sin Carga de Memoria: No es necesario almacenar todos los elementos en memoria al mismo tiempo, lo que permite trabajar con conjuntos de datos mucho más grandes que la memoria disponible.

```ruby
def fibonacci
  Enumerator.new do |y|
    a, b = 0, 1
    loop do
      y << a
      a, b = b, a + b
    end
  end.lazy  # Hacemos que el enumerador sea lazy
end

# Obtener los primeros 10 números de Fibonacci
fibonacci.take(10).each { |num| puts num }
```
