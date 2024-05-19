#include "List.range.bend"
# include "List.equal.bend"

def testListRange1(_):
  return List.equal(List.range(1,5),[1,2,3,4,5])

def testListRangeReversed(_):
  return List.equal(List.range(5,1),[])

def testListRangeSame(_):
  return List.equal(List.range(5,5),[5])

def testListRangeNon1Start(_):
  return List.equal(List.range(5,8),[5,6,7,8])
