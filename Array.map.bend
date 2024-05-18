#include "Array.bend"
#include "Subarrays.map.bend"

## Array.map : (a -> b) -> Array a -> Array b
Array.map *  (Array/Empty)   = (Array/Empty)
Array.map fn (Array/Value x) = (Array/Value (fn x))
Array.map fn (Array/Array l subs0 subs1 subs2 subs3) =
  (Array/Array l
    (Subarrays.map fn subs0)
    (Subarrays.map fn subs1)
    (Subarrays.map fn subs2)
    (Subarrays.map fn subs3))

