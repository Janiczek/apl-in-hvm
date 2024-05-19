#include "Array.foldr.bend"

## Array.toList : Array a -> List a
Array.toList a = (Array.foldr List/Cons List/Nil a)
