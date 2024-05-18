#include "Array.bend"
#include "Subarrays.empty.bend"
#include "Subarrays.indexedMap.bend"
#include "Subarrays.of.bend"
#include "Subarrays.withFirst.bend"

def Array.repeat(n,x):
  if n == 0:
    return Array/Empty
  else:
    if n > 16:
      return Array.repeat.recursive(n,x)
    else:
      return Array.repeat.nonrecursive(n,x)

def Array.repeat.recursive(n,x):
  perElement = n / 16
  divided = Array.repeat(perElement,x)
  subs = Subarrays.of(divided)
  return Array/Array(
    n,
    Subarrays.withFirst(
      Array.repeat(perElement + (n % 16),x),
      subs,
    ),
    subs,
    subs,
    subs,
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

