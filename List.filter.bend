def List.filter(pred,list):
  match list:
    case List/Nil:
      return List/Nil
    case List/Cons:
      next = List.filter(pred,list.tail)
      if pred(list.head):
        return List/Cons(list.head,next)
      else:
        return next
