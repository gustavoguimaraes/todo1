# Let's make an object that behaves like a hash today!
 
# I'd like to be able to find keys in the hash regardless of whether they are strings or symbols.
 
# For example
 
# obj = {:blake => "the best"}
# obj["blake"] #=> "the best"
 
# I'd like to be able to set values in our fake hash.
# I'd like to be able to find all values that have keys beginning with the letter a.
# I'd like to be able to get all the keys in the hash in a descending alphabetized array.
require 'debugger'

class FakeHashWrapper
 
 attr_reader :hash
   
   def initialize(hash ={:blake => "the best",:ashley => "awesome",:armando => "angry"})
   @hash = hash
   end
 
   def find_keys(kes)
    hash.each do |key, value|
      value if kes == key.to_s
    end
   end

  def set_values(kes,val)
    @hash[kes.to_sym] = val
  end

  def find_values_a
    hash.each do |key, value|
      if value[0] == "a"
         value
      end
    end
  end

  def get_hash_sorted 
    temp_arr = []
    hash.each do |key, value|
      temp_arr << key
    end
      temp_arr.sort.reverse
  end

end

f = FakeHashWrapper.new

f.set_values("blake", "the bestest")

f.find_keys("blake")

#f.find_values_a

#f.get_hash_sorted