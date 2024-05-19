#include "Array.bend"

## Array.empty : Array a
Array.empty = Array/Empty

def testArrayEmpty(_):
  e = Array.empty
  match e:
    case Array/Empty:
      return 1
    case Array/Value:
      return 0
    case Array/Array:
      return 0
