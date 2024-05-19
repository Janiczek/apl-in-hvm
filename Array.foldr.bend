#include "Array.bend"
#include "Subarrays.foldr.bend"

## Array.foldr : (a -> b -> b) -> b -> Array a -> b
Array.foldr *  init (Array/Empty) = init
Array.foldr fn init (Array/Value x) = (fn x init)
Array.foldr fn init (Array/Array * subs0 subs1 subs2 subs3) =
  (Subarrays.foldr fn
  (Subarrays.foldr fn
  (Subarrays.foldr fn
  (Subarrays.foldr fn
    init
    subs3) subs2) subs1) subs0)
