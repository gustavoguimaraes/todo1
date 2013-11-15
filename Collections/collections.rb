# Collections Practice
 my_array = ["blake", "ashley", "scott"]
# 1. sort the following array in ascending order
#   ["blake", "ashley", "scott"]

puts 1  
puts my_array.sort

# 2. sort the following array in descending order
#   ["blake", "ashley", "scott"]

puts 2
puts my_array.sort { |x , y| y<=> x}

# 3. put the following array in reverse order
#   ["blake", "ashley", "scott"]

puts 3
puts my_array.reverse 


# 4. grab the second element in the array
#   ["blake", "ashley", "scott"]

puts 4
puts my_array[1]

# 5. print each element of the array to the console
#   ["blake", "ashley", "scott"]

puts 5
puts my_array

# 6. create a new array in the following order
#   ["blake", "ashley", "scott"] 
#   should transform into
#   ["blake", "scott", "ashley"]

puts 6
my_array[1] = "scott"
my_array[2] = "ashley"
puts my_array

# 7. using the following array create a hash where the elements in the array are the keys and the values of the hash are those elements with the 3rd character changed to a dollar sign.
#   ["blake", "ashley", "scott"]
puts 7
my_hash = {:blake => "bl$ke", :ashley => "as$ley", :scott => "sc$tt"}
puts my_hash

# 8. create a hash with two keys, "greater_than_10", "less_than_10" and their values will be an array of any numbers greater than 10 or less than 10 in the following array
#   [100, 1000, 5, 2, 3, 15, 1, 1, 100 ]
puts 8

eight_array = [100, 1000, 5, 2, 3, 15, 1, 1, 100 ]
greater_than_10 = []
less_than_10 = []

eight_array.each do |elem| 
	if elem < 10
		less_than_10 << elem
	else
		greater_than_10 << elem
	end
end

puts greater_than_10.sort
puts
puts less_than_10.sort
puts

# Manual manner. hashes = {:greater_than_10 => [15, 100, 100, 1000], :less_than_10 => [1, 1, 2, 3, 5]}
#  puts hashes


# 9. find all the winners and put them in an array
#   {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}
puts 9
hash ={:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}
winner_array = []

hash.each do | x, y|
	if y == "winner"
		winner_array << x
	end
end
puts winner_array
puts

#Manual solution: arr_winner =[{:blake => "winner", :carlos => "winner"}]
# puts arr_winner


# 10. add the following arrays
#   [1,2,3] and [5,9,4]
puts 10
first_array = [1,2,3]
second_array = [5,9,4]

first_array << second_array
puts first_array


# 11. find all words that begin with "a" in the following array
#   ["apple", "orange", "pear", "avis", "arlo", "ascot" ]
# 11. sum all the numbers in the following array
#   [11,4,7,8,9,100,134]
# 12. Add an "s" to each word in the array except for the 2nd element in the array?
#   ["hand","feet", "knee", "table"]
# CHALLENGE
 
# word count
 
# "The summer of tenth grade was the best summer of my life.  I went to the beach everyday and we had amazing weather.  The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  Its amazing how much the weather affects your mood.  Who would have thought that I could write a whole essay just about the weather in tenth grade.  Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong"
 
# Count how many times each word appears in my story.
# Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.
 
# song library
 
# convert the following array of song titles
  
#   ["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"]
 
# to a nested hash of the form
# {:artist1 => :songs => [], :artist2 => :songs => []}
# []