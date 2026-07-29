import BernoulliInequalityCanonicalLaneLean.BernoulliInductiveProof
import BernoulliInequalityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

structure BernoulliAnalyticFoundation (A : AdmissibleClass) where
  evidence : A.object.conclusion
  bridgeClosed : bridgeClosed A
  gateClosed : gateClosed A

theorem bernoulli_analytic_foundation_closed (A : AdmissibleClass) : BernoulliAnalyticFoundation A := by
  refine {
    evidence := A.object.conclusion
    bridgeClosed := bridge_from_admissible_class A
    gateClosed := gate_from_admissible_class A
  }

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse
