#include "Array.bend"

// monoidal mconcat
//   op : a -> a -> a (mappend)
//   empty : a        (mempty)
//   array : Array a

// op(empty,x) must == x
// op(x,empty) must == x

Array.smash *  empty (Array/Empty)   = empty
Array.smash *  *     (Array/Value x) = x
Array.smash op empty (Array/Array * (Subarrays a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14)) =
  let sub = @a (Array.smash op empty a)
  (op (op (op (op (sub a0)  (sub a1))
              (op (sub a2)  (sub a3)))
          (op (op (sub a4)  (sub a5))
              (op (sub a6)  (sub a7))))
      (op (op (op (sub a8)  (sub a9))
              (op (sub a10) (sub a11)))
          (op (op (sub a12) (sub a13))
              (sub a14))))
