#. Modificá el método anterior para que en lugar de recibir un arreglo como único parámetro, 
# reciba todos los números como parámetros separados.

def ordenar_arreglo(*args)
  args.sort
end

p ordenar_arreglo(1, 4, 6, 2, 3, 0, 10) # => [0, 1, 2, 3, 4, 6, 10]