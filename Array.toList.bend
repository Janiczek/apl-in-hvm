#include "Array.foldr.bend"

## Array.toList : Array a -> List a
Array.toList a = (Array.foldr List/Cons List/Nil a)

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

def testArrayToListArrayNonrecursive(_):
  a = Array.repeat(2,99)
  l = Array.toList(a)
  return List.equal(l,[99,99])

def testArrayToListRecursive(_):
  a = Array.repeat(17,99)
  l = Array.toList(a)
  return List.equal(l,[99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99])
