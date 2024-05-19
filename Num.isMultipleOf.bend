## Num.isMultipleOf : Int -> Int -> Bool
Num.isMultipleOf m n = (== (% n m) 0)

def testNumIsMultipleOfTrue(_):
  return Num.isMultipleOf(2, 4)

def testNumIsMultipleOfFalse(_):
  return Num.isMultipleOf(2, 5) == 0

def testNumIsMultipleOfSwapped(_):
  return Num.isMultipleOf(4, 2) == 0
