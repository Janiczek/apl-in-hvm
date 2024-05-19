## List.length : List a -> Int
List.length [] = 0
List.length (List/Cons x xs) = (+ 1 (List.length xs))
