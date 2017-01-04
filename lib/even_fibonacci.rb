# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  array = [1,2]
  while array[array.length-2] + array[-1] < limit
    array << array[array.length-2] + array[-1]
  end
  array.select {|n| n.even?}.inject(:+)
end
