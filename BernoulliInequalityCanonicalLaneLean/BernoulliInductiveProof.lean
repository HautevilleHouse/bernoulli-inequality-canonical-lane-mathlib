import BernoulliInequalityCanonicalLaneLean.BernoulliBase

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

structure BernoulliInductiveEvidence where
  baseCase : ∀ (x : ℝ), x ≥ -1 → (1 + x) ^ 0 ≥ 1 + (0 : ℝ) * x
  stepCase : ∀ (x : ℝ) (k : ℕ), (1 + x) ^ k ≥ 1 + (k : ℝ) * x → (1 + x) ^ (k + 1) ≥ 1 + ((k + 1 : ℕ) : ℝ) * x
  baseCaseProof : baseCase
  stepCaseProof : stepCase

def BernoulliInductiveEvidenceFromBase (x : ℝ) (h : x ≥ -1) : BernoulliInductiveEvidence :=
  let base : (1 + x) ^ 0 ≥ 1 + (0 : ℝ) * x := by
    simp
  let step (k : ℕ) (ih : (1 + x) ^ k ≥ 1 + (k : ℝ) * x) : (1 + x) ^ (k + 1) ≥ 1 + ((k + 1 : ℕ) : ℝ) * x := by
    have hx' : 1 + x ≥ 0 := by linarith
    calc
      (1 + x) ^ (k + 1) = (1 + x) * (1 + x) ^ k := by ring
      _ ≥ (1 + x) * (1 + (k : ℝ) * x) := by
        nlinarith
      _ = 1 + (k : ℝ) * x + x + (k : ℝ) * x ^ 2 := by ring
      _ ≥ 1 + ((k + 1 : ℕ) : ℝ) * x := by
        have hpos : x ^ 2 ≥ 0 := by nlinarith
        nlinarith
  {
    baseCase := λ x' h' => by
      simp
    stepCase := λ x' k ih => step k ih
    baseCaseProof := λ x' h' => by
      simp
    stepCaseProof := λ x' k ih => step k ih
  }

theorem bernoulli_inequality_holds (x : ℝ) (h : x ≥ -1) (n : ℕ) : (1 + x) ^ n ≥ 1 + (n : ℝ) * x := by
  induction n with
  | zero => simp
  | succ k ih =>
    have hx' : 1 + x ≥ 0 := by linarith
    calc
      (1 + x) ^ (k + 1) = (1 + x) * (1 + x) ^ k := by ring
      _ ≥ (1 + x) * (1 + (k : ℝ) * x) := by nlinarith
      _ = 1 + (k : ℝ) * x + x + (k : ℝ) * x ^ 2 := by ring
      _ ≥ 1 + ((k + 1 : ℕ) : ℝ) * x := by
        have hx2 : x^2 ≥ 0 := by nlinarith
        nlinarith

def BernoulliWitnessClosed (O : BernoulliAdmittedObject) : Prop :=
  O.conclusion

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse