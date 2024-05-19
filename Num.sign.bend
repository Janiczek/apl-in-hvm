## Num.sign : Int -> Int
Num.sign n =
  if (== n 0) { 0 }
  else {
    if (> n 0) { 1 }
    else       { -1 }
  }

def testNumSignZeroUnsigned(_):
  return Num.sign(0) == 0

def testNumSignZeroSignedPositive(_):
  return Num.sign(+0) == +0

def testNumSignZeroSignedNegative(_):
  return Num.sign(-0) == -0

def testNumSignPositiveUnsigned(_):
  return Num.sign(5) == 1

def testNumSignPositive(_):
  return Num.sign(+5) == +1

def testNumSignNegative(_):
  return Num.sign(-5) == -1
