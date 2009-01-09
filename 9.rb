class PythagoreanTriplet
  attr_accessor :a, :b, :c
  def initialize(a, b)
    @a = a
    @b = b
    @c = Math.sqrt(a * a + b * b)
  end
end

triplets = (1..999).map{|a|
  (1..999).map{|b|
    PythagoreanTriplet.new(a, b)
  }
}.flatten

triplet = triplets.find{|triplet|
  triplet.a + triplet.b + triplet.c == 1000
}

puts triplet.a * triplet.b * triplet.c
