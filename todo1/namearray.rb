#answer to the original assignment
# names = %w[Katie Sarah Pooja Gus]
# random = names[rand(names.length)]
# puts random

#creating classes for practice
class RandomizeNames

  def initialize
    @name = []
  end

  def name
    @name
  end

  def name=(str)
    @name << name = str
  end


  def randomize
    name[rand(name.length)]
  end


end