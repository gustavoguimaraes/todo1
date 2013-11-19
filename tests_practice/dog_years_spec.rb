require './dog_years'

    describe "#age_in_years" do
        it "should return input age" do
            expect(age_in_years(75)).to eq(75)
        end
    end

    describe "#age_in_days" do
        it "should return age * 365" do
            expect(age_in_days(10)).to eq(3650)
        end
    end

    describe "#age_in_dog_years" do
        it "should return age * 7" do
            expect(age_in_dog_years(3)).to eq(21)
        end       
    end

