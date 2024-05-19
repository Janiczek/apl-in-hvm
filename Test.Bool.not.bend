#include "Bool.not.bend"
def testBoolNotT(_):
  return Bool.not(1) == 0

def testBoolNotF(_):
  return Bool.not(0) == 1
