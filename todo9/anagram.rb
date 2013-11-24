class Anagram

  attr_reader :word

  def initialize(word)
    @word = word
  end

    def match(test_array)
      match_array = []
        test_array.each do |element|
            if word.split(//).sort == element.split(//).sort
              match_array << element
            end
          end
      match_array
    end

end


#testword = Anagram.new("ba")

#testword.match(%w(ab ga ff))
