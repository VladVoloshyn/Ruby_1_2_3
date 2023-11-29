def gauss_elimination(matrix, vector_b)
  n = matrix.length

  # Прямой хід метода Гауса
  (0..n - 2).each do |i|
    pivot = matrix[i][i]

    (i + 1..n - 1).each do |j|
      factor = matrix[j][i] / pivot

      (i..n - 1).each do |k|
        matrix[j][k] -= factor * matrix[i][k]
      end

      vector_b[j] -= factor * vector_b[i]
    end
  end

  # Обернений хід метода Гауса
  x = Array.new(n, 0)

  (n - 1).downto(0).each do |i|
    x[i] = vector_b[i]

    (i + 1..n - 1).each do |j|
      x[i] -= matrix[i][j] * x[j]
    end

    x[i] /= matrix[i][i]
  end

  return x
end

def print_matrix(matrix)
  matrix.each { |row| puts row.inspect }
end

puts "Введіть розмірність системи (від 3 до 9): "
n = gets.chomp.to_i

unless (3..9).include?(n)
  puts "Помилка: Розмірність системи повинна бути від 3 до 9."
  exit
end

matrix_a = Array.new(n) { Array.new(n, 0) }
vector_b = (1..n).to_a

(0..n - 1).each do |i|
  matrix_a[i][i] = 2

  (0..n - 1).each do |j|
    matrix_a[i][j] = i == j ? 2 : j + 2
  end
end

puts "Матриця коефіцієнтів A:"
print_matrix(matrix_a)
puts "\nВектор правих частин b: #{vector_b.inspect}\n\n"

vector_x = gauss_elimination(matrix_a, vector_b)
puts "Вектор невідомих x: #{vector_x.inspect}"
