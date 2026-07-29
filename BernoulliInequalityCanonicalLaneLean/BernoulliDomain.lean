import BernoulliInequalityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

structure BernoulliDomainPackage where
  base : ℝ
  exponent : ℕ
  baseCondition : base ≥ -1
  inequalityStatement : (1 + base)^exponent ≥ 1 + (exponent : ℝ) * base

def BernoulliWitnessClosed (O : BernoulliAdmittedObject) : Prop :=
  O.inequalityHolds

structure BernoulliDomainEvidence (P : BernoulliDomainPackage) where
  baseConditionClosed : P.baseCondition
  inequalityStatementClosed : P.inequalityStatement

def BernoulliDomainClosed (P : BernoulliDomainPackage) : Prop :=
  P.baseCondition ∧ P.inequalityStatement

theorem bernoulli_domain_closed_from_evidence (P : BernoulliDomainPackage)
    (E : BernoulliDomainEvidence P) : BernoulliDomainClosed P := by
  exact And.intro E.baseConditionClosed E.inequalityStatementClosed

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse