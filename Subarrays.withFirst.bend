#include "Subarrays.bend"

## Subarrays.withFirst : Array a -> Subarrays a -> Subarrays a
Subarrays.withFirst newA0 (Subarrays * a1 a2 a3) =
  (Subarrays newA0 a1 a2 a3)

#include "Array.bend"
#include "Array.repeat.bend"
#include "Array.toList.bend"
#include "List.equal.bend"
#include "Subarrays.first.bend"
#include "Subarrays.of.bend"
#include "Subarrays.withFirst.bend"

def testSubarraysWithFirst0(_):
  s0 = Subarrays.of(Array/Empty)
  s1 = Subarrays.withFirst(Array/Value(99),s0)
  got = Subarrays.first(s1)
  return List.equal(Array.toList(got),[99])

def testSubarraysWithFirst1(_):
  s0 = Subarrays.of(Array/Value(5))
  s1 = Subarrays.withFirst(Array/Value(99),s0)
  got = Subarrays.first(s1)
  return List.equal(Array.toList(got),[99])

def testSubarraysWithFirst2(_):
  s0 = Subarrays.of(Array/Value(5))
  s1 = Subarrays.withFirst(Array/Empty,s0)
  got = Subarrays.first(s1)
  return List.equal(Array.toList(got),[])

def testSubarraysWithFirst3(_):
  s0 = Subarrays.of(Array/Value(5))
  s1 = Subarrays.withFirst(Array.repeat(3,99),s0)
  got = Subarrays.first(s1)
  return List.equal(Array.toList(got),[99,99,99])
