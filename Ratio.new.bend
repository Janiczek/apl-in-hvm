#include "Ratio._reduce.bend"
#include "Num.sign.bend"
#include "Num.abs.bend"

## Ratio.new : Int -> Int -> Ratio
Ratio.new n d = (Ratio._reduce (* n (Num.sign d)) (Num.abs d))
