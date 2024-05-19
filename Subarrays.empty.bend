#include "Array.bend"
#include "Subarrays.of.bend"

## Subarrays.empty : Subarrays a
Subarrays.empty = (Subarrays.of Array/Empty)

#include "Array.toList.bend"
#include "List.isEmpty.bend"

def testSubarraysEmpty(_):
  e = Subarrays.empty
  a = Array/Array(0,e,e,e,e)
  return List.isEmpty(Array.toList(a))

