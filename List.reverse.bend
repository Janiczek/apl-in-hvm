#include "List.concat.bend"

## List.reverse : List a -> List a
List.reverse [] = []
List.reverse (List/Cons x xs) = (List.concat (List.reverse xs) [x])

#include "List.equal.bend"

def testListReverseNil(_):
  x = List.reverse([])
  return List.equal(x,[])

def testListReverseCons(_):
  x = List.reverse([1,2,3])
  return List.equal(x,[3,2,1])
