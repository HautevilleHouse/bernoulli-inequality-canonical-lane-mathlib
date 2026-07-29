import BernoulliInequalityCanonicalLaneLean.BernoulliInequalityBridgeLemmas

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

def BernoulliInequalityClosure (A : BernoulliAdmissibleClass) : Prop :=
  bernoulliBridgeClosed A ∧ bernoulliGateClosed A

theorem bernoulli_inequality_endgame (A : BernoulliAdmissibleClass) : BernoulliInequalityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse