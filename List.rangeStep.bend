def List.rangeStep(step,from,to):
  if from > to: return []
  else:         return List/cons(from,List.rangeStep(step,from+step,to))
