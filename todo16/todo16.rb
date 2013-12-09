# Instructions:
# Count elements in an Array by returning a hash with keys of the elements and values of the amount of times they occur.
 require 'ap'
 require 'debugger'

test = ['cat', 'dog', 'fish', 'fish', 'cat', 'cat', 'fish']
 
def count(array)
	hash = {}
	num = 0
	 array.each do |elem|
	 	hash[elem] = array.select{|other_elem| other_elem == elem
	 	}.size
	 end
	hash
end
 
ap count(test)