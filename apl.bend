#include "List.equal.bend"

def main():
  eq x y = (== x y)
  return List.equal(eq,[1,2,3],[1,2,3])
