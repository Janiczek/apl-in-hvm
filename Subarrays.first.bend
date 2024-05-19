#include "Subarrays.bend"

## Subarrays.first : Subarrays a -> Array a
Subarrays.first (Subarrays x0 * * *) = x0

#include "Subarrays.of.bend"
#include "Array.toList.bend"
#include "List.equal.bend"

def testSubarraysFirst(_):
  s = Subarrays.of(Array/Value(1))
  firstArray = Subarrays.first(s)
  list = Array.toList(firstArray)
  return List.equal(list,[1])
