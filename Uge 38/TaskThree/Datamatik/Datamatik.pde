void setup() {
  Teacher teacher = new Teacher("Thorbjørn", 40, false);
  ArrayList<Student> students = new ArrayList<Student>();
  students.add(new Student("Benjamin", 21, false, 'a'));
  students.add(new Student("Alexander", 21, false, 'a'));
  
  println(teacher.name());
  
  for (int i = 0; i < students.size(); i++) {
    Student tmpStudent = students.get(i);
    println(tmpStudent.nameAndTeam());
  }
}
