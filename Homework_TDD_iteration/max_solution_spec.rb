require './max_solution'

describe "#maximum" do
it "should give the maximum number in an array" do
	expect(maximum([2,18,4]) ).to eq(18)
	end
end

describe "Array, #maximum" do
	it "should return the maximum nuber of an array which is an instance of a class" do
		expect(([2,18,4]).maximum).to eq(18)
	end
end