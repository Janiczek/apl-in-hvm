## Num.abs : Int -> Int
Num.abs n =
  if (< n 0) { (- +0 n) }
  else       { n }

def testAbsZero(_):
  return Num.abs(0) == 0

def testAbsUnsigned(_):
  return Num.abs(5) == 5

def testAbsPositive(_):
  return Num.abs(+5) == +5

def testAbsNegative(_):
  return Num.abs(-5) == +5

def testAbsNegativeFloat(_):
  return Num.abs(-5.0) == +5.0

def testAbsPositiveFloat(_):
  return Num.abs(+5.0) == +5.0
