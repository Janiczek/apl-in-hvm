#include "Array.bend"
#include "Subarrays.smash.bend"

## monoidal mconcat
##   op : a -> a -> a (mappend)
##   empty : a        (mempty)
##   array : Array a
##
## op(empty,x) must == x
## op(x,empty) must == x

Array.smash *  empty (Array/Empty)   = empty
Array.smash *  *     (Array/Value x) = x
Array.smash op empty (Array/Array * subs0 subs1 subs2 subs3) =
  let smash = @subs (Subarrays.smash op empty subs)
  (op (op (smash subs0)
          (smash subs1))
      (op (smash subs2)
          (smash subs3)))

