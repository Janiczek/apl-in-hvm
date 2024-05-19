#include "Subarrays.empty.bend"
#include "Array.toList.bend"
#include "List.isEmpty.bend"

def testSubarraysEmpty(_):
  e = Subarrays.empty
  a = Array/Array(0,e,e,e,e)
  return List.isEmpty(Array.toList(a))

