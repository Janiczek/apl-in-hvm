#include "Subarrays.first.bend"
#include "Subarrays.of.bend"
#include "Array.sum.bend"

def testSubarraysFirst(_):
  s = Subarrays.of(Array/Value(1))
  f = Subarrays.first(s)
  sum = Array.sum(f)
  return sum == 1
