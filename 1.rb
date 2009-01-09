puts (1...1000).select { |number|
  number % 3 == 0 || number % 5 == 0
}.inject { |sum, number|
  sum + number
}
