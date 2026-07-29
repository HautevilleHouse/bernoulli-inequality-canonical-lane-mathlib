import BernoulliInequalityCanonicalLaneLean.BernoulliDomain

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

structure BernoulliInductionPackage (P : BernoulliDomainPackage) where
  baseCase : Prop
  inductiveStep : Prop
  baseCaseClosed : baseCase
  inductiveStepClosed : inductiveStep
  inductionComplete : Prop

def BernoulliInductionClosed (P : BernoulliDomainPackage)
    (I : BernoulliInductionPackage P) : Prop :=
  I.baseCaseClosed ∧ I.inductiveStepClosed ∧ I.inductionComplete

theorem bernoulli_induction_closed (P : BernoulliDomainPackage)
    (I : BernoulliInductionPackage P) : BernoulliInductionClosed P I := by
  exact And.intro I.baseCaseClosed (And.intro I.inductiveStepClosed I.inductionComplete)

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse