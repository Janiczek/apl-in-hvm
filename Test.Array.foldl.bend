#include "Array.foldl.bend"

def testArrayFoldl(_):
  sum = lambda n,acc: n + acc
  arr = Array.repeat(5,10)
  x = Array.foldl(sum,0,arr)
  return x == 50

def testArrayFoldlWithInit(_):
  sum = lambda n,acc: n + acc
  arr = Array.repeat(5,10)
  x = Array.foldl(sum,100,arr)
  return x == 150

def testArrayFoldlLarge(_):
  sum = lambda n,acc: n + acc
  arr = Array.repeat(20,10)
  x = Array.foldl(sum,0,arr)
  return x == 200

def testArrayFoldlOrder(_):
  dif = lambda n,acc: n - acc
  arr = Array.repeat(2,+3)
  x = Array.foldr(dif,+0,arr)
  return x == 200 # TODO
