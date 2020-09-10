int input = -50;
int halfInput = input/2;

while (input != 0) {

  if (halfInput == input) {
    println("HALF!");
  } else if (input == 6) {
    println("six");
  } else {
    println(input);
  }

  if (input > 0) {
    input--;
  } else {
    input++;
  }
}
