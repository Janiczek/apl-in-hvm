#include "List.length.bend"
def testListLengthNil(_):
  return List.length([]) == 0

def testListLengthCons(_):
  return List.length([1]) == 1

def testListLengthCons2(_):
  return List.length([9,8]) == 2
