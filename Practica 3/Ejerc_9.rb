# 1. Seguí el flujo de ejecución registrando la traza de impresiones que deja el programa, 
# analizando por qué partes del código va pasando y justificando esos pasos.
# 2. ¿Qué pasaría si se permuta, dentro de fun3, el manejador de excepciones para
# RuntimeError y el manejador de excepciones genérico (el que tiene el rescue vacio)?
# 3. ¿El uso de retry afectaría el funcionamiento del programa si se mueve la línea x = 0
# dentro del segundo begin (inmediatamente antes de llamar a fun1 con x)?


def fun3
     puts "Entrando a fun3"
  raise RuntimeError, "Excepción intencional"
     puts "Terminando fun3"
  rescue NoMethodError => e
     puts "Tratando excepción por falta de método"
  rescue RuntimeError => e
     puts "Tratando excepción provocada en tiempo de ejecución"
  rescue
     puts "Tratando una excepción cualquiera"
  ensure
     puts "Ejecutando ensure de fun3"
  end
  
  def fun2(x)
      puts "Entrando a fun2"
      fun3
      a = 5 / x
      puts "Terminando fun2"
  end

  def fun1(x)
       puts "Entrando a fun1"
       fun2 x
  rescue
      puts "Manejador de excepciones de fun1"
      raise
  ensure
       puts "Ejecutando ensure de fun1"
  end

  begin
     x = 0
    begin
      fun1 x
      rescue Exception => e
        puts "Manejador de excepciones de Main"
        if x == 0
          puts "Corrección de x"
          x = 1
          retry
       end
     end
     puts "Salida"
  end