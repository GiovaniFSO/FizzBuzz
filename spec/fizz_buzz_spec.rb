require "fizz_buzz"

describe FizzBuzz do
  describe "Print" do
    context "should print only number" do
      it "should be eq 1" do
        expect(FizzBuzz.print(1)).to eq(1)
      end
  
      it "should be eq 2" do
        expect(FizzBuzz.print(2)).to eq(2)
      end

      it "should be eq value" do
        1.upto(100) do |value|
          expect(FizzBuzz.print(value)).to eq(value)
        end
      end
    end
  end
end