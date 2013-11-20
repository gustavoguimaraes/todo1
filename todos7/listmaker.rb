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

add_number_to_string(["ich", "ni", "san"])