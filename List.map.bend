List.map * [] = []
List.map fn (List/Cons x xs) = (List/Cons (fn x) (List.map fn xs))
