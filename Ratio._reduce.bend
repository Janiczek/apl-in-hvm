#include "Num.gcd.bend"

def Ratio._reduce(n,d):
  gcd = Num.gcd(n,d)
  return (n / gcd, d / gcd)
