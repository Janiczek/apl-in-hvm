## List.concat : List a -> List a -> List a
List.concat [] b = b
List.concat (List/Cons x xs) b = (List/Cons x (List.concat xs b))
