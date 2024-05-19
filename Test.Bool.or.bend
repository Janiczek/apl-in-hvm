#include "Bool.or.bend"
def testBoolOrFF(_):
  return Bool.or(0,0) == 0

def testBoolOrFT(_):
  return Bool.or(0,1) == 1

def testBoolOrTF(_):
  return Bool.or(1,0) == 1

def testBoolOrTT(_):
  return Bool.or(1,1) == 1
