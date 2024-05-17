#include "Array.bend"

Array.foldl *  init (Array/Empty) = init
Array.foldl fn init (Array/Value x) = (fn x init)
Array.foldl fn init (Array/Array * (Subarrays a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14)) =
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
  (Array.foldl fn
    init
    a0) a1) a2) a3) a4) a5) a6) a7) a8) a9) a10) a11) a12) a13) a14)
