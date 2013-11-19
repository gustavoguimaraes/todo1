def play(cards)
        nu_card = rand(11)+1
        cards << nu_card
        nu_card
end


hit_count = 0
cards = [rand(11)+1, rand(11)+1]
sum = cards[0] + cards[1]

until sum >= 21
        puts "The total score of your cards is " + sum.to_s
    puts "Would you like to hit? (hit num: " + hit_count.to_s + ") "
    hit_ans = gets.chomp.downcase
        if hit_ans == "yes"
                hit_count += 1
                sum += play(cards)
        else
                break
        end
end

if sum >= 21
        puts "Winner! With a total of " + sum.to_s
else
        puts "Sorry, you lose with a total of " + sum.to_s
end


