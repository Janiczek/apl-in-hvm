#include "Array.foldr.bend"

Array.toList a = (Array.foldr List/Cons List/Nil a)
