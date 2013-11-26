require 'awesome_print'
# Collections Practice
 
# Finish the first collections assignment if you haven't already.
 
# Wrap each of these problems in a method, you can also write a test for each method if you'd like to practice testing.  All solutions should be generic and work for any "case" but sometimes a sample case is given.
 
# These problems should get progressively more difficult.
 
# Return true if every element of the tools array starts with an "r" and false otherwise.
  tools = ["ruby", "rspec", "rails"]
 
 def start_with_r(array)
 	array.all? do |elem|
 		elem[0] == "r"
 	end
 end

ap start_with_r(tools)
#ap tools


# Create a new array from the captain_planet array with all the elements that contain the letter "a".  
  captain_planet = ["earth", "fire", "wind", "water", "heart"]
def contain_letter_a(arr)
 	a_array =[]
 	arr.each do |element|
 		if element.split(//).sort[0] == "a"
 			a_array << element
		end
	end
	ap a_array
end

	#contain_letter_a(captain_planet)

# Identify the first element in the stuff array that begins with the letters "wa".
  stuff = ["candy", :pepper, "wall", :ball, "wacky"]
def wa_indentify(array)
	wa_arr = []
 	i = 0
 	array.each do |element|
 		if element[0] == "w" && element[1] == "a"
 			i += 1
 			wa_arr << i.to_s + "st element starting with wa is " + element 
 		end
 	end
ap wa_arr[0]
 end

#wa_indentify(stuff)

# Identify all the elements in the stuff array that begins with the letters "wa".
  stuff = ["candy", :pepper, "wall", :ball, "wacky"]
 def wa_all_indentify(array)
	wa_arr = []
 	array.each do |element|
 		if element[0] == "w" && element[1] == "a"
 			wa_arr <<  element 
 		end
 	end
ap wa_arr
 end

 #wa_all_indentify(stuff)

# Remove anything that's not a string from an array.
# Hint: Use the method "class"  "blake".class

def remove_non_strings(array)
	only_strings_arr = []
 	array.each do |element|
 		if element.class == String
 			only_strings_arr <<  element 
 		end
 	end
	 only_strings_arr
 end

 remove_non_strings(stuff)
 
# Change the third letter of all strings in an array.  Your solution should work for arrays that have mixed types of objects inside it.
 
def change_char(array, char)
	array.collect do |element|
		if element.class == String
			element[2] = char
		end
	end
end

change_char(stuff,"$")


# Count the number of times each word appears in a string and store that data in a hash that has the word 
#as the key and the count as the value.
 
#   string = "the flatiron school is better than general assembly"
 
# Count the number of times each hash appears in the array, remove any duplicates and add a :count key to each hash with the number of times it appears.
#   [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
#     becomes
#   [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]
 
# Take two arrays of hashes and merge the first names and last names into a new array of hashes where each hash has all information about itself.
 
# [
#        {
#         :first_name => "blake"
#     },
#        {
#         :first_name => "ashley"
#     }
# ]
# and
# [
#        {
#          "blake" => {
#             :awesomeness => 10,
#                  :height => "74",
#               :last_name => "johnson"
#         },
#         "ashley" => {
#             :awesomeness => 9,
#                  :height => 60,
#               :last_name => "dubs"
#         }
#     }
# ]
 
# becomes
# [
#        {
#          :first_name => "blake",
#         :awesomeness => 10,
#              :height => "74",
#           :last_name => "johnson"
#     },
#        {
#          :first_name => "ashley",
#         :awesomeness => 9,
#              :height => 60,
#           :last_name => "dubs"
#     }
# ]
 
# Return all hashes that have a value of "cool" for the :temperature key.
# [
#         {
#                :name => "ashley",
#         :temperature => "sort of cool"
#     },
#         {
#                :name => "blake",
#         :temperature => "cool"
#     }
# ]
 
# Convert the nested data structure from it's current structure
 
# {
#   "flatiron school bk" => {
#     :location => "NYC",
#     :price => "free"
#   },
#   "dev boot camp" => {
#     :location => "SF"
#     :price => "a million dollars"
#   },
#   "dev boot camp chicago" => {
#     :location => "Chicago",
#     :price => "half a million dollars"
#   },
#   "general assembly" => {
#     :location => "NYC",
#     :price => "too much"
#   },
#   "some school in SF" => {
#     :location => "SF",
#     :price => "your soul"
#   }
# }
# to a structure that organizes the schools by location.



