import BernoulliInequalityCanonicalLaneLean.BernoulliObjects

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

structure BernoulliConvexProofCertificate (O : BernoulliInequalityObject) where
  convexFunction : Prop
  derivativeInequality : Prop
  convexApplication : Prop
  convexFunctionClosed : convexFunction
  derivativeInequalityClosed : derivativeInequality
  convexApplicationClosed : convexApplication
  evidence : BernoulliWitnessClosed O

structure BernoulliConvexProofEvidence (O : BernoulliInequalityObject)
    (C : BernoulliConvexProofCertificate O) where
  convexFunctionClosed : C.convexFunction
  derivativeInequalityClosed : C.derivativeInequality
  convexApplicationClosed : C.convexApplication
  evidenceClosed : BernoulliWitnessClosed O

def BernoulliConvexProofCertificate.evidence (O : BernoulliInequalityObject)
    (C : BernoulliConvexProofCertificate O) : BernoulliConvexProofEvidence O C :=
  {
    convexFunctionClosed := C.convexFunctionClosed
    derivativeInequalityClosed := C.derivativeInequalityClosed
    convexApplicationClosed := C.convexApplicationClosed
    evidenceClosed := C.evidence
  }

def BernoulliConvexProofClosed (O : BernoulliInequalityObject)
    (C : BernoulliConvexProofCertificate O) : Prop :=
  C.convexFunction ∧ C.derivativeInequality ∧ C.convexApplication ∧ BernoulliWitnessClosed O

theorem bernoulli_convex_proof_closed_from_evidence (O : BernoulliInequalityObject)
    (C : BernoulliConvexProofCertificate O) (E : BernoulliConvexProofEvidence O C) :
    BernoulliConvexProofClosed O C := by
  exact And.intro E.convexFunctionClosed
    (And.intro E.derivativeInequalityClosed (And.intro E.convexApplicationClosed E.evidenceClosed))

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse