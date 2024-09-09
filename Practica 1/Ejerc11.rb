#. Tomando el ejercicio anterior como referencia, ¿en qué situaciones usarías los métodos send
#y public_send definidos en la clase Object? ¿Cuál es la principal diferencia entre esos dos métodos?

# Los métodos send y public_send en Ruby son útiles para invocar métodos en un objeto de manera dinámica.
# Aunque ambos métodos permiten llamar a métodos por nombre en tiempo de ejecución, 
# tienen diferencias importantes en cuanto a la visibilidad de los métodos que pueden invocar.

# =========================
# SEND
# Uso: Permite invocar cualquier método en un objeto, independientemente de su visibilidad. Esto incluye métodos privados y protegidos.

# Situaciones comunes:

# Testing: Puedes usar send para invocar métodos privados en pruebas.
# Metaprogramación: Cuando necesitas invocar métodos de manera dinámica y no estás seguro de la visibilidad.
# =========================

#Ejemplo
class MyClass
  private
  def private_method
    "This is private"
  end
end

obj = MyClass.new
puts obj.send(:private_method)  # => "This is private"

# =========================
# PUBLIC_SEND
#Uso: Solo permite invocar métodos públicos. No puedes usar public_send para llamar a métodos privados o protegidos.

#Situaciones comunes:

#Interacción con APIs públicas: Cuando deseas asegurarte de que solo estás llamando métodos públicos.
#Seguridad: Evita la llamada accidental a métodos privados, lo que puede ser importante si estás exponiendo interfaces de manera dinámica.
# =========================

#Ejemplo:
class MyClass
  def public_method
    "This is public"
  end

  private
  def private_method
    "This is private"
  end
end

obj = MyClass.new
puts obj.public_send(:public_method)  # => "This is public"
puts obj.public_send(:private_method) # => NoMethodError

#Diferencias clave

# =========================
#Visibilidad:
#send: Puede invocar métodos privados y protegidos.
#public_send: Solo puede invocar métodos públicos.
# =========================

# =========================
#Seguridad y uso:
#send ofrece mayor flexibilidad, pero puede comprometer la encapsulación si se usa incorrectamente.
#public_send es más seguro en contextos donde se desea evitar la invocación de métodos privados o protegidos.
# =========================

# =========================
#Cuándo usar cada uno
# send: Úsalo cuando necesites flexibilidad completa para invocar métodos y no te importe que estos métodos puedan ser privados.
# public_send: Prefiérelo cuando desees mantener la integridad de la encapsulación y asegurarte de que solo estás invocando métodos públicos.
# =========================