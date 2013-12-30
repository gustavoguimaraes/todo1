# Create a test for a method`make_list` that takes an array and returns that same array but
# as an array of strings in a numbered list.
 
# Run this test by typing `rspec list_maker_spec.rb` in your terminal.
 
# Then, create a method on array called `make_list` that iterates over the array it is
# called on and appends a number, a period, and a space to each element.
 
# e.g make_list(["ich", "ni", "san"]) #=> ["1. ich", "2. ni", "3. san"]

def add_number_to_string(arr)
	num = 1
	new_array = []
	arr.each do |elem|
	new_array << num.to_s + "." + " " + elem
	num = num + 1
	
	end
 new_array
end

# after refactoring I got this:

class List
  def make_list(array)
  array.collect.with_index{|elem, index| "#{index + 1}. #{elem}"} 
  end
end



# I could also have solve this by implementing array_with_index
#def make_list array
#y = []
#array.each_with_index |element, index |
#y << " #{index + 1}. #{element}"
#end
#end

#index is a number that starts at 0 and if you want it can be incremented by 1 (index +1)


# Even more refactoring

# def make_list array
# 	array.map.with_index { |elem, index| "#{index+1}. #{elem}" }
# end

# Using this method inside a Class

# Class Array
# def make_list
# 	self.map.with_index { |elem, index| "#{index +1}. #{elem}"}
# end
# end

# you call it on a Class like this: 
# [some array elememtns].make_list 
