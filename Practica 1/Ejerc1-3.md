```1. Investigá y probá en un intérprete de Ruby (irb, por ejemplo) cómo crear objetos de los siguientes tipos básicos, tanto mediante el uso de literales como utilizando el constructor new (cuandosea posible):```

• Symbol
:mi_simbolo

Usando el constructor new:
Symbol.new('mi_simbolo')

• String
"mi_cadena"

Usando el constructor new:
String.new("mi_cadena")

• Array
[1, 2, 3, 4]

Usando el constructor new:
Array.new([1, 2, 3, 4])

• Hash
{ clave1: 'valor1', clave2: 'valor2' }

Usando el constructor new:
Hash.new({ clave1: 'valor1', clave2: 'valor2' })

```2. ¿De qué forma(s) se puede convertir un objeto (cualquiera fuere su tipo o clase) en String?```
Para convertir un objeto de cualquier tipo a String, se puede usar:

Método to_s:
objeto.to_s

Método String():
String(objeto)
El método to_s está disponible para casi todos los objetos en Ruby y devuelve una representación en cadena del objeto.

```3. ¿De qué forma(s) se puede convertir un objeto String en un símbolo?```
Para convertir un String en un Symbol, se puede usar:

Método to_sym:
"mi_cadena".to_sym

Método intern (equivalente a to_sym):
"mi_cadena".intern
