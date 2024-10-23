# Analizá y probá los siguientes métodos, que presentan una lógica similar, pero ubican el manejo
# de excepciones en distintas partes del código. ¿Qué resultado se obtiene en cada caso? ¿Por qué?

def opcion_1
   a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
   b = 3
   c = a.map do |x|
   x * b
   end
   puts c.inspect
  rescue
  0
end

  def opcion_2
   c = begin
       a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
       b = 3
       a.map do |x|
         x * b
       end
       rescue
         0
      end
  puts c.inspect
  end

  def opcion_3
      a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
      b = 3
      c = a.map { |x| x * b } rescue 0
      puts c.inspect
  end
  def opcion_4
      a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
      b = 3
      c = a.map { |x| x * b rescue 0 }
      puts c.inspect
  end
  
  opcion_1 # nada, ya que intenta dividir nil por 3
  opcion_2 # 0
  opcion_3 # 0
  opcion_4 # [3, 0, 9, 0, 15, 0, 21, 0, 27, 0]