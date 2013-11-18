require './fizzbuzzls'

describe "#fizzbuzz" do

	it "should return fizz buzz when number mod 15 = 0" do
		expect(fizzbuzz(75)).to eq("fizzbuzz")
	end

	it "should return  buzz when 10 mod 5 == 0" do
		expect(fizzbuzz(10)).to eq("buzz")
	end

	it "should return fizz when 9 mod 3 == 0" do
		expect(fizzbuzz(9)).to eq("fizz")
	end

	it "should return the integer itself" do 
		expect(fizzbuzz(13)).to eq(13)
	end

end
