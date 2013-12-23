# instructions: implement Array.uniq

class Arr
 attr_reader :test
  def initialize(test = [2,2,2,4,4,4,5])
    @test = test
  end
  
  def un
    array = []
    test.each do |element|
      array << element unless array.include? element
    end
      array
  end

end

foo = Arr.new


p foo.un

