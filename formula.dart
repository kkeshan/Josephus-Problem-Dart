//This code solves the Josephus problem using a formula. Please read the README.md file for more information

import "dart:math";

void main() {
  int n = 198; //replace n manually or through another input method
  int greaterPowerOf2 = 0;
  
  //find closest power of 2 greater than this number
  for(int i = 0; true; i++) {
    if(pow(2,i) > n) {
      greaterPowerOf2 = pow(2,i);
      break;
    }
  }
  
  int safePosition = 2*n - (greaterPowerOf2 - 1); //calculate safe position
  print("You need to stand at position $safePosition");
}
