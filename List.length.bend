## List.length : List a -> Int
List.length [] = 0
List.length (List/Cons x xs) = (+ 1 (List.length xs))

def testListLengthNil(_):
  return List.length([]) == 0

def testListLengthCons(_):
  return List.length([1]) == 1

def testListLengthCons2(_):
  return List.length([9,8]) == 2
