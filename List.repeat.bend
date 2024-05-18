def List.repeat(n,value):
  bend x = 0:
    when x < n:
      return List/Cons(value,fork(x+1))
    else:
      return List/Nil
