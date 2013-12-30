require './birthday'

describe Birthday do 
  describe '#today' do 
    it "should return the current date" do 
      date = Birthday.new
      expect(date.today).to eq(Date.today.strftime("%m/%d"))
    end
  end

  describe '#match' do 
    it "should return \"Happy Birthday\" if date match today" do 
      date = Birthday.new
      date.stub(:gets) {Date.today.strftime("%m/%d")}
      expect(date.match).to eq(puts "Happy Birthday!")
    end

    it "should return \"It is just another day then.\" if the date does not match today" do 
      date = Birthday.new
      date.stub!(:gets) {Date.today.strftime("%m/%d").succ}
      expect(date.match).to eq (puts "It is just another day then.")
    end

  end

describe '#is_it_my_birthday?' do 
    it "should raise an error if no gets is defined or defined incorrectly" do 
      date = Birthday.new
      expect{date.is_it_my_birthday?}.to raise_error
    end
  end

end