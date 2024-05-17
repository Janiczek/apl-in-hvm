#include "Array.bend"
  
Array.foldr *  init (Array/Empty) = init
Array.foldr fn init (Array/Value x) = (fn x init)
Array.foldr fn init (Array/Array * (Subarrays a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14)) =
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
  (Array.foldr fn
    init
    a14) a13) a12) a11) a10) a9) a8) a7) a6) a5) a4) a3) a2) a1) a0)
