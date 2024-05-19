## List.repeat : Int -> a -> List a
List.repeat 0 * = []
List.repeat n value = (List/Cons value (List.repeat (- n 1) value))

#include "List.equal.bend"

def testListRepeat0(_):
  x = List.repeat(0,42)
  return List.equal(x,[])

def testListRepeat1(_):
  x = List.repeat(1,42)
  return List.equal(x,[42])

def testListRepeat2(_):
  x = List.repeat(2,42)
  return List.equal(x,[42,42])
