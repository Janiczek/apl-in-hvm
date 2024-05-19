## List.isEmpty : List a -> Bool
List.isEmpty (List/Nil)      = 1
List.isEmpty (List/Cons * *) = 0

def testListIsEmptyNil(_):
  return List.isEmpty([]) == 1

def testListIsEmptyCons(_):
  return List.isEmpty([1]) == 0
