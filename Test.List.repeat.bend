#include "List.isEmpty.bend"
#include "List.repeat.bend"
#include "List.length.bend"
#include "List.sum.bend"

def testListRepeat0(_):
  x = List.repeat(0,42)
  match x:
    case List/Nil:
      return 1
    case List/Cons:
      return 0

def testListRepeat1(_):
  x = List.repeat(1,42)
  match x:
    case List/Nil:
      return 0
    case List/Cons:
      return Bool.and(x.head == 42, List.isEmpty(x.tail))

def testListRepeat2(_):
  x = List.repeat(2,42)
  return Bool.and(List.length(x) == 2, List.sum(x) == 84)
