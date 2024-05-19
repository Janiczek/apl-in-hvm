## List.repeat : Int -> a -> List a
List.repeat 0 * = []
List.repeat n value = (List/Cons value (List.repeat (- n 1) value))
