NUMBER_TO_FACTOR = 600851475143

factors = []
remaining = NUMBER_TO_FACTOR

i = 2
while i < remaining
  if remaining % i == 0
    factors.push i
    while remaining % i == 0
      remaining /= i
    end
  end
  i += 1
end

factors.push remaining unless remaining == 0

puts factors.last
