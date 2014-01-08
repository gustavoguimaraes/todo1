require './palindromes.rb'

describe '#longest_palidromes' do 
  it "should check the longest possible polidromes within a given string" do 
    expect(longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd")).to eq("dhfdkjfffhhfffjkdfhd")
  end

end