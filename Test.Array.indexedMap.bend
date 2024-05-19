#include "Array.indexedMap.bend"
#include "Array.isEmpty.bend"
#include "Array.toList.bend"
#include "Array.sum.bend"
#include "List.equal.bend"

def testArrayIndexedMapEmpty(_):
  fn = lambda i,x: (100*i + x)
  a = Array/Empty
  b = Array.indexedMap(fn,a)
  return Array.isEmpty(b)

def testArrayIndexedMapValue(_):
  fn = lambda i,x: (100*i + x)
  a = Array/Value(5)
  b = Array.indexedMap(fn,a)
  return List.equal(Array.toList(b),[5])

def testArrayIndexedMapArray1(_):
  fn = lambda i,x: (100*i + x)
  a = Array.repeat(10,5)
  b = Array.indexedMap(fn,a)
  return Array.sum(b) == 1050

def testArrayIndexedMapArray2(_):
  fn = lambda i,x: (100*i + x)
  a = Array.repeat(20,5)
  b = Array.indexedMap(fn,a)
  return Array.sum(b) == 19100
