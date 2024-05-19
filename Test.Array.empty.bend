#include "Array.empty.bend"
#include "Array.toList.bend"
#include "List.isEmpty.bend"

def testArrayEmpty(_):
  e = Array.empty
  l = Array.toList(e)
  return List.isEmpty(l)
