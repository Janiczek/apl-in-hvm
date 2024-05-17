#include "Array.bend"
#include "Array.empty.bend"
#include "Array.foldl.bend"
#include "Array.foldr.bend"
#include "Array.length.bend"
#include "Array.map.bend"
#include "Array.repeat.bend"
#include "Array.singleton.bend"
#include "Array.smash.bend"

main = Array/Empty


def test_Array:
  e = Array/Empty
  v = Array/Value(1)
  a = Array/Array(2,Subarrays(v,v,e,e,e,e,e,e,e,e,e,e,e,e,e))
  return 1

def test_Array.empty:
  e = Array.empty
  return 1

def test_Array.foldl:
  sum = lambda n,acc: n + acc
  arr = Array.repeat(5,10)
  x = Array.foldl(sum,0,arr)
  return x == 50
