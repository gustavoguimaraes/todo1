
require 'awesome_print'

string = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

def subs(word)
	if word == "to" || word == "two" || word == "too"
			 word = 2
		elsif word == "for" || word == "four"
			 word = 4
		elsif word == "be"
			 word = 'b'
		elsif word == "you"
			 word = 'u'
		elsif word == "at"
			  word = "@"
		elsif word == "and"
			  word = '&'
		else
				word
		end

end


def tweet_sub(str)
	new_string =[]
	str.split(" ").each do |words|
		new_string<< subs(words)			
	end
ap new_string.join(" ")
end

tweet_sub(string)



tweets = ["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
          "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
          "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.",
          "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"]



def truncated(string)

	if string.size > 140
		string[0..137] + "..."
	else
		string
	end

end



def tweet_if_short(tweets)
	modified_tweet =[]
	tweets.each do |tweet|
		
		if tweet.size > 140
			new_tweet = tweet.split(" ").collect do |word|
			 	 subs(word) 	
			end.join(" ")

			 modified_tweet << truncated(new_tweet)

		 else
		 	modified_tweet << tweet
		end

	end
 
 ap modified_tweet
 
end

tweet_if_short(tweets)








