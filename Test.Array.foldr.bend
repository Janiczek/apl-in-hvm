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
  arr = Array/Array(
          3,
          Array/Value(30),
          Array/Value(20),
          Array/Value(10),
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
          Array/Empty,
        )
  x = Array.foldr(dif,+5,arr) # (30 - (20 - (10 - 5)))
  return x == +15
