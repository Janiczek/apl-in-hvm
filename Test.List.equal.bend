#include "List.equal.bend"
def testListEqualEmpty(_):
  eq = lambda x,y: x == y
  return List.equal(eq,[],[]) == 1

def testListEqualSingleSame(_):
  eq = lambda x,y: x == y
  return List.equal(eq,[1],[1]) == 1

def testListEqualSingleNotSame(_):
  eq = lambda x,y: x == y
  return List.equal(eq,[1],[2]) == 0

def testListEqualLongSame(_):
  eq = lambda x,y: x == y
  return List.equal(eq,[1,2],[1,2]) == 1

def testListEqualLongNotSame(_):
  eq = lambda x,y: x == y
  return List.equal(eq,[1,2],[1,3]) == 0

def testListEqualSingleEmpty(_):
  eq = lambda x,y: x == y
  return List.equal(eq,[1],[]) == 0

def testListEqualEmptySingle(_):
  eq = lambda x,y: x == y
  return List.equal(eq,[],[1]) == 0

def testListEqualLongEmpty(_):
  eq = lambda x,y: x == y
  return List.equal(eq,[1,2],[]) == 0

def testListEqualEmptyLong(_):
  eq = lambda x,y: x == y
  return List.equal(eq,[],[1,2]) == 0

def testListEqualSublistLeft(_):
  eq = lambda x,y: x == y
  return List.equal(eq,[1],[1,2,3]) == 0

def testListEqualSublistRight(_):
  eq = lambda x,y: x == y
  return List.equal(eq,[1,2,3],[1]) == 0
