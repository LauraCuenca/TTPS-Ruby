# Escribí un método da_nil? que reciba un bloque, lo invoque y retorne si el valor de retorno del
# bloque fue nil.

def da_nil?(&block)
  block.call.nil?
end

puts da_nil? { }                # => true, porque el bloque vacío retorna nil
puts da_nil? { 'Algo distinto' } # => false, porque el bloque retorna una cadena
puts da_nil? { 42 }              # => false, porque el bloque retorna 42
puts da_nil? { nil }             # => true, porque el bloque retorna nil explícitamente

