import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "bernoulli-inequality-canonical-lane",
  theoremName := "BernoulliInequality",
  theoremObject := "(1 + x)^n ≥ 1 + nx for x ≥ -1 and n ∈ ℕ",
  classicalBoundary := "carried remainder: full real exponent case",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried by TheoremLayerInternalized"
}

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse