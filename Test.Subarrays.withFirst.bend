#include "Array.bend"
#include "Array.sum.bend"
#include "Subarrays.first.bend"
#include "Subarrays.of.bend"
#include "Subarrays.withFirst.bend"

def testSubarraysWithFirstEmpty(_):
  s0 = Subarrays.of(Array/Empty)
  s1 = Subarrays.withFirst(Array/Value(99),s0)
  got = Subarrays.first(s1)
  sum = Array.sum(got)
  return sum == 99
