## Array a
##   = Empty
##   | Value a
##   | Array Int ((Array a) * 16)
type Array:
  Empty
  Value { x }
  Array { length, a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15 }
