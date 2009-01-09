puts (100..999).map { |first|
  (100..999).map do |second|
    first * second
  end
}.flatten.uniq.sort.reverse.find{|number| number.to_s == number.to_s.reverse}
