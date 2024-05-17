#include "Array.bend"

def testArray(_):
  e = Array/Empty
  v = Array/Value(1)
  es = Subarrays(e,e,e,e)
  a = Array/Array(2,Subarrays(v,v,e,e),es,es,es)
  return 1
