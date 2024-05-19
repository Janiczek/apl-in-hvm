## Num.sign : Int -> Int
Num.sign n =
  if (== n 0) { 0 }
  else {
    if (> n 0) { 1 }
    else       { -1 }
  }
