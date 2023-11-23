# frozen_string_literal: true

P = 5
t = 8
r = 0

# Calc max anc min value for int part
max_integer_part = P**r - 1
min_integer_part = 0

# Calc max anc min value for fract part
max_fractional_part = (P - 1) / (P**t - 1)
min_fractional_part = 0

# Range
max_value = max_integer_part + max_fractional_part
min_value = min_integer_part + min_fractional_part

# 0.0 and 0.0000001
puts "Max value: #{max_value}"
puts "Min value: #{min_value}"
