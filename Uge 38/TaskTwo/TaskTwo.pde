boolean happy = true;

void setup() {
  // 2.a
  if (iAmHappy()) {
    println("I clap my hands");
  } else {
    println("I don't clap my hands");
  }

  // 2.b
  println(adding(5, 10));
  
  // 2.c
  println(uppercase("new york"));
  
  // 2.d (First with first letter uppercase, second with none)
  println(firstLetterUppercaseCheck("Left"));
  println(firstLetterUppercaseCheck("right"));
}

// 2.a
boolean iAmHappy()
{
  // fill out what is missing here: 
  return happy;
}

// 2.b
int adding(int num1, int num2) {
  return num1 + num2;
}

// 2.c
String uppercase(String text) {
  return text.toUpperCase();
}

// 2.d
boolean firstLetterUppercaseCheck(String text) {
  return Character.isUpperCase(text.charAt(0));
}
