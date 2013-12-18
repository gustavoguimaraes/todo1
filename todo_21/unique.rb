# instructions: implement Array.uniq

class Array
 
  
  def uniq
    array = []
    self.each do |element|
      array << element unless array.include? element
    end
      array
  end

end

p [2,2,2,4,4,4,5].uniq

