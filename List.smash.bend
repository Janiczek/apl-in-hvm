## List.smash : (a -> a -> a) -> a -> List a -> a
List.smash * empty [] = empty

## TODO We have to measure whether this brings any performance (parallelism) benefit
List.smash fn empty (List/Cons x1 (List/Cons x2 (List/Cons x3 (List/Cons x4 xs)))) =
  (fn (fn (fn x1 x2)
          (fn x3 x4))
      (List.smash fn empty xs))

## keep the original around for lists of length that's not multiple of 4
List.smash fn empty (List/Cons x xs) = (fn x (List.smash fn empty xs))
