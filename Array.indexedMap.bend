#include "Array.bend"
#include "Array.length.bend"
#include "Subarrays.indexedMap.bend"

## Array.indexedMap : (Int -> a -> b) -> Array a -> Array b
Array.indexedMap fn a = (Array.indexedMap.inner 0 fn a)

## Array.indexedMap.inner : Int -> (Int -> a -> b) -> Array a -> Array b
Array.indexedMap.inner * *  (Array/Empty)   = (Array/Empty)
Array.indexedMap.inner i fn (Array/Value x) = (Array/Value (fn i x))
Array.indexedMap.inner i fn (Array/Array l s0 s1 s2 s3) =
  let (i0, ns0) = (Subarrays.indexedMap.inner i  fn s0)
  let (i1, ns1) = (Subarrays.indexedMap.inner i0 fn s1)
  let (i2, ns2) = (Subarrays.indexedMap.inner i1 fn s2)
  let (*,  ns3) = (Subarrays.indexedMap.inner i2 fn s3)
  (Array/Array l ns0 ns1 ns2 ns3)

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
