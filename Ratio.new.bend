#include "Ratio._reduce.bend"
#include "Num.sign.bend"
#include "Num.abs.bend"

def Ratio.new(n,d):
  return Ratio._reduce(n * Num.sign(d), Num.abs(d))
