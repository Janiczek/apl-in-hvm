#include "List.isEmpty.bend"

def testListIsEmptyNil(_):
  return List.isEmpty([]) == 1

def testListIsEmptyCons(_):
  return List.isEmpty([1]) == 0
