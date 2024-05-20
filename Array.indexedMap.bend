#include "Array.bend"
#include "Array.length.bend"

## Array.indexedMap : (Int -> a -> b) -> Array a -> Array b
Array.indexedMap fn a = (Array.indexedMap.from 0 fn a)

## Array.indexedMap.from : Int -> (Int -> a -> b) -> Array a -> (Int, Array b)
Array.indexedMap.from i0 *  (Array/Empty)   = (i0,   (Array/Empty))
Array.indexedMap.from i0 fn (Array/Value x) = (i0+1, (Array/Value (fn i0 x)))
Array.indexedMap.from i0 fn (Array/Array l a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15) =
  let (i1,  n0)  = (Array.indexedMap.from i0  fn a0)
  let (i2,  n1)  = (Array.indexedMap.from i1  fn a1)
  let (i3,  n2)  = (Array.indexedMap.from i2  fn a2)
  let (i4,  n3)  = (Array.indexedMap.from i3  fn a3)
  let (i5,  n4)  = (Array.indexedMap.from i4  fn a4)
  let (i6,  n5)  = (Array.indexedMap.from i5  fn a5)
  let (i7,  n6)  = (Array.indexedMap.from i6  fn a6)
  let (i8,  n7)  = (Array.indexedMap.from i7  fn a7)
  let (i9,  n8)  = (Array.indexedMap.from i8  fn a8)
  let (i10, n9)  = (Array.indexedMap.from i9  fn a9)
  let (i11, n10) = (Array.indexedMap.from i10 fn a10)
  let (i12, n11) = (Array.indexedMap.from i11 fn a11)
  let (i13, n12) = (Array.indexedMap.from i12 fn a12)
  let (i14, n13) = (Array.indexedMap.from i13 fn a13)
  let (i15, n14) = (Array.indexedMap.from i14 fn a14)
  let (i16, n15) = (Array.indexedMap.from i15 fn a15)
  (i16, (Array/Array l n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15))
