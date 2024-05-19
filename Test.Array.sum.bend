#include "Array.sum.bend"
#include "Array.bend"
#include "Array.repeat.bend"

def testArraySumEmpty(_):
  return Array.sum(Array/Empty) == 0

def testArraySumValue(_):
  return Array.sum(Array/Value(5)) == 5

def testArraySumArrayNonrec(_):
  return Array.sum(Array.repeat(5,10)) == 50
  
def testArraySumArrayRec(_):
  return Array.sum(Array.repeat(20,10)) == 200
