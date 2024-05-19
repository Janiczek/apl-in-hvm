#include "Num.gcd.bend"
def testNumGcdZeroLeft(_):
  return Num.gcd(0,5) == 5

def testNumGcdZeroRight(_):
  return Num.gcd(5,0) == 5

def testNumGcdCoprime(_):
  return Num.gcd(5,3) == 1

def testNumGcdComposite(_):
  return Num.gcd(30,10) == 10
