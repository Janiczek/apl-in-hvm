#include "Array.smash.bend"

## Array.sum : Array Int -> Int
Array.sum a = (Array.smash (@x @y (+ x y)) 0 a)
