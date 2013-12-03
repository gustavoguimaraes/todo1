require 'awesome_print'
# Collections Practice
 
# Finish the first collections assignment if you haven't already.
 
# Wrap each of these problems in a method, you can also write a test for each method if you'd like to practice testing.  All solutions should be generic and work for any "case" but sometimes a sample case is given.
 
# These problems should get progressively more difficult.
 
#1.
# Return true if every element of the tools array starts with an "r" and false otherwise.
  tools = ["ruby", "rspec", "rails"]
 
 def start_with_r(array)
 	array.all? do |elem|
 		elem[0] == "r"
 	end
 end

ap start_with_r(tools)

#2.
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
contain_letter_a(captain_planet)


#3.
#captain_planet refactored with the help of Chris
def check_word_for_a(array)
  array.select { |element| element.include?("a") }
end

p check_word_for_a(captain_planet)


#4.
# Identify the first element in the stuff array that begins with the letters "wa".
  stuff = ["candy", :pepper, "wall", :ball, "wacky"]
def waa_indentify(array)
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

waa_indentify(stuff)

#refactored
def find_word_wa(array)
  array.find { |element| element[0..1] == "wa" }
end

find_word_wa(stuff)



#5.
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

 wa_all_indentify(stuff)

#refactored
def find_all_word_wa(array)
  array.select { |element| element[0..1] == "wa" }
end

find_all_word_wa(stuff)




#6.
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


 #refactored code
def remove_non_strings(array)
  array.delete_if do |element|
  element.class != String
	end
end

remove_non_strings(stuff)

#7. 
# Change the third letter of all strings in an array.  Your solution should work for arrays that have mixed types of objects inside it.
 
def change_char(array, char)
	arr = []
	array.each do |element|
		if element.class == String
			element[2] = char
		end
		arr << element
	end
ap arr
end

#refactored code
def change_char(array, char)
	array.collect do |element|
		if element.class == String
			element[2] = char
		end
	end
ap array
end

change_char(stuff,"$")

#8.
# Count the number of times each word appears in a string and store that data in a hash that has the word 
#as the key and the count as the value.
 
string = "the flatiron school is better than general assembly the the general tara tara"

def count_words(str)
	hash_words = {}
	str.split(" ").each do |elem| 
		if hash_words[elem].nil?
			hash_words[elem] = 1 
		else 
			 hash_words[elem] +=1 
		end
	end
 ap hash_words
end

count_words(string)
 
#9.
# Count the number of times each hash appears in the array, remove any duplicates and 
#add a :count key to each hash with the number of times it appears.

array1 = [{:name => "blake"}, {:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
# becomes [{:name => "blake", :count => 3}, {:name => "ashley", :count => 1}]

def hash_name_count(array)
 	array2 = []	
 	num = 0
	# hash is {:name => "blake"}
	array.each do |hash|
		array.each do |other_hash|
			if hash[:name] == other_hash[:name]
				hash[:count].nil? ? hash[:count] = 1 : hash[:count] += 1
			end

	end

		array2 << hash

	
	end
	ap array2.uniq
end

hash_name_count(array1)
   

 
 #10.
# Take two arrays of hashes and merge the first names and last names into a new array of hashes where each hash has all information about itself.
 
first_array = [
       {
        :first_name => "blake"
    },
       {
        :first_name => "ashley"
    }
]
 #and
second_array = [
       {
         "blake" => {
            :awesomeness => 10,
                 :height => "74",
              :last_name => "johnson"
        },
        "ashley" => {
            :awesomeness => 9,
                 :height => 60,
              :last_name => "dubs"
        }
    }
]
 
 #becomes
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
 

def becomes_third(first, second)
	third = []
	#{"blake" => {:awesomeness => 10,:height => "74",:last_name => "johnson"}
	second.each do | array_hash_elem |
		# iterating through each key value pair of hash_elem: key = "blake"  value = :awesomeness => 10,:height => "74",:last_name => "johnson"
		array_hash_elem.each do | name_key, attributes  |
			#iterating over first array hash element= {:first_name => "blake"}
			first.each do |first_hash_element|
				#iterating over key= :first_name,  value= "blake"
				first_hash_element.each do |first_name_key, name_value|
					if name_value == name_key
						 attributes[first_name_key] = name_value
						 third << attributes
					end
				end

			end

		end
	

	end
 ap third
end

becomes_third(first_array, second_array)

 
# Return all hashes that have a value of "cool" for the :temperature key.
cool_array = [
        {
               :name => "ashley",
        :temperature => "sort of cool"
    },
        {
               :name => "blake",
        :temperature => "cool"
    }
]

def return_cool(array)
	cool = []
	#iterate over {:name => "ashley",:temperature => "sort of cool"}
	array.each do |hash_elem|
		#iterate over key value pair. key = :name => "ashley" value => "ashley""
		hash_elem.each_pair do | key_name, value_temp |
			if value_temp == "cool"
				cool << hash_elem
			end
		end
	end
ap cool
end

return_cool(cool_array)
 
# Convert the nested data structure from it's current structure
# to a structure that organizes the schools by location.

current_struc = {
  "flatiron school bk" => {
    :location => "NYC",
    :price => "free"
  },
  "dev boot camp" => {
    :location => "SF",
    :price => "a million dollars"
  },
  "dev boot camp chicago" => {
    :location => "Chicago",
    :price => "half a million dollars"
  },
  "general assembly" => {
    :location => "NYC",
    :price => "too much"
  },
  "some school in SF" => {
    :location => "SF",
    :price => "your soul"
  }
}



def reorganize_struc(hash)
new_hash= {}
	#iterate over each hash element: {(key)"flatiron school bk" => (value){:location => "NYC",:price => "free"}
	hash.each do |hash_elem, value_attributes|
		 #new_hash = {  }
		if new_hash[value_attributes[:location]].nil?

			new_hash[value_attributes[:location]] = []
			new_hash[value_attributes[:location]]<< {:school => hash_elem, :price => value_attributes[:price]} 
		
		else
			new_hash[value_attributes[:location]]<< {:school => hash_elem, :price => value_attributes[:price]} 
		end	
	end
ap new_hash

end
reorganize_struc(current_struc)









