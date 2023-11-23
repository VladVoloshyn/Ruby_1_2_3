A = false
B = true
result_a = (!A || !B) && (A || B)
puts "a) ¬(A ∨ B) ∧ (A ∨ ¬B) = #{result_a}"

A = false
B = true
C = true
X = 90
Y = -1
Z = 5
result_b = ((Z != Y) && (6 >= Y)) && A && B && C && (X >= 1.5)
puts "b) (Z ≠ Y) ≤ (6 ≥ Y) ∧ A ∨ B ∧ C ∧ X ≥ 1.5 = #{result_b}"

X = 90
Y = -1
Z = 5
result_c = (8 - X * 2 <= Z) && (X**2 <= Y**2) || (Z >= 15)
puts "c) (8 – X * 2 ≤ Z) ∧ (X^2 <= Y^2) ∨ (Z ≥ 15) = #{result_c}"

X = 90
Y = -1
Z = 5
result_d = (X > 0 && Y < 0) || (Z >= (X*Y + (-Y/X)) + (-Z))
puts "d) X > 0 ∧ Y < 0 ∨ Z ≥ (X*Y + (–Y/X))+(–Z) = #{result_d}"

A = false
B = true
C = true
result_e = !(A || B) && !((C || !(A || B)))
puts "e) ¬((A ∨ B) ∧ ¬((C ∨ (¬(A ∨ B)))) = #{result_e}"

X = 90
Y = -1
result_f = (X**2 + Y**2 >= 1) && (X >= 0) && (Y >= 0)
puts "f) X^2 + Y^2 ≥ 1 ∧ X ≥ 0 ∧ Y ≥ 0 = #{result_f}"

A = false
B = true
C = true
result_g = ((A && (C && (B != B || A))) || C) && B
puts "g) (A ∧ (C ∧ B <>B ∨ A) ∨ C) ∧ B = #{result_g}"
