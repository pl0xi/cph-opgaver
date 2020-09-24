class Task4 {
  Task4() {
  }

  // 4.a
  void divisbleNumbers(int num1) {
    for (int i = 0; i <= 100; i++) {
      if (i%num1 == 0) {
        println(i);
      }
    }
  }

  //4.c
  int returnRandomIndexInArray(int [] array_) {
    return array_[(int) random(array_.length-1)];
  }

  // 4.d
  void recursionInt(int num1) {
    println(num1);
    if (num1 > 0) {
      recursionInt(num1-1);
    }
  }

  //4.e
  void fibunacci(int num1, int num2) {
    if (num1+num2 < 10000) {
      println(num1 +"\t"+num2+": "+ (num1+num2));
      fibunacci(num2, num1+num2);
    }
  }
}
