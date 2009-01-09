MAX = 2000000

prime_candidates = (2..MAX).collect
primes = []

while !prime_candidates.empty?
  primes.push prime_candidates.first
  prime_candidates -= (1..MAX / primes.last).map{|multiple| primes.last * multiple}
end

puts primes.inject{|sum, number| sum + number}
