# Implementá un método que reciba como parámetros un Hash y un Proc, y que devuelva un
# nuevo Hash cuyas las claves sean los valores del Hash recibido como parámetro, y cuyos valores
# sean el resultado de invocar el Proc con cada clave del Hash original.

def hash_transformer(hash, proc)
  hash.each_with_object({}) do |(key, value), new_hash|
    new_hash[value] = proc.call(key)
  end
end


# hash.each_with_object({}): Iteramos sobre cada par clave-valor del hash original y construimos un nuevo hash vacío ({}).
# |key, value|: Descomponemos cada entrada del hash en su clave y valor.
# nuevo_hash[value] = proc.call(key): Asignamos al nuevo hash nuevo_hash una clave basada en el valor original,
# y el valor es el resultado de invocar el Proc con la clave original.

hash = { 'clave' => 1, :otra_clave => 'valor' }
resultado = hash_transformer(hash, ->(x) { x.to_s.upcase })

puts resultado
# => { 1 => 'CLAVE', 'valor' => 'OTRA_CLAVE' }
