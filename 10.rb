primes = [2, 3]

i = 5
while i < 2000000
  primes.push i unless primes.any?{|prime| i % prime == 0}
  i += 2
end

puts primes.inject{|sum, number| sum + number}
