require './todo16'

describe '#count'  do 

	it 'should return a hash with the animal as the key and a count as a value' do 
 	 count(['cat', 'dog', 'fish', 'fish', 'cat', 'cat', 'fish']).should eq({ 'cat' => 3, 'dog' => 1, 'fish' => 3})
 	end 
	
end