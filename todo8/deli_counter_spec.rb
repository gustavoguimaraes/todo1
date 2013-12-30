require './deli_counter'

describe Deli  do 
  
  describe "#take_number" do 
    it "should take a customer and assign a number to her" do 
      example = Deli.new
      expect(example.take_a_number("Ashley")).to eq(["1. Ashley"])
    end
    it "should take the next customer and assign a number to her" do 
      example = Deli.new
      example.take_a_number("Ashley")
      expect(example.take_a_number("Gus")).to eq(["1. Ashley", "2. Gus"])
    end
  end

  describe '#serving_now' do
  it "removes the customer who is first in line and returns their name"  do
      example = Deli.new
      example.take_a_number("Ashley")
      example.take_a_number("Gus")
      expect(example.serving_now).to eq("Serving now Ashley")
    end

    it "after removing the first customer it the array should contain the reimaning customers"  do
      example = Deli.new
      example.take_a_number("Ashley")
      example.take_a_number("Gus")
      example.serving_now
      expect(example.line).to eq(["Gus"])
    end
  end

end
