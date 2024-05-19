## List.map : (a -> b) -> List a -> List b
List.map * [] = []
List.map fn (List/Cons x xs) = (List/Cons (fn x) (List.map fn xs))
