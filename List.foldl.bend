List.foldl * init [] = init
List.foldl fn init (List/cons x xs) = (List.foldl fn (fn x init) xs)
