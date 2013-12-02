
require 'awesome_print'

string = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"


def tweet_sub(str)

	new_string =[]
	str.split(" ").each do |word|
		if word == "to" || word == "two"
			new_string << word = 2
		elsif word == "for" || word == "four"
			new_string <<  word = 4
		elsif word == "be"
			new_string <<  word = 'b'
		elsif word == "you"
			new_string <<  word = 'u'
		elsif word == "at"
			new_string <<  word = "@"
		elsif word == "and"
			new_string <<  word = '&'
		else
			new_string << word
		end
				
	end
ap new_string.join(" ")
end

tweet_sub(string)