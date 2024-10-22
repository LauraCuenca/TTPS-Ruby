class Array
  def randomly(&block)
    shuffled_array = self.shuffle

    if block_given?
      shuffled_array.each { |element| block.call(element) }  
    else

      return enumerator_for(shuffled_array)
    end
  end

  private

  def enumerator_for(shuffled_array)
    Enumerator.new do |yielder|
      shuffled_array.each { |element| yielder << element }  
    end
  end
end


array = [1, 2, 3, 4, 5]


array.randomly do |num|
  puts "Número: #{num}"
end


enumerator = array.randomly
puts "Elementos en orden aleatorio:"
10.times { puts enumerator.next }
