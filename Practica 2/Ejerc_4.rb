# Escribí un método que dado un número variable de parámetros que pueden ser de cualquier
# tipo, imprima en pantalla la cantidad de caracteres que tiene su representación como String
# y la representación que se utilizó para contarla.

def longitud(*args)
  args.each { |arg| puts "El argumento #{arg} tiene #{arg.to_s.length} caracteres" }
end  

longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)
