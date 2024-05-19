#include "Array.map.bend"
#include "Subarrays.bend"

## Subarrays.map : (a -> b) -> Subarrays a -> Subarrays b
Subarrays.map fn (Subarrays a0 a1 a2 a3) =
  (Subarrays
    (Array.map fn a0) 
    (Array.map fn a1) 
    (Array.map fn a2) 
    (Array.map fn a3))

## TODO tests
