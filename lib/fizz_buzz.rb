class FizzBuzz

  def self.print(input)
    result = ''
    result << 'Fizz' if divisible_by?(input, 3)
    result << 'Buzz' if divisible_by?(input, 5)

    result.empty? ? input : result
  end

  private

  def self.divisible_by?(number, divisor)
    number % divisor == 0
  end
end