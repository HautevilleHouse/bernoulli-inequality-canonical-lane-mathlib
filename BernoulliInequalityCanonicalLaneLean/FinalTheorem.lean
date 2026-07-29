import BernoulliInequalityCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

def ConstrainedBernoulliClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bernoulli_endgame (A : AdmissibleClass) :
    ConstrainedBernoulliClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse
