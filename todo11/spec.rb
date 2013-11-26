require_relative "./key_for_min_value"
 
describe "smallest hash value" do
  it "should return the smallest number in the hash" do
    key_for_min_value({:blake => 5, :ashley => 2, :adam => 100}).should eq(:ashley)
  end
 
end