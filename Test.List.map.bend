#include "List.map.bend"
def testListMapIdentity(_):
  return List.equal(List.map(lambda x: x, [1,2,3]),[1,2,3])

def testListMapIncrement(_):
  return List.equal(List.map(lambda x: x+1, [1,2,3]),[2,3,4])

def testListMapCloning(_):
  ## This is not supported by HVM32 right now I believe
  return List.equal(List.map(lambda x: x+x, [1,2,3]),[2,4,6])
