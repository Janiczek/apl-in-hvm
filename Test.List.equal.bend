#include "List.equal.bend"

eq x y = (== x y)

def testListEqualEmpty(_):
  return List.equal(eq,[],[]) == 1

def testListEqualSingleSame(_):
  return List.equal(eq,[1],[1]) == 1

def testListEqualSingleNotSame(_):
  return List.equal(eq,[1],[2]) == 0

def testListEqualLongSame(_):
  return List.equal(eq,[1,2],[1,2]) == 1

def testListEqualLongNotSame(_):
  return List.equal(eq,[1,2],[1,3]) == 0

def testListEqualSingleEmpty(_):
  return List.equal(eq,[1],[]) == 0

def testListEqualEmptySingle(_):
  return List.equal(eq,[],[1]) == 0

def testListEqualLongEmpty(_):
  return List.equal(eq,[1,2],[]) == 0

def testListEqualEmptyLong(_):
  return List.equal(eq,[],[1,2]) == 0
