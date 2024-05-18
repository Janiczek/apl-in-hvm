#include "Array.bend"
#include "Array.map.bend"
#include "Array.length.bend"
#include "Array.repeat.bend"
#include "Array.sum.bend"

def testArrayMapEmpty(_):
  fn = lambda x: x+1
  a = Array/Empty
  b = Array.map(fn, a)
  return Bool.and(Array.length(b) == 0, Array.sum(b) == 0)

def testArrayMapValue(_):
  fn = lambda x: x+1
  a = Array/Value(10)
  b = Array.map(fn, a)
  return Bool.and(Array.length(b) == 1, Array.sum(b) == 11)

def testArrayMapArrayNonrecursive(_):
  fn = lambda x: x+1
  a = Array.repeat(10, 5)
  b = Array.map(fn, a)
  return Bool.and(Array.length(b) == 10, Array.sum(b) == 60)
