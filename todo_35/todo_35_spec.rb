require './todo_35'

describe Array do 
  describe "my_transpose" do 
    it "should recreate the transpose ruby method" do 
      a = [[1, 2, 3], [:a, :b, :c]]
      expect(a.my_transpose).to eq([[1, :a], [2, :b], [3, :c]])
    end
  end

end