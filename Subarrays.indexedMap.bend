#include "Subarrays.bend"

Subarrays.indexedMap fn (Subarrays a0 a1 a2 a3) =
  (Subarrays
    (fn 0 a0)
    (fn 1 a1)
    (fn 2 a2)
    (fn 3 a3))
