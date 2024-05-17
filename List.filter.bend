def List.filter(pred,list):
  switch l = list:
    case []: return []
    case List/cons:
      next = List.filter(pred,xs)
      if pred(x):
        return List/cons(x,next)
      else:
        return next
