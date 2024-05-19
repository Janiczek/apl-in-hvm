## Bool.not : Bool -> Bool
Bool.not 0 = 1
Bool.not * = 0

def testBoolNotT(_):
  return Bool.not(1) == 0

def testBoolNotF(_):
  return Bool.not(0) == 1
