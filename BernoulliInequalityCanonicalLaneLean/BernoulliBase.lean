import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BernoulliInequalityCanonicalLaneLean

structure BernoulliAdmittedObject where
  x : ℝ
  n : ℕ
  hypothesis : x ≥ -1
  conclusion : (1 + x) ^ n ≥ 1 + (n : ℝ) * x

end BernoulliInequalityCanonicalLaneLean
end HautevilleHouse
