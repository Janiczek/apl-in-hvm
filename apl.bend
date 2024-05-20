#include "Array.repeat.bend"
#include "Array.toList.bend"

def main():
  a = Array.repeat(17,8)
  l = Array.toList(a)
  return l
