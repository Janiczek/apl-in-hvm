#include "Array.bend"
#include "Subarrays.foldl.bend"

Array.foldl *  init (Array/Empty) = init
Array.foldl fn init (Array/Value x) = (fn x init)
Array.foldl fn init (Array/Array * subs0 subs1 subs2 subs3) =
  (Subarrays.foldl fn
  (Subarrays.foldl fn
  (Subarrays.foldl fn
  (Subarrays.foldl fn
    init
    subs0) subs1) subs2) subs3)
