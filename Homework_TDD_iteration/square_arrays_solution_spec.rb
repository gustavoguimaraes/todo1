require './square_arrays_solution'

describe "#square_array"  do  
	it "should return the square of 5 and 6" do
	expect(square_array([5, 6])).to eq([25, 36])
	end

	it "should return the square of 10 and 9" do
	expect(square_array([10, 9])).to eq([100, 81])
	end
end
 
