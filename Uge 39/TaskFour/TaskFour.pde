int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };
Task4 task4 = new Task4();
void setup() {
  task4.divisbleNumbers(8); 
  println("Random number from Array: " + task4.returnRandomIndexInArray(arr));
  task4.recursionInt((int) random(0, 20));
  task4.fibunacci(1,1);
}
