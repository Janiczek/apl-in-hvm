#include "List.filter.bend"
#include "List.equal.bend"

def testListFilterAlwaysTrue(_):
  return List.equal(List.filter(lambda _: 1,[1,2,3,4,5]), [1,2,3,4,5])

def testListFilterAlwaysFalse(_):
  return List.equal(List.filter(lambda _: 0,[1,2,3,4,5]), [])

def testListFilterOdd(_):
  return List.equal(List.filter(lambda n: n % 2 == 1,[1,2,3,4,5]), [1,3,5])

def testListFilterEven(_):
  return List.equal(List.filter(lambda n: n % 2 == 0,[1,2,3,4,5]), [2,4])
