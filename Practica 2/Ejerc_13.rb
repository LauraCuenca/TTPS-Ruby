class TrueClass
  def opposite
    false
  end
end

class FalseClass
  def opposite
    true
  end
end

# Ejemplos de uso
puts false.opposite        # => true
puts true.opposite         # => false
puts true.opposite.opposite # => true
