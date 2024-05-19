#include "Array.bend"

## Array.isEmpty : Array a -> Bool
Array.isEmpty (Array/Empty)   = 1
Array.isEmpty (Array/Value *) = 0
Array.isEmpty (Array/Array l * * * *) = (== l 0)

#include "Array.repeat.bend"

def testArrayIsEmptyEmpty(_):
  return Array.isEmpty(Array/Empty)

def testArrayIsEmptyValue(_):
  return Array.isEmpty(Array/Value(1)) == 0

def testArrayIsEmptyArrayNonrecursive(_):
  return Array.isEmpty(Array.repeat(10,5)) == 0

def testArrayIsEmptyArrayRecursive(_):
  return Array.isEmpty(Array.repeat(20,5)) == 0
