//This code solves the Josephus problem using a brute force approac
void main() {
  
  //replace with number of soldiers manually or using any other input method
  int n = 10;
  int survivingPosition;
  List<int> positions = [];

  //fill up the positions array
  for (int position = 1; position <= n; position++) {
    positions.add(position);
  }

  //start eliminating
  int eliminatorPosition = 0;
  int eliminatedPosition = 1;
  while (positions.length != 1) {
    if (eliminatorPosition < (positions.length - 2)) {
      eliminatedPosition = eliminatorPosition + 1;
      eliminatorPosition = eliminatedPosition;
    }

    //eliminator is second last element
    else if (eliminatorPosition == (positions.length - 2)) {
      eliminatedPosition = eliminatorPosition + 1;
      eliminatorPosition = 0;
    }

    //eliminator is last element
    else if (eliminatorPosition == (positions.length - 1)) {
      eliminatedPosition = 0;
      eliminatorPosition = eliminatedPosition;
    }

    positions.removeAt(eliminatedPosition);
  }

  survivingPosition = positions[0];

  //print final position for this 'n'
  print("\($n,$survivingPosition\)");
}
