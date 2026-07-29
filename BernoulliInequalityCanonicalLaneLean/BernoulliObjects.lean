import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

structure BernoulliInequalityObject where
  a : ℝ
  n : ℕ
  ha : a ≥ -1
  conclusion : (1 + a) ^ n ≥ 1 + (n : ℝ) * a

structure BernoulliAdmittedObject where
  object : BernoulliInequalityObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmissibleClass where
  object : BernoulliInequalityObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def BernoulliWitnessClosed (O : BernoulliInequalityObject) : Prop :=
  O.conclusion

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse