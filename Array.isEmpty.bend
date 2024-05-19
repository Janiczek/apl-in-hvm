#include "Array.bend"

## Array.isEmpty : Array a -> Bool
Array.isEmpty (Array/Empty)   = 1
Array.isEmpty (Array/Value *) = 0
Array.isEmpty (Array/Array l * * * *) = (== l 0)
