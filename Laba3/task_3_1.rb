x = 2
sum = 0
numerator = 1
denominator = 1

for n in 0..10
  term = (numerator.to_f / denominator) * (x ** n)
  sum += term
  numerator += 1
  denominator += 1
end

puts sum
