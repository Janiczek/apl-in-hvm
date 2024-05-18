#include "Bool.and.bend"

def testBoolAndFF(_):
  return Bool.and(0,0) == 0

def testBoolAndFT(_):
  return Bool.and(0,1) == 0

def testBoolAndTF(_):
  return Bool.and(1,0) == 0

def testBoolAndTT(_):
  return Bool.and(1,1) == 1
