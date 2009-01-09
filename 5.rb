i = 20
while (1..20).any?{|number| i % number != 0}
  i += 20
end
puts i
