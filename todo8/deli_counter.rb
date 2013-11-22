# Create a class called Deli that has one instance variable: line.
 
# In our deli, we should be able to call "take a number" that takes a customer's name, appends their number to their name and adds them to the line.
 
# The line could look like this: ["1. Ashley", "2. Steve", "3. Blake"] 
 
# Additionally we should be able to call a method called "now_serving" that removes the customer who is first in line and returns their name.
 
# Write a test and then write the class.
 

class Deli

	attr_accessor:line

	def initialize array
		@line = array  #["Ashley", "Steve", "Blake"]
		
	end

	def take_a_number
		number = 0
		new_array = []
		line.each do |elem|
		number += 1 
		a = "#{number}." + " " + elem
		new_array << a
		
		#line << "#{number}. #{elem}"
		end
		line = new_array
		new_array
	end

	def serving_now
		customer = line.first
		 serving = "Serving now #{customer}"
		line.delete_at(0)
		"These people are next: #{line}"
		serving
	end

end


gus = Deli.new(["Ashley", "Steve", "Blake"])

gus.take_a_number

gus.serving_now


