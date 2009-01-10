class Fixnum
  def triangle
    raise NotImplementedError if self <= 0
    @triangle ||= if self == 1
      1
    else
      self + (self-1).triangle
    end
  end

  def factors
    @factors ||= (1..self.abs).select do |number|
      self % number == 0
    end
  end
end

i = 1
i += 1 while i.triangle.factors.length < 500

puts i.triangle
