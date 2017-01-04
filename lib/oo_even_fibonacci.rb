# Implement your procedural solution here!
class EvenFibonacci
  attr_accessor :limit, :array

  def initialize(limit)
    @limit = limit
    @array = [1,2]
  end

  def sum
    while array[array.length-2] + array[-1] < limit
      array << array[array.length-2] + array[-1]
    end
    array.select {|n| n.even?}.inject(:+)
  end
end
