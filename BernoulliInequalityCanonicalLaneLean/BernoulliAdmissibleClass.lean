import BernoulliInequalityCanonicalLaneLean.BernoulliBase

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

structure AdmissibleClass where
  object : BernoulliAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BernoulliWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse
