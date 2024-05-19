#include "Num.abs.bend"
def testNumAbsZero(_):
  return Num.abs(0) == 0

def testNumAbsUnsigned(_):
  return Num.abs(5) == 5

def testNumAbsPositive(_):
  return Num.abs(+5) == +5

def testNumAbsNegative(_):
  return Num.abs(-5) == +5

def testNumAbsNegativeFloat(_):
  return Num.abs(-5.0) == +5.0

def testNumAbsPositiveFloat(_):
  return Num.abs(+5.0) == +5.0
