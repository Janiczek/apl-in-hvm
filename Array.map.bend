#include "Array.bend"
#include "Subarrays.map.bend"

## Array.map : (a -> b) -> Array a -> Array b
Array.map *  (Array/Empty)   = (Array/Empty)
Array.map fn (Array/Value x) = (Array/Value (fn x))
Array.map fn (Array/Array l subs0 subs1 subs2 subs3) =
  (Array/Array l
    (Subarrays.map fn subs0)
    (Subarrays.map fn subs1)
    (Subarrays.map fn subs2)
    (Subarrays.map fn subs3))

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

def testArrayMapArrayRecursive(_):
  fn = lambda x: x+1
  a = Array.repeat(20, 5)
  b = Array.map(fn, a)
  return Bool.and(Array.length(b) == 20, Array.sum(b) == 100)
