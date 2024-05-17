#include "Array.bend"
#include "Bool.if.bend"

def Array.repeat(n,x):
  if n == 0:
    return Array/Empty
  else:
    if n > 16:
      return Array.repeat.recursive(n,x)
    else:
      xx = Array/Value(x)
      return Array/Array(
        n,
        xx,
        Bool.if(n > 1,  xx, Array/empty),
        Bool.if(n > 2,  xx, Array/empty),
        Bool.if(n > 3,  xx, Array/empty),
        Bool.if(n > 4,  xx, Array/empty),
        Bool.if(n > 5,  xx, Array/empty),
        Bool.if(n > 6,  xx, Array/empty),
        Bool.if(n > 7,  xx, Array/empty),
        Bool.if(n > 8,  xx, Array/empty),
        Bool.if(n > 9,  xx, Array/empty),
        Bool.if(n > 10, xx, Array/empty),
        Bool.if(n > 11, xx, Array/empty),
        Bool.if(n > 12, xx, Array/empty),
        Bool.if(n > 13, xx, Array/empty),
        Bool.if(n > 14, xx, Array/empty),
        Bool.if(n > 15, xx, Array/empty),
      )


def Array.repeat.recursive(n,x):
  perElement = n / 16
  divided = Array.repeat(perElement,x)
  return Array/Array(
    n,
    divided,
    divided,
    divided,
    divided,
    divided,
    divided,
    divided,
    divided,
    divided,
    divided,
    divided,
    divided,
    divided,
    divided,
    divided,
    Array.repeat(perElement + (n % 16),x)
  )
