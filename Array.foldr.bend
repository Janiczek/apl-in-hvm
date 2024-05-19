#include "Array.bend"
#include "Subarrays.foldr.bend"

## Array.foldr : (a -> b -> b) -> b -> Array a -> b
Array.foldr *  init (Array/Empty) = init
Array.foldr fn init (Array/Value x) = (fn x init)
Array.foldr fn init (Array/Array * subs0 subs1 subs2 subs3) =
  (Subarrays.foldr fn
  (Subarrays.foldr fn
  (Subarrays.foldr fn
  (Subarrays.foldr fn
    init
    subs3) subs2) subs1) subs0)

#include "Subarrays.bend"
#include "Subarrays.of.bend"

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
          Subarrays(
            Array/Value(30),
            Array/Value(20),
            Array/Value(10),
            Array/Empty
          ),
          Subarrays.of(Array/Empty),
          Subarrays.of(Array/Empty),
          Subarrays.of(Array/Empty),
        )
  x = Array.foldr(dif,+5,arr) # (30 - (20 - (10 - 5)))
  return x == +15
