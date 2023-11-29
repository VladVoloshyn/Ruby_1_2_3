# Генерація матриць A і B
n = 8
matrix_a = Array.new(n) { Array.new(n) { |i| i == (n - 1) - i ? 1 : rand(10) } }
matrix_b = Array.new(n) { Array.new(n) { rand(10) } }

# Генерація векторів X і Y
vector_x = Array.new(n) { rand(10) }.freeze
vector_y = Array.new(n) { rand(10) }.freeze

def multiply_matrix_by_scalar(matrix, scalar)
  matrix.map { |row| row.map { |element| element * scalar } }
end

scalar = 5
result = multiply_matrix_by_scalar(matrix_b, scalar)
puts "1. Множення матриці B на число #{scalar}:"
puts result.inspect
puts "\n"

def add_matrices(matrix_a, matrix_b)
  matrix_a.zip(matrix_b).map { |row_a, row_b| row_a.zip(row_b).map { |a, b| a + b } }
end

result = add_matrices(matrix_a, matrix_b)
puts "2. Складання матриць A и B:"
puts result.inspect
puts "\n"

transposed_matrix_a = matrix_a.transpose
puts "3. Транспонування матриці A:"
puts transposed_matrix_a.inspect
puts "\n"

result = matrix_a.map { |row_a| row_a.map.with_index { |a, i| vector_x[i] * a }.sum }
puts "4. Множення матриця A на матрацю B:"
puts result.inspect
puts "\n"

trace_b = matrix_b.map.with_index { |row, i| row[i] }.sum
puts "5. Слід матриці B:"
puts trace_b
puts "\n"

scalar_product = vector_x.zip(vector_y).map { |x, y| x * y }.sum
puts "6. Внутрішнє (скалярне) множення векторів X и Y:"
puts scalar_product
puts "\n"

outer_product = vector_x.map { |x| vector_y.map { |y| x * y } }
puts "7. Зовнішнє множення X и Y:"
puts outer_product.inspect
puts "\n"

vector_norm = Math.sqrt(vector_x.map { |x| x**2 }.sum)
puts "8. Норма вектора X:"
puts vector_norm
puts "\n"

column_vector_x = vector_x.map { |x| [x] }
result = matrix_a.map { |row_a| row_a.zip(column_vector_x).map { |a, x| a * x[0] }.sum }
puts "9. Множення вектор-стовбців X на матрицю A:"
puts result.inspect
puts "\n"

row_vector_y = [vector_y]
result = matrix_b.transpose.map { |column_b| column_b.zip(row_vector_y[0]).map { |b, y| b * y }.sum }
puts "10. Множення вектор-рядок Y на матрицю B:"
puts result.inspect
