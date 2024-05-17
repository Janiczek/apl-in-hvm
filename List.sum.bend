#include "List.foldl.bend"

def List.sum(list):
  fold l = list:
    case List/Nil:
      return 0
    case List/Cons:
      return l.head + l.tail
