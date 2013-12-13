require 'debugger'

# prereqs: arrays, methods, conditional logic
# create a method that returns the nth number of the fibonacci sequence
# fib sequence = 0,1,1,2,3,5,8,13 etc, assume the 1st element is 0 (the first number), the 2nd element is 1, the third element is 1


def fibo_finder(position)
  array = [0,1]
  position.times {|i| array[i+2] = array[i] + array[i+1]}
  array[position]
end

puts fibo_finder(34)