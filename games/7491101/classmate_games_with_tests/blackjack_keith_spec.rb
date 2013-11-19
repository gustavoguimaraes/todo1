require './keith_blackjack'

describe "#play" do
        it "card numbers should be between 1 and 11"  do
                expect( play([]) ).to be >= 1
                expect( play([]) ).to be <= 11
        end
end

describe "#play" do
	it "the sum of two numbers should be below 21" do
		expect( play([] + []) ).to be <22
	end
end