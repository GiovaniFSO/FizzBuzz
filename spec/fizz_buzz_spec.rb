require "fizz_buzz"

describe FizzBuzz do
  describe ".print" do
    context "when input is not a multiple of 3 or 5" do
      it "should be eq input numbers" do
        expect(FizzBuzz.print(1)).to eq(1)
        expect(FizzBuzz.print(2)).to eq(2)
        expect(FizzBuzz.print(4)).to eq(4)
      end

      it "should be eq input numbers from 1 to 100 skipping multiples of 3 and 5" do
        expected_output = (1..100).reject { |n| n % 3 == 0 || n % 5 == 0 }
        expected_output.each do |value|
          expect(FizzBuzz.print(value)).to eq(value)
        end
      end
    end

    context "when input is a multiple of 3 and not a multiple of 5" do
      it "should be eq Fizz" do
        expect(FizzBuzz.print(3)).to eq("Fizz")
        expect(FizzBuzz.print(6)).to eq("Fizz")
        expect(FizzBuzz.print(96)).to eq("Fizz")
      end

      it "should be eq Fizz for input numbers that are multiples of 3" do
        expected_output = (3..100).step(3).reject { |n| n % 5 == 0 }
        expected_output.each do |value|
          expect(FizzBuzz.print(value)).to eq("Fizz")
        end
      end
    end

    context "when input is a multiple of 5 and not a multiple of 3" do
      it "should be eq Buzz" do
        expect(FizzBuzz.print(5)).to eq("Buzz")
        expect(FizzBuzz.print(10)).to eq("Buzz")
        expect(FizzBuzz.print(100)).to eq("Buzz")
      end

      it "should be eq Buzz for input numbers that are multiples of 5" do
        expected_output = (5..100).step(5).reject { |n| n % 3 == 0 }
        expected_output.each do |value|
          expect(FizzBuzz.print(value)).to eq("Buzz")
        end
      end
    end

    context "when input is a multiple of both 3 and 5" do
      it "should be eq FizzBuzz" do
        expect(FizzBuzz.print(15)).to eq("FizzBuzz")
        expect(FizzBuzz.print(30)).to eq("FizzBuzz")
        expect(FizzBuzz.print(60)).to eq("FizzBuzz")
      end

      it "should be eq FizzBuzz for input numbers that are multiples of both 3 and 5" do
        expected_output = (1..100).select { |n| n % 3 == 0 && n % 5 == 0 }
        expected_output.each do |value|
          expect(FizzBuzz.print(value)).to eq("FizzBuzz")
        end
      end
    end
  end
end