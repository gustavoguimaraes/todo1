require './fakehashwrapper'

describe FakeHashWrapper do 
  describe '#[](key)' do 
    it "it should find the value if key is provided" do 
      f = FakeHashWrapper.new
      f["gus"] = "great"
      #equal("great") would compare object identity ie it would have to be the same object
      expect(f["gus"]).to eq("great")
    end
  
    it "should not care if the key provided is a string or symbol" do 
      f = FakeHashWrapper.new
      f["tara"] = "amazing"
      expect(f[:tara]).to eq("amazing")
    end
  end

  describe 'find_values_at(letter)' do 
    it "find all values that have keys beginning with the letter a" do 
      f = FakeHashWrapper.new
      f["gus"] = "good"
      f["blake"] = "great"
      f["gaby"] = "okay"
      expect(f.find_values_at("g")).to eq({:gus=>"good", :gaby=>"okay"})
    end

    describe '#sorted_descending_order' do 
      it "it should get all th keys in the hash ina descending alphabetized array" do 
      f = FakeHashWrapper.new
      f["gus"] = "good"
      f["blake"] = "great"
      f["gaby"] = "okay"
      expect(f.sorted_descending_order).to eq([:gus,:gaby,:blake])
      end
    end
  end


end