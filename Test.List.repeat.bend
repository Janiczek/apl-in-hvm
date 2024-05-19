#include "List.repeat.bend"
#include "List.equal.bend"

def testListRepeat0(_):
  x = List.repeat(0,42)
  return List.equal(x,[])

def testListRepeat1(_):
  x = List.repeat(1,42)
  return List.equal(x,[42])

def testListRepeat2(_):
  x = List.repeat(2,42)
  return List.equal(x,[42,42])
