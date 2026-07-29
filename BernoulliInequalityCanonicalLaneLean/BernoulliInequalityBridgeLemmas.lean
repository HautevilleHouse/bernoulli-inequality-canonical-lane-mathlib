import BernoulliInequalityCanonicalLaneLean.BernoulliInequalityBasePackage

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

def bernoulliBridgeClosed (A : BernoulliAdmissibleClass) : Prop :=
  A.inequalityHolds

theorem bridge_from_admissible_class (A : BernoulliAdmissibleClass) : bernoulliBridgeClosed A := by
  exact A.inequalityHolds

def bernoulliGateClosed (A : BernoulliAdmissibleClass) : Prop :=
  A.exponentNonnegative

theorem gate_from_admissible_class (A : BernoulliAdmissibleClass) : bernoulliGateClosed A := by
  exact A.exponentNonnegative

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse