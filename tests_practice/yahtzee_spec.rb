require './yahtzee'

    describe "#roll_dice" do
        it "should return a number 5 elements" do
            expect(roll_dice.length).to eq(5)
        end
    end

    describe "#win?" do
        it "should be true if the 5 numbers are the same " do
            expect(win?([1,1,1,1,1])).to eq(true)
        end

        it "should be false if the 5 numbers are not the same" do
        	expect(win?([1,2,3,4,5])).to eq(false)
        end
    end    