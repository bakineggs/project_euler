sum_of_squares = (1..100).inject{|sum, number| sum + number * number}

square_of_sums = (1..100).inject{|sum, number| sum + number}
square_of_sums *= square_of_sums

puts square_of_sums - sum_of_squares
