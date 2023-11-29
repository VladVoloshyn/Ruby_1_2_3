def series_sum(x, n)
  sum = 0.0

  (1..n).each do |i|
    sum += Math.sin((2 * i - 1) * x) / (2 * i - 1).to_f
  end

  sum
end

def infinite_series_sum(x, epsilon)
  sum = 0.0
  i = 1

  while (Math.sin((2 * i - 1) * x) / (2 * i - 1).to_f).abs > epsilon
    sum += Math.sin((2 * i - 1) * x) / (2 * i - 1).to_f
    i += 1
  end

  sum
end

# Тестування для заданного діапазона значень x і інтервала значень n
x_range = (0.1..0.8).step(0.1)
n_range = (14..58).step(3)

x_range.each do |x|
  puts "Сумма элементів рядка для x = #{x}: #{series_sum(x, n_range.last)}"
end

# Тестування суми нескінченного рядка з точністю ε=0.001
epsilon = 0.001
infinite_sum = infinite_series_sum(0.5, epsilon)
puts "Сума нескінченного рядка з точністю ε=#{epsilon}: #{infinite_sum}"
