#include "Array.bend"
#include "Array.length.bend"
#include "Subarrays.indexedMap.bend"

## Array.indexedMap : (Int -> a -> b) -> Array a -> Array b
Array.indexedMap fn a = (Array.indexedMap.in 0 fn a)

## Array.indexedMap.in : Int -> (Int -> a -> b) -> Array a -> Array b
Array.indexedMap.in * *  (Array/Empty)   = (Array/Empty)
Array.indexedMap.in i fn (Array/Value x) = (Array/Value (fn i x))
Array.indexedMap.in i fn (Array/Array l s0 s1 s2 s3) =
  let (i0, ns0) = (Subarrays.indexedMap.in i  fn s0)
  let (i1, ns1) = (Subarrays.indexedMap.in i0 fn s1)
  let (i2, ns2) = (Subarrays.indexedMap.in i1 fn s2)
  let (*,  ns3) = (Subarrays.indexedMap.in i2 fn s3)
  (Array/Array l ns0 ns1 ns2 ns3)
