#include "Array.isEmpty.bend"
#include "Array.repeat.bend"

def testArrayIsEmptyEmpty(_):
  return Array.isEmpty(Array/Empty)

def testArrayIsEmptyValue(_):
  return Array.isEmpty(Array/Value(1)) == 0

def testArrayIsEmptyArrayRec(_):
  return Array.isEmpty(Array.repeat(10,5)) == 0

def testArrayIsEmptyArrayNonrec(_):
  return Array.isEmpty(Array.repeat(20,5)) == 0
