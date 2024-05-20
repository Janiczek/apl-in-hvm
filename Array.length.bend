#include "Array.bend"

## Array.length : Array a -> Int
Array.length (Array/Empty) = 0
Array.length (Array/Value *) = 1
Array.length (Array/Array l * * * * * * * * * * * * * * * *) = l
