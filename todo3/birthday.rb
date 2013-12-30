
# date = "Nov 14th"

# puts "When is your birthday? For example mine is Sep 19th"
# bday = gets.chomp

# if bday == date
# 	puts "HAPPY BIRTHDAY!"
# else
# 	puts "Thanks, I have that now recorded"
# end

class Birthday

  attr_reader :today

  def initialize(today = Date.today.strftime("%m/%d"))
    @today = today
  end

  def match
    puts is_it_my_birthday? == today ? "Happy Birthday!" : "It is just another day then."
  end

  def is_it_my_birthday?
    puts "When is your birthday mm/dd?"
     Date.parse(gets.chomp).strftime("%m/%d")
  end

end