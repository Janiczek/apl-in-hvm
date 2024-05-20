#include "Array.bend"

## This will be parallel as heck! Preferred to foldl/foldr.

## monoidal mconcat
##   op : a -> a -> a (mappend)
##   empty : a        (mempty)
##   array : Array a
##
## op(empty,x) must == x
## op(x,empty) must == x

## Array.smash : (a -> a -> a) -> a -> Array a -> a
Array.smash *  empty (Array/Empty)   = empty
Array.smash *  *     (Array/Value x) = x
Array.smash op empty (Array/Array * a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15) =
  let f = @a (Array.smash op empty a)
  (op (op (op (op (f a0)
                  (f a1))
              (op (f a2)
                  (f a3)))
          (op (op (f a4)
                  (f a5))
              (op (f a6)
                  (f a7))))
      (op (op (op (f a8)
                  (f a9))
              (op (f a10)
                  (f a11)))
          (op (op (f a12)
                  (f a13))
              (op (f a14)
                  (f a15)))))
