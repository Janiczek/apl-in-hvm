#include "Array.smash.bend"
#include "Subarrays.bend"

## Subarrays.smash : (a -> a -> a) -> a -> Subarrays a -> a
Subarrays.smash op empty (Subarrays a0 a1 a2 a3) =
  let sub = @a (Array.smash op empty a)
  (op (op (sub a0) (sub a1))
      (op (sub a2) (sub a3)))

## TODO tests
