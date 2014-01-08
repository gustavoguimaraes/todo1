# A palindrome is a string that is written the same forward as it is in reverse. Write a method to return the longest palindrome in a given string.
 
def longest_palindrome(str)
 temp = []
 pali = []
  counter = 0
  until counter == str.length -1
   str.split(//)[counter..-1].each do |char|
    temp << char
    a = temp.join("")
       pali << a if a == a.reverse
    counter += 1
   end
  end
puts pali.inspect
end
 
longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd") #=> "dhfdkjfffhhfffjkdfhd"