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

      it "should be eq value 1 up to 100 skipping multiple of 3" do
        1.upto(100) do |value|
          next if value % 3 == 0

          expect(FizzBuzz.print(value)).to eq(value)
        end
      end
    end

    context "should return Fizz if it's a multiple of 3" do
      it "should be eq Fizz" do
        expect(FizzBuzz.print(3)).to eq("Fizz")
      end

      it "should be eq Fizz" do
        3.step(100, 3) do |value|
          expect(FizzBuzz.print(value)).to eq("Fizz")
        end
      end
    end
  end
end