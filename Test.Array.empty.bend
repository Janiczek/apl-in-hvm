#include "Array.empty.bend"

def testArrayEmpty(_):
  e = Array.empty
  match e:
    case Array/Empty:
      return 1
    case Array/Value:
      return 0
    case Array/Array:
      return 0
