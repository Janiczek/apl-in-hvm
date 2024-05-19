#include "Array.foldl.bend"
#include "Subarrays.bend"

## Subarrays.foldl : (a -> b -> b) -> b -> Subarrays a -> b
Subarrays.foldl fn init (Subarrays a0 a1 a2 a3) =
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
    init
    a0) a1) a2) a3)
