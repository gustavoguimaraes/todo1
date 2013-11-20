require "./listmaker"

describe "#add_number_to_string" do
	it "should add ascending numbers in front of each element of the array" do
	expect(add_number_to_string(["um", "dois", "tres"])).to eq(["1. um", "2. dois", "3. tres"])
	end
end