import Mathlib.Tactic

theorem charlie_first_proof {a : ℕ} (h1: a = 4) : a > 1 := by
    calc
        a = 4 := by rw [h1]
        _ > 1 := by norm_num
