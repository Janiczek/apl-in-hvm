#include "Array.smash.bend"

## Array.sum : Array Int -> Int
Array.sum a = (Array.smash (@x @y (+ x y)) 0 a)

#include "Array.bend"
#include "Array.repeat.bend"

def testArraySumEmpty(_):
  return Array.sum(Array/Empty) == 0

def testArraySumValue(_):
  return Array.sum(Array/Value(5)) == 5

def testArraySumArrayNonrecursive(_):
  return Array.sum(Array.repeat(5,10)) == 50
  
def testArraySumArrayRecursive(_):
  return Array.sum(Array.repeat(20,10)) == 200
