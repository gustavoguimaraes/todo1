# Instructions:
# Return an array that contains the squares of all elements in an array?

def square_array(some_array)
    some_array.collect do |num|
    num * num
	end
end


square_array([2,3])