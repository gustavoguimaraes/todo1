def roll_dice
    Array.new(5) { rand(1..6) }
  end
 
  def win? roll
    roll.uniq.length == 1 ? true : false
  end


  require './yahtzee'

    describe "#roll_dice" do
        it "should return a number b/w 1 and 6" do
            expect(roll_dice.length).to eq(5)
        end
    end

    describe "#age_in_days" do
        it "should return true if " do
            expect(age_in_days(10)).to eq(3650)
        end
    end