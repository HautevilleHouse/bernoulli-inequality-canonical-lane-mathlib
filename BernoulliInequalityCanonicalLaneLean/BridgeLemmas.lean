import BernoulliInequalityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BernoulliInequalityClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse
