#include "List.smash.bend"

## List.sum : List Int -> Int
List.sum list = (List.smash (@a @b (+ a b)) 0 list)
