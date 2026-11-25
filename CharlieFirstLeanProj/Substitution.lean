module

import Mathlib.Tactic

theorem proof_2 {x y: ℝ} (given_fact1: y = x + 4) (given_fact2: 3 = x) : y = 7 := by
    calc
        y = x + 4 := by rw [given_fact1]
        _ = 3 + 4 := by rw [given_fact2]
        _ = 7 := by norm_num
