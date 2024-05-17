#include "Array.foldr.bend"

def testArrayFoldr(_):
  sum = lambda n,acc: n + acc
  arr = Array.repeat(5,10)
  x = Array.foldr(sum,0,arr)
  return x == 50

def testArrayFoldrWithInit(_):
  sum = lambda n,acc: n + acc
  arr = Array.repeat(5,10)
  x = Array.foldr(sum,100,arr)
  return x == 150

def testArrayFoldrLarge(_):
  sum = lambda n,acc: n + acc
  arr = Array.repeat(20,10)
  x = Array.foldr(sum,0,arr)
  return x == 200

def testArrayFoldrOrder(_):
  dif = lambda n,acc: n - acc
  arr = Array.repeat(2,+3)
  x = Array.foldr(dif,+0,arr)
  return x == 200 # TODO
