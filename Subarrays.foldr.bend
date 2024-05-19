#include "Array.foldr.bend"
#include "Subarrays.bend"

## Subarrays.foldr : (a -> b -> b) -> b -> Subarrays a -> b
Subarrays.foldr fn init (Subarrays a0 a1 a2 a3) =
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
    init
    a3) a2) a1) a0)

## TODO tests
