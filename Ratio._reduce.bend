#include "Num.gcd.bend"

## Ratio._reduce : Int -> Int -> Ratio
def Ratio._reduce(n,d):
  gcd = Num.gcd(n,d)
  return (n / gcd, d / gcd)

## TODO tests
