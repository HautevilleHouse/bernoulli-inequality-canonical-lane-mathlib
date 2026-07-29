import BernoulliInequalityCanonicalLaneLean.BernoulliBase

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

structure BernoulliGeneralizationsPackage where
  weightedBernoulli : Prop
  complexBernoulli : Prop
  matrixBernoulli : Prop

structure BernoulliGeneralizationsEvidence (G : BernoulliGeneralizationsPackage) where
  weightedBernoulliClosed : G.weightedBernoulli
  complexBernoulliClosed : G.complexBernoulli
  matrixBernoulliClosed : G.matrixBernoulli

def BernoulliGeneralizationsClosed (G : BernoulliGeneralizationsPackage) : Prop :=
  G.weightedBernoulli ∧ G.complexBernoulli ∧ G.matrixBernoulli

theorem bernoulli_generalizations_closed_from_evidence
    (G : BernoulliGeneralizationsPackage) (E : BernoulliGeneralizationsEvidence G) :
    BernoulliGeneralizationsClosed G := by
  exact And.intro E.weightedBernoulliClosed
    (And.intro E.complexBernoulliClosed E.matrixBernoulliClosed)

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse
