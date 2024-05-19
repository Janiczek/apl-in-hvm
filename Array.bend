## Array a
##   = Empty
##   | Value a
##   | Array Int (Subarrays a) (Subarrays a) (Subarrays a) (Subarrays a)
type Array:
  Empty
  Value { x }
  Array { length, subs0, subs1, subs2, subs3 }
