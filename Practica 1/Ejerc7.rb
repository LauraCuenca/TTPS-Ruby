def contar(cad1,cad2)
  cad1.scan(cad2).size
end
#scan: Es conveniente para contar ocurrencias de una subcadena literal si sabes que no hay caracteres especiales.
puts contar('la casa de la esquina tiene la puerta roja y la ventana blanca', 'la') # 5