import BernoulliInequalityCanonicalLaneLean.BernoulliInequalityBasePackage

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

structure InductionProofPackage (pkg : BernoulliInequalityPackage) where
  integerExponent : ℕ
  exponentMatch : pkg.exponent = (integerExponent : ℝ)
  baseGreaterThanNegOne : pkg.base > -1

def InductionProofEvidence (pkg : BernoulliInequalityPackage) (ind : InductionProofPackage pkg) : Prop :=
  ind.baseGreaterThanNegOne → pkg.inequalityStatement

theorem induction_proof_closed (pkg : BernoulliInequalityPackage) (ind : InductionProofPackage pkg) (h : ind.baseGreaterThanNegOne) : pkg.inequalityStatement := by
  -- Standard induction proof for integer exponent
  induction ind.integerExponent with
  | zero => 
    simp [pkg.inequalityStatement]
    -- (1+b)^0 = 1 >= 1 + 0*b = 1, equality holds
    exact le_refl 1
  | succ k ih =>
    have hpos : 1 + pkg.base > 0 := by linarith
    have h_ineq : (1 + pkg.base) ^ (k : ℕ) ≥ 1 + (k : ℝ) * pkg.base := ih
    have h_mul : (1 + pkg.base) * ((1 + pkg.base) ^ (k : ℕ)) ≥ (1 + pkg.base) * (1 + (k : ℝ) * pkg.base) := by
      nlinarith
    calc
      (1 + pkg.base) ^ (k.succ : ℕ) = (1 + pkg.base) * ((1 + pkg.base) ^ (k : ℕ)) := by ring
      _ ≥ (1 + pkg.base) * (1 + (k : ℝ) * pkg.base) := h_mul
      _ = 1 + pkg.base + (k : ℝ) * pkg.base + (k : ℝ) * pkg.base ^ 2 := by ring
      _ ≥ 1 + (k.succ : ℝ) * pkg.base := by
        nlinarith [sq_nonneg pkg.base]

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse