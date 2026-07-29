import BernoulliInequalityCanonicalLaneLean.BernoulliObjects

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

structure BernoulliStandardProofCertificate (O : BernoulliInequalityObject) where
  algebraicLemma : Prop
  inductionBase : Prop
  inductionStep : Prop
  algebraicLemmaClosed : algebraicLemma
  inductionBaseClosed : inductionBase
  inductionStepClosed : inductionStep
  evidence : BernoulliWitnessClosed O

structure BernoulliStandardProofEvidence (O : BernoulliInequalityObject)
    (C : BernoulliStandardProofCertificate O) where
  algebraicLemmaClosed : C.algebraicLemma
  inductionBaseClosed : C.inductionBase
  inductionStepClosed : C.inductionStep
  evidenceClosed : BernoulliWitnessClosed O

def BernoulliStandardProofCertificate.evidence (O : BernoulliInequalityObject)
    (C : BernoulliStandardProofCertificate O) : BernoulliStandardProofEvidence O C :=
  {
    algebraicLemmaClosed := C.algebraicLemmaClosed
    inductionBaseClosed := C.inductionBaseClosed
    inductionStepClosed := C.inductionStepClosed
    evidenceClosed := C.evidence
  }

def BernoulliStandardProofClosed (O : BernoulliInequalityObject)
    (C : BernoulliStandardProofCertificate O) : Prop :=
  C.algebraicLemma ∧ C.inductionBase ∧ C.inductionStep ∧ BernoulliWitnessClosed O

theorem bernoulli_standard_proof_closed_from_evidence (O : BernoulliInequalityObject)
    (C : BernoulliStandardProofCertificate O) (E : BernoulliStandardProofEvidence O C) :
    BernoulliStandardProofClosed O C := by
  exact And.intro E.algebraicLemmaClosed
    (And.intro E.inductionBaseClosed (And.intro E.inductionStepClosed E.evidenceClosed))

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse