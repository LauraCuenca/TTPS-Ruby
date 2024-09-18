def notacion_hexadecimal(rgb)
  rgb.map { |c| c.to_s(16).rjust(2, '0').upcase }.join.prepend('#')
end

def notacion_entera(rgb)
  red, green, blue = rgb
  red + green * 256 + blue * 256*256
end


puts notacion_hexadecimal([0, 128, 255])  # => '#0080FF'
puts notacion_entera([0, 128, 255])       # => 16744448
