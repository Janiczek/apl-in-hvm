#include "List.concat.bend"

## List.reverse : List a -> List a
List.reverse [] = []
List.reverse (List/Cons x xs) = (List.concat (List.reverse xs) [x])
