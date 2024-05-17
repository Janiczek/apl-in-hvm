def List.rangeStep(step,from,to):
  if from > to:
    return List/Nil
  else:
    return List/Cons(from,List.rangeStep(step,from+step,to))
