primes = [2, 3]

i = 5
while primes.length < 10001
  primes.push i unless primes.any?{|prime| i % prime == 0}
  i += 2
end

puts primes.last
