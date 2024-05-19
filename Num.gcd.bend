## Num.gcd : Int -> Int -> Int
Num.gcd x 0 = x
Num.gcd 0 x = x
Num.gcd x y = (Num.gcd y (% x y))

def testNumGcdZeroLeft(_):
  return Num.gcd(0,5) == 5

def testNumGcdZeroRight(_):
  return Num.gcd(5,0) == 5

def testNumGcdCoprime(_):
  return Num.gcd(5,3) == 1

def testNumGcdComposite(_):
  return Num.gcd(30,10) == 10
