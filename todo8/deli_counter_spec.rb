require './deli_counter'

describe "Class #now_serving"  do
	it "removes the customer who is first in line and returns their name"  do
		expect(Deli.new(["Ashley", "Steve", "Blake"]).serving_now).to eq("Serving now Ashley")
	end
end