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
    raise NotImplementedError if self <= 0
    return @factors unless @factors.nil?
    @factors = [1, self]
    if smallest_other_factor = ((1..Math.sqrt(self)).collect-@factors).find{|number| self % number == 0}
      @factors.push smallest_other_factor
      largest_other_factor = self / smallest_other_factor
      @factors += largest_other_factor.factors
      @factors += largest_other_factor.factors.map{|factor| factor * smallest_other_factor}
    end
    @factors = @factors.uniq
  end
end

i = 1
i += 1 while i.triangle.factors.length < 500

puts i.triangle
