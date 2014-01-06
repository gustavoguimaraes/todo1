require './todo29'

describe '#even_sum' do 
  it 'should reverse each string with even number of characters' do 
    expect(even_sum(["cat", "dog", "bird", "fish"])).to eq(["drib", "hsif"])
  end
end