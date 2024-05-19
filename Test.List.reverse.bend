#include "List.reverse.bend"
#include "List.equal.bend"

def testListReverseNil(_):
  x = List.reverse([])
  return List.equal(x,[])

def testListReverseCons(_):
  x = List.reverse([1,2,3])
  return List.equal(x,[3,2,1])
