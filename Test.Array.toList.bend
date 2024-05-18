#include "Array.toList.bend"
#include "List.isEmpty.bend"

def testArrayToListEmpty(_):
  a = Array/Empty
  l = Array.toList(a)
  return List.isEmpty(l)

def testArrayToListValue(_):
  a = Array/Value(99)
  l = Array.toList(a)
  match l:
    case List/Nil:
      return 0
    case List/Cons: 
      return Bool.and(l.head == 99, List.isEmpty(l.tail))

def testArrayToListArray(_):
  a = Array.repeat(2,99)
  l = Array.toList(a)
  return Bool.and(List.length(l) == 2, List.sum(l) == 198)
