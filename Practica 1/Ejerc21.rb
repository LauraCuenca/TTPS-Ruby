def multiplos_de_3_y_5(limite)
  suma = 0
  for i in 1...limite
    if i % 15 == 0  
      suma += i
    end
  end
  suma
end

puts multiplos_de_3_y_5(100)  # 315

