#include "Array.indexedMap.bend"
#include "Array.length.bend"
#include "Subarrays.bend"

## Subarrays.indexedMap : (Int -> a -> b) -> Subarrays a -> Subarrays b
Subarrays.indexedMap fn subs =
  let (*,s) = (Subarrays.indexedMap.in 0 fn subs)
  s

## Subarrays.indexedMap.in : Int -> (Int -> a -> b) -> Subarrays a -> (Int, Subarrays b)
Subarrays.indexedMap.in i0 fn (Subarrays a0 a1 a2 a3) =
  let i1 = (Subarrays.indexedMap.in.next i0 a0)
  let i2 = (Subarrays.indexedMap.in.next i1 a1)
  let i3 = (Subarrays.indexedMap.in.next i2 a2)
  ( (Subarrays.indexedMap.in.next i3 a3)
  , (Subarrays.indexedMap.in.res fn a0 a1 a2 a3 i0 i1 i2 i3)
  )

## Subarrays.indexedMap.in.next : Int -> Array a -> Int
Subarrays.indexedMap.in.next i a =
  (+ i (Array.length a))

## Subarrays.indexedMap.in.res : (Int -> a -> b) -> Array a -> Array a -> Array a -> Array a -> Int -> Int -> Int -> Int -> Subarrays a
Subarrays.indexedMap.in.res fn a0 a1 a2 a3 i0 i1 i2 i3 =
  (Subarrays 
    (Array.indexedMap.in i0 fn a0)
    (Array.indexedMap.in i1 fn a1)
    (Array.indexedMap.in i2 fn a2)
    (Array.indexedMap.in i3 fn a3))
