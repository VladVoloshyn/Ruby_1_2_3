# Масиви А и С
array_a = Array.new(14) { rand(1..20) }
array_c = Array.new(14) { rand(1..20) }

# Вивід масивів
puts "Масив A: #{array_a.inspect}"
puts "Масив C: #{array_c.inspect}"

# Будуємо спілний масив
array_b = array_a & array_c

puts "Масив B: #{array_b.inspect}"
