#include "List.foldl.bend"

def List.sum(list):
  fold l = list:
    case List/nil:  return 0
    case List/cons: return l.head + l.tail
