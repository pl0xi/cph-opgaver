int [] integerArray = {8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2};

void setup() {
  print(sortArray(integerArray) + "\n");
  printArray(integerArray);
}

boolean sortArray(int [] array_) {
  for (int i = 0; i < array_.length; i++) {
    for (int b = 0; b < array_.length; b++) {
     if (array_[i] < array_[b]) {
        swapArrayIndex(array_, i, b);
      }
    }
  }
  return true;
}

void swapArrayIndex(int [] array_, int pos1, int pos2) {
  int tmpIndexHolder = array_[pos1];
  array_[pos1] = array_[pos2];
  array_[pos2] = tmpIndexHolder;
}
