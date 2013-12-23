# Let's make an object that behaves like a hash today!
 
# I'd like to be able to find keys in the hash regardless of whether they are strings or symbols.
 
# For example
 
# obj = {:blake => "the best"}
# obj["blake"] #=> "the best"
 
# I'd like to be able to set values in our fake hash.
# I'd like to be able to find all values that have keys beginning with the letter a.
# I'd like to be able to get all the keys in the hash in a descending alphabetized array.

class FakeHashWrapper
 
 attr_reader :hash
   
   def initialize
   @hash = {}
   end
 
   def [](key)
    hash[key.to_sym]
      
   end

  def []=(key,value)
    @hash[key.to_sym] = value
  end

  def find_values_at(letter)
    hash.select do |key, value|
      value if key[0] == letter
    end
  end

  def sorted_descending_order 
    hash.keys.sort.reverse
  end

end

#  f = FakeHashWrapper.new
# f["tara"] = "amazing"
# f[:blake] = "good"
# f["tara"]

# f.find_values_at("t")

#f.sorted_descending_order 