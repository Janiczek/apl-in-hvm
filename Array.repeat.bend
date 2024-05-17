#include "Array.bend"
#include "Bool.if.bend"
#include "Subarrays.empty.bend"
#include "Subarrays.indexedMap.bend"
#include "Subarrays.of.bend"
#include "Subarrays.withLast.bend"

def Array.repeat(n,x):
  if n == 0:
    return Array/Empty
  else:
    fn = Bool.if(
      n > 16,
      Array.repeat.recursive,
      Array.repeat.nonrecursive
    )
    return fn(n,x)

def Array.repeat.recursive(n,x):
  perElement = n / 16
  divided = Array.repeat(perElement,x)
  return Array/Array(
    n,
    Subarrays.of(divided)
    Subarrays.withLast(
      Array.repeat(perElement + (n % 16),x),
      Subarrays.of(divided)
    )
  )

def Array.repeat.nonrecursive(n,x):
  v = Array/Value(x)
  return Array/Array(
    n,
    Array.repeat.fillFrom(n, 0,v),
    Array.repeat.fillFrom(n, 4,v),
    Array.repeat.fillFrom(n, 8,v),
    Array.repeat.fillFrom(n,12,v)
  )

def Array.repeat.fillFrom(n,di,value):
  return Subarrays.indexedMap(
    Array.repeat.fillFrom.fn(n,di),
    Subarrays.of(value)
  )

def Array.repeat.fillFrom.fn(n,di,i,a):
  if n > i + di:
    return a
  else:
    return Array/Empty

