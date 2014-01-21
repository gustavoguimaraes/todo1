# Separate numbers with a comma each three digits.
 
# I can also solve this with gsub and regex
# n.to_s.reverse.gsub(some regex).regex
def separate_with_comma(n)
  modify = n.to_s.reverse
    if modify.length < 3
      modify.reverse
    else
      temp = []
      counter = 0
      counter +=1
        modify.each_char do |char|
        if counter % 3 == 0 && counter != 0
          c = char + ','
          temp << c
          counter +=1
        else
          temp << char
          counter +=1
        end
      end
    end
  temp.join("").reverse
end
 
# separate_with_comma(1) #=> "1" 
# separate_with_comma(1000) #=> "1,000" 
# separate_with_comma(10000) #=> "10,000"