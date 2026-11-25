import Mathlib.Tactic

/- t1 -/
theorem t1 {x y z c : ℝ} (hypothesis1 : z = y ^ 2) (hypothesis2 : y = x + c) : z = (x + c)^2 := by
  calc
    z = y^2 := by rw[hypothesis1]
    _ = (x + c)^2 := by rw[hypothesis2]

theorem t2 (x y z : ℝ) (h1 : z = y) (h2 : y = x) : z = x := by
  calc
    z = y := by rw[h1]
    _ = x := by rw[h2]
