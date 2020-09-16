int [] intArray = new int[3];
String [] stringArray = new String[3];
boolean [] booleanArray = new boolean[3];

void setup() {
  for (int i = 0; i <= 2; i++) {
    // Creating 3 int, and assigning them in intArray
    intArray[i] = (int) random(0, 1000);
    stringArray[i] = "Arbejder: " + (i+1);
    if (1 == i%2) {
      booleanArray[i] = true;
    } else {
      booleanArray[i] = false;
    }
  }

  // 4.b
  printArrayContent(stringArray);
  
  // 4.c
  println(sumOfArray(intArray));
  
  // 4.d
  println(averageOfArray(intArray));
  
  // 4.e
  println(sortedArray(intArray));
}

// 4.b
void printArrayContent(String [] stringArray_) {
  for (int i = 0; i < stringArray_.length; i++) {
    println(stringArray_[i]);
  }
}

// 4.c
int sumOfArray(int [] intArray_){
  int sum = 0;
  for (int i = 0; i < intArray_.length; i++) {
    // println(intArray_[i]); 
    sum += intArray_[i];
  }
  return sum;
}

// 4.d 
int averageOfArray(int [] intArray_){
  int sum = 0;
  for (int i = 0; i < intArray_.length; i++) {
    // println(intArray_[i]); 
    sum += intArray_[i];
  }
  return sum/intArray_.length;
}

// 4.e
int [] sortedArray(int [] intArray_) {
  return sort(intArray_);
}
