List.equal * [] [] = 1
List.equal * [] * = 0
List.equal * * [] = 0
List.equal itemEq (List/Cons x xs) (List/Cons y ys) = 
  if (itemEq x y) { (List.equal itemEq xs ys) } else { 0 }
