## List.filter : (a -> Bool) -> List a -> List a
List.filter * [] = []
List.filter pred (List/Cons x xs) =
  if (pred x) { (List/Cons x (List.filter pred xs)) }
  else        { (List.filter pred xs) }
