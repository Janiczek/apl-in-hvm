## List.concat : List a -> List a -> List a
List.concat [] b = b
List.concat (List/Cons x xs) b = (List/Cons x (List.concat xs b))

#include "List.equal.bend"

def testListConcatEmptyBoth(_):
  return List.equal(List.concat([],[]), [])

def testListConcatEmptyFirst(_):
  return List.equal(List.concat([],[1,2,3]), [1,2,3])

def testListConcatEmptySecond(_):
  return List.equal(List.concat([1,2,3],[]), [1,2,3])

def testListConcatNonempty(_):
  return List.equal(List.concat([1,2,3],[4,5,6]), [1,2,3,4,5,6])
