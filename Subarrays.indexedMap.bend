#include "Array.indexedMap.bend"
#include "Array.length.bend"
#include "Subarrays.bend"

## Subarrays.indexedMap : (Int -> a -> b) -> Subarrays a -> Subarrays b
Subarrays.indexedMap fn subs = (Subarrays.indexedMap.inner 0 fn subs)

## Subarrays.indexedMap.inner : Int -> (Int -> a -> b) -> Subarrays a -> (Int, Subarrays b)
Subarrays.indexedMap.inner i0 fn (Subarrays a0 a1 a2 a3) =
  let i1 = (Subarrays.indexedMap.inner.nextI i0 a0)
  let i2 = (Subarrays.indexedMap.inner.nextI i1 a1)
  let i3 = (Subarrays.indexedMap.inner.nextI i2 a2)
  ( (Subarrays.indexedMap.inner.nextI i3 a3)
  , (Subarrays.indexedMap.inner.result fn a0 a1 a2 a3 i0 i1 i2 i3)
  )

Subarrays.indexedMap.inner.nextI i a =
  (+ i (Array.length a))

Subarrays.indexedMap.inner.result fn a0 a1 a2 a3 i0 i1 i2 i3 =
  (Subarrays 
    (Array.indexedMap.inner i0 fn a0)
    (Array.indexedMap.inner i1 fn a1)
    (Array.indexedMap.inner i2 fn a2)
    (Array.indexedMap.inner i3 fn a3))

## TODO tests
