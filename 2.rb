class FibonacciSequence
  def initialize
    @numbers = [1, 2]
  end

  def upto limit
    while (number = next_number) <= limit
      @numbers.push number
    end
    @numbers
  end

  private
    def next_number
      last_two = @numbers.last(2)
      last_two.first + last_two.last
    end
end

puts FibonacciSequence.new.upto(3999999).select { |number|
  number % 2 == 0
}.inject { |sum, number|
  sum + number
}
