#include "Array.bend"

## Array.length : Array a -> Int
Array.length (Array/Empty) = 0
Array.length (Array/Value *) = 1
Array.length (Array/Array l * * * *) = l

#include "Array.repeat.bend"

def testArrayLengthEmpty(_):
  return Array.length(Array/Empty) == 0

def testArrayLengthValue(_):
  return Array.length(Array/Value(10)) == 1

def testArrayLengthArray(_):
  return Array.length(Array.repeat(3,2)) == 3

