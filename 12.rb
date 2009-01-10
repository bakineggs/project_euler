class Fixnum
  def triangle
    raise NotImplementedError if self <= 0
    @triangle ||= if self == 1
      1
    else
      self + (self-1).triangle
    end
  end

  def prime_factors
    if @prime_factors.nil?
      @prime_factors = []
      remaining = self
      divisor = 2
      while remaining > 1
        if remaining % divisor == 0
          remaining /= divisor
          @prime_factors.push divisor
        else
          divisor += 1
        end
      end
    end
    @prime_factors
  end

  def num_factors
    prime_factors.uniq.inject(1) do |product, prime|
      product * (prime_factors.select{|p| p == prime}.length + 1)
    end
  end
end

i = 1
i += 1 while i.triangle.num_factors < 500

puts i.triangle
