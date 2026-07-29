import BernoulliInequalityCanonicalLaneLean.BernoulliBase
open Real

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

structure RealBernoulliProofPackage where
  convexityMethod : Prop
  inductionForNaturalExponents : Prop
  generalizationToRealExponents : Prop

structure RealBernoulliProofEvidence (R : RealBernoulliProofPackage) where
  convexityMethodClosed : R.convexityMethod
  inductionForNaturalExponentsClosed : R.inductionForNaturalExponents
  generalizationToRealExponentsClosed : R.generalizationToRealExponents

def RealBernoulliProofClosed (R : RealBernoulliProofPackage) : Prop :=
  R.convexityMethod ∧ R.inductionForNaturalExponents ∧ R.generalizationToRealExponents

theorem real_bernoulli_proof_closed_from_evidence
    (R : RealBernoulliProofPackage) (E : RealBernoulliProofEvidence R) :
    RealBernoulliProofClosed R := by
  exact And.intro E.convexityMethodClosed
    (And.intro E.inductionForNaturalExponentsClosed E.generalizationToRealExponentsClosed)

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse
