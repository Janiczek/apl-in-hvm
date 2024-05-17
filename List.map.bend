List.map * [] = []
List.map fn (List/cons x xs) = (List/cons (fn x) (List.map fn xs))
