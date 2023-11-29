def f1(x)
  x**3 * Math.exp(2 * x)
end

def f2(x)
  Math.tan(x)**(5/2) * (5/x + Math::PI/4)
end

def prm(a, b, n, &f)
  h = (b - a) / n.to_f
  sum = 0.0

  (1..n).each do |i|
    xi = a + i * h
    sum += f.call(xi)
  end

  result = h * sum
  result
end

def trp(a, b, n, &f)
  h = (b - a) / n.to_f
  sum = (f.call(a) + f.call(b)) / 2.0

  (1..n - 1).each do |i|
    xi = a + i * h
    sum += f.call(xi)
  end

  result = h * sum
  result
end

# Тестування для функції f1
a1, b1, n1 = 0.0, 0.8, 1000
result_prm_f1 = prm(a1, b1, n1) { |x| f1(x) }
result_trp_f1 = trp(a1, b1, n1) { |x| f1(x) }

puts "Результат для f1 методом прямокутників: #{result_prm_f1}"
puts "Результат для f1 методом трапеції: #{result_trp_f1}"

# Тестування для функції f2
a2, b2, n2 = 0.0, Math::PI/8, 1000
result_prm_f2 = prm(a2, b2, n2) { |x| f2(x) }
result_trp_f2 = trp(a2, b2, n2) { |x| f2(x) }

puts "Результат для f2 методом прямокутників: #{result_prm_f2}"
puts "Результат для f2 методом трапеції: #{result_trp_f2}"
