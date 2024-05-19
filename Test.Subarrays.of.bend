#include "Subarrays.of.bend"
#include "Array.bend"
#include "Array.toList.bend"
#include "Array.repeat.bend"
#include "List.equal.bend"

def testSubarraysOfEmpty(_):
  s = Subarrays.of(Array/Empty)
  a = Array/Array(0,s,s,s,s)
  return List.equal(Array.toList(a), [])

def testSubarraysOfValue(_):
  s = Subarrays.of(Array/Value(5))
  e = Subarrays.of(Array/Empty)
  a = Array/Array(4,s,e,e,e)
  return List.equal(Array.toList(a), [5,5,5,5])

def testSubarraysOfArray(_):
  s  = Subarrays.of(Array/Value(5))
  e  = Subarrays.of(Array/Empty)
  sa = Subarrays.of(Array/Array(4,s,e,e,e))
  a  = Array/Array(16,sa,e,e,e)
  return List.equal(Array.toList(a), Array.toList(Array.repeat(16,5)))
