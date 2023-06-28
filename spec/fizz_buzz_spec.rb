require "fizz_buzz"

describe FizzBuzz do
  describe "Print" do
    context "should print only number" do
      it "should be eq 1" do
        expect(FizzBuzz.print(1)).to eq(1)
      end

      it "should be eq value 1 up to 100 skipping multiple of 3 and 5" do
        1.upto(100) do |value|
          next if value % 3 == 0 || value % 5 == 0

          expect(FizzBuzz.print(value)).to eq(value)
        end
      end
    end

    context "should return Fizz if it's a multiple of 3 skipping multiple of 5" do
      it "should be eq Fizz" do
        expect(FizzBuzz.print(3)).to eq("Fizz")
      end

      it "should be eq Fizz" do
        3.step(100, 3) do |value|
          next if value % 5 == 0

          expect(FizzBuzz.print(value)).to eq("Fizz")
        end
      end
    end

    context "should return Buzz if it's a multiple of 5 skipping multiple of 3" do
      it "should be eq Buzz" do
        expect(FizzBuzz.print(5)).to eq("Buzz")
      end

      it "should be eq Buzz" do
        5.step(100, 5) do |value|
          next if value % 3 == 0

          expect(FizzBuzz.print(value)).to eq("Buzz")
        end
      end
    end

    context "should return FizzBuzz if it's a multiple of 3 and 5 at same time" do
      it "should be eq FizzBuzz" do
        expect(FizzBuzz.print(15)).to eq("FizzBuzz")
      end

      it "should be eq FizzBuzz" do
        1.upto(100) do |value|
          next unless (value % 3 == 0) && (value % 5 == 0)

          expect(FizzBuzz.print(value)).to eq("FizzBuzz")
        end
      end
    end
  end
end