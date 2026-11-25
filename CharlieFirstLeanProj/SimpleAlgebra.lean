import Mathlib.Tactic

theorem t1 {a b : ℤ} : (a - b) * (a + b) = a^2 - b^2 := by
  calc
    (a - b) * (a + b) = a^2 - a*b + a*b - b^2 := by ring
    _ = a^2 - b^2 := by ring

theorem t2 {a b : ℕ} (h1 : b = a^2) (h2 : a ≥ 2) : b ≥ 4 := by
  calc
    b = a^2 := by rw[h1]
    _ >= (2)^2 := by rel [h2]
    _ = 4 := by norm_num
