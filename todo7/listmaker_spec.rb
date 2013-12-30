require "./listmaker"

describe "#add_number_to_string" do
	it "should add ascending numbers in front of each element of the array" do
	expect(add_number_to_string(["um", "dois", "tres"])).to eq(["1. um", "2. dois", "3. tres"])
	end

end

describe List do 
  describe "#make_list" do 
    it "should add ascending numbers in front of each element of the array" do 
      example = List.new
      expect(example.make_list(["um", "dois", "tres"])).to eq(["1. um", "2. dois", "3. tres"])
    end
  end
end