#include "Array.bend"
#include "Array.length.bend"
#include "Array.repeat.bend"

def testArrayLengthEmpty(_):
  return Array.length(Array/Empty) == 0

def testArrayLengthValue(_):
  return Array.length(Array/Value(10)) == 1

def testArrayLengthArray(_):
  return Array.length(Array.repeat(3,2)) == 3

