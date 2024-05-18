#include "Subarrays.bend"

## Subarrays.withFirst : Array a -> Subarrays a -> Subarrays a
Subarrays.withFirst newA0 (Subarrays * a1 a2 a3) =
  (Subarrays newA0 a1 a2 a3)
