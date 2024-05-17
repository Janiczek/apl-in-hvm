#include "Num.abs.bend"

def testAbsZero(_):
  return Num.abs(0) == 0

def testAbsUnsigned(_):
  return Num.abs(5) == 5

def testAbsPositive(_):
  return Num.abs(+5) == +5

## TODO Compiler bug:
## def testAbsNegative(_):
##   return Num.abs(-5) == +5

def testAbsNegativeFloat(_):
  return Num.abs(-5.0) == +5.0

def testAbsPositiveFloat(_):
  return Num.abs(+5.0) == +5.0
