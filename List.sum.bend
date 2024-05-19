## List.sum : List Int -> Int
List.sum list = (List.smash (@a @b (+ a b)) 0 list)

def testListSumEmpty(_):
  return List.sum([]) == 0

def testListSumNonempty(_):
  return List.sum([1,2,3]) == 6
