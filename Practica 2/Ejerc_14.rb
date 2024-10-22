VALUE = 'global'
module A
   VALUE = 'A'

  class B
  VALUE = 'B'

  def self.value
    VALUE
  end
  def value
   'iB'
  end
end
 def self.value
    VALUE
  end
end
 class C
   class D
     VALUE = 'D'
    def self.value
      VALUE
    end
  end

module E
    def self.value
    VALUE
    end
end
   def self.value
     VALUE
   end
 end

class F < C
   VALUE = 'F'
end

 puts A.value # => 'A'
 puts A::B.value # => 'B'
 puts C::D.value # => 'D'
 puts C::E.value # => 'global'
 puts F.value # => 'global'
 
# puts A::value # => 'Error'
# puts A.new.value # => 'Error'
# puts B.value  # => 'Name Error'
puts C::D.value # => 'D'
puts C.value # => 'global'
puts F.superclass.value # => 'global'

