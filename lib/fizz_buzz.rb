class FizzBuzz

  def self.print(input)
    return "Fizz" if input % 3 == 0 && input % 5 != 0
    return "Buzz" if input % 5 == 0

    input
  end
end