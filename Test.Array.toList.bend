#include "Array.toList.bend"
#include "Array.repeat.bend"
#include "List.equal.bend"

def testArrayToListEmpty(_):
  a = Array/Empty
  l = Array.toList(a)
  return List.equal(l,[])

def testArrayToListValue(_):
  a = Array/Value(99)
  l = Array.toList(a)
  return List.equal(l,[99])

def testArrayToListNonrec(_):
  a = Array.repeat(2,99)
  l = Array.toList(a)
  return List.equal(l,[99,99])

def testArrayToListRec(_):
  a = Array.repeat(17,99)
  l = Array.toList(a)
  return List.equal(l,[99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99])
