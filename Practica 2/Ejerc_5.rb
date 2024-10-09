# Implementá el método cuanto_falta? que opcionalmente reciba como parámetro un objeto
# Time y que calcule la cantidad de minutos que faltan para ese momento. Si el parámetro de
# fecha no es provisto, asumí que la consulta es para la medianoche de hoy.

def cuanto_falta?(time = Time.new(Time.now.year, Time.now.month, Time.now.day, 0, 0, 0))
  # Si el tiempo que falta es negativo, significa que ya pasó la medianoche
  if time < Time.now
    # Cambia el time a la medianoche del día siguiente
    time = Time.new(Time.now.year, Time.now.month, Time.now.day + 1, 0, 0, 0)
  end

  minutos_faltantes = (time - Time.now) / 60
  minutos_faltantes = minutos_faltantes.to_i

  "Faltan #{minutos_faltantes} minutos para la medianoche."
end

puts cuanto_falta? # Para la medianoche de hoy
puts cuanto_falta? Time.new(2032, 12, 31, 23, 59, 59) # => Retorna la cantidad de minutos que faltan para las 23:59:59 del
# 31/12/2032



