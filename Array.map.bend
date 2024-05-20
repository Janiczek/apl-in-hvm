#include "Array.bend"

## Array.map : (a -> b) -> Array a -> Array b
Array.map *  (Array/Empty)   = (Array/Empty)
Array.map fn (Array/Value x) = (Array/Value (fn x))
Array.map fn (Array/Array * a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15) =
  (Array/Array l
    (Array.map fn a0)
    (Array.map fn a1)
    (Array.map fn a2)
    (Array.map fn a3)
    (Array.map fn a4)
    (Array.map fn a5)
    (Array.map fn a6)
    (Array.map fn a7)
    (Array.map fn a8)
    (Array.map fn a9)
    (Array.map fn a10)
    (Array.map fn a11)
    (Array.map fn a12)
    (Array.map fn a13)
    (Array.map fn a14)
    (Array.map fn a15))
