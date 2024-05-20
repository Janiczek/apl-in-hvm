#include "Array.bend"

## Array.repeat : Int -> a -> Array a
def Array.repeat(n,x):
  if n == 0:
    return Array/Empty
  else:
    if n == 1:
      return Array/Value(x)
    else:
      if n > 16:
        return Array.repeat.recursive(n,x)
      else:
        return Array.repeat.nonrecursive(n,x)

## Array.repeat.recursive : Int -> a -> Array a
def Array.repeat.recursive(n,x):
  perElement = n / 16
  x = Array.repeat(perElement,x)
  o = Array.repeat(perElement + (n % 16),x)
  return Array/Array(n,o,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x)

## Array.repeat.nonrecursive : Int -> a -> Array a
def Array.repeat.nonrecursive(n,x):
  v = Array/Value(x)
  return Array/Array(
    n,
    Array.repeat.nonrecursive.f(0,  n, v),
    Array.repeat.nonrecursive.f(1,  n, v),
    Array.repeat.nonrecursive.f(2,  n, v),
    Array.repeat.nonrecursive.f(3,  n, v),
    Array.repeat.nonrecursive.f(4,  n, v),
    Array.repeat.nonrecursive.f(5,  n, v),
    Array.repeat.nonrecursive.f(6,  n, v),
    Array.repeat.nonrecursive.f(7,  n, v),
    Array.repeat.nonrecursive.f(8,  n, v),
    Array.repeat.nonrecursive.f(9,  n, v),
    Array.repeat.nonrecursive.f(10, n, v),
    Array.repeat.nonrecursive.f(11, n, v),
    Array.repeat.nonrecursive.f(12, n, v),
    Array.repeat.nonrecursive.f(13, n, v),
    Array.repeat.nonrecursive.f(14, n, v),
    Array.repeat.nonrecursive.f(15, n, v),
  )

## Array.repeat.nonrecursive.f : Int -> Int -> Array a -> Array a
Array.repeat.nonrecursive.f i n v =
  if (< i n) { v }
  else       { (Array/Empty) }
