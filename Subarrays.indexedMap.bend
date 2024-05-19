#include "Array.indexedMap.bend"
#include "Array.length.bend"
#include "Subarrays.bend"

## Subarrays.indexedMap : (Int -> a -> b) -> Subarrays a -> Subarrays b
Subarrays.indexedMap fn subs = (Subarrays.indexedMap.inner 0 fn subs)

## Subarrays.indexedMap.inner : Int -> (Int -> a -> b) -> Subarrays a -> (Int, Subarrays b)
Subarrays.indexedMap.inner i fn (Subarrays a0 a1 a2 a3) =
  let i1 = (+ i  (Array.length a0))
  let i2 = (+ i1 (Array.length a1))
  let i3 = (+ i2 (Array.length a2))
  ( (+ i3 (Array.length a3))
  , (Subarrays 
      (Array.indexedMap.inner i  fn a0)
      (Array.indexedMap.inner i1 fn a1)
      (Array.indexedMap.inner i2 fn a2)
      (Array.indexedMap.inner i3 fn a3))
  )

## TODO tests
