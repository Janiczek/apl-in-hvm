## List.foldl : (a -> b -> b) -> b -> List a -> b
List.foldl * init [] = init
List.foldl fn init (List/Cons x xs) = (List.foldl fn (fn x init) xs)
