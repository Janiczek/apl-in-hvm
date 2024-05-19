#include "List.rangeStep.bend"
#include "List.equal.bend"

def testListRangeStep1(_):
  return List.equal(List.rangeStep(1,1,5),[1,2,3,4,5])

def testListRangeStep2(_):
  return List.equal(List.rangeStep(2,1,5),[1,3,5])

def testListRangeStep3(_):
  return List.equal(List.rangeStep(3,1,5),[1,4])

def testListRangeStepReversed(_):
  return List.equal(List.rangeStep(1,5,1),[])

def testListRangeStepSame(_):
  return List.equal(List.rangeStep(1,5,5),[5])

def testListRangeStepNon1Start(_):
  return List.equal(List.rangeStep(1,5,8),[5,6,7,8])
