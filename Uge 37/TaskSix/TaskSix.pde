int a = 10;
int b = 0;

if (a == 10 ||  b == 10 || a+b == 10 ) {
  println("SUCCESS");
} else {
  println("FAILURE");
}

int x = 0;
int y = 0;
int z = 30;

if (x+y+z == 30 && (x|y|z) != (10|20|30)) {
  println("OPGAVE 2: SUCCES");
} else {
  println("OPGAVE 2: FAILURE");
}
