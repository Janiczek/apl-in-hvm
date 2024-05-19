#include "List.sum.bend"
def testListSumEmpty(_):
  return List.sum([]) == 0

def testListSumNonempty(_):
  return List.sum([1,2,3]) == 6
