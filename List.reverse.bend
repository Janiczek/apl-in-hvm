#include "List.concat.bend"

List.reverse [] = []
List.reverse (List/Cons x xs) = (List.concat (List.reverse xs) [x])
