#include "List.equal.bend"

eq x y = (== x y)

def main():
  return List.equal(eq,[1,2,3],[1,2,3])
