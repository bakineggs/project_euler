prime_candidates = (2..2000000).collect
primes = []

while !prime_candidates.empty?
  primes.push prime_candidates.first
  prime_candidates.reject!{|candidate| candidate % primes.last == 0}
end

puts primes.inject{|sum, number| sum + number}
