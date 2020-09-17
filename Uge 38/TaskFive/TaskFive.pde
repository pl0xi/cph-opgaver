void setup() {
  ArrayList<Student> students = new ArrayList<Student>();
  students.add(new Student("Benjamin", 21, false, 'a'));
  students.add(new Student("Alexander", 21, false, 'a'));
  students.add(new Student("Hidesh", 21, false, 'a'));
  students.add(new Student("Claus", 21, false, 'a'));
  students.add(new Student("Rasmus", 21, false, 'a'));
  students.add(new Student("Mathias", 21, false, 'a'));
  students.add(new Student("Maja", 21, true, 'a'));
  students.add(new Student("Jenbo", 21, false, 'a'));
  students.add(new Student("Abdi", 21, false, 'a'));
  students.add(new Student("Oliver", 21, false, 'a'));

  // 5.b
  println(getStudentName(students, (int) random(0, 9)));

  // 5.c
  for (int i = 0; i <= 2; i++) {
    Student tmpStudent = students.get((int) random(0, 9));
    // println(tmpStudent.name);
    println(getIndexByName(students, tmpStudent.name));
  }
}

// 5.b
String getStudentName(ArrayList<Student> students_, int num) {
  // println(num);
  Student tmpStudent = students_.get(num);
  return tmpStudent.name;
}

// 5.c
int getIndexByName(ArrayList<Student> students_, String findName) {
  for (int i = 0; i < students_.size(); i++) {
    Student tmpStudent = students_.get(i);
    if (tmpStudent.name.indexOf(findName) != -1) {
      return i;
    }
  }
  return 0;
}
