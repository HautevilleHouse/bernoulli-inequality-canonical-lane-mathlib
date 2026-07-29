import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

structure BernoulliAdmissibleClass where
  base : ℝ
  exponent : ℝ
  baseMinusOne : ℝ := base - 1
  exponentNonnegative : exponent ≥ 0
  inequalityHolds : (1 + baseMinusOne) ^ exponent ≥ 1 + exponent * baseMinusOne

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse