require './namearray'

describe RandomizeNames do 

  describe '#name=(str)' do 
    it "writes a string element to the array name" do 
      foo = RandomizeNames.new
      expect(foo.name = "bar").to eq("bar")
    end
  end

  describe '#name' do 
    it "should provide an array of strings" do 
      foo = RandomizeNames.new
      foo.name = "tara"
      foo.name = "bar"
      expect(foo.name).to eq(["tara", "bar"])
    end
  end

  describe '#randomize' do 
    it "should not return an element that is not part of the original array" do 
      foo = RandomizeNames.new
      foo.name = "tar"
      foo.name = "bar"
      foo.randomize.should_not == "car"
    end

    it "should return a random element of the original array" do 
      foo = RandomizeNames.new
      foo.name = "tar"
      foo.name = "bar"
      foo.name.should include(foo.randomize)
      end
    end


end