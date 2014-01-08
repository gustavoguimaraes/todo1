# A palindrome is a string that is written the same forward as it is in reverse. Write a method to return the longest palindrome in a given string.
 
def longest_palindrome(str)
    stage = []
    pali = []
    counter = 0
    until counter == str.length
      temp = []
      str.split(//)[counter..-1].each do |char|
        temp << char
        fusion = temp.join("")
        stage << fusion
        stage.each do |word|
          pali << word if word == word.reverse && word.length > 1
        end
      end
      counter += 1
    end
    winner = "a"
    pali.each do |contestant|
      winner = contestant if contestant.length > winner.length
    end
    winner
  end

longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd") #=> "dhfdkjfffhhfffjkdfhd"