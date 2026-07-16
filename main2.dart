void main() {
  List<Map<String, dynamic>> students = [];

  addStudent(students, "Ahmed", 20, 75);
  addStudent(students, "Sara", 19, 55);
  addStudent(students, "mohammed", 20, 90);

  print("الطلاب الذين درجاتهم أكبر من 60:");

  for (var student in students) {
    if (student["grade"] > 60) {
      print(
          "الاسم: ${student["name"]}, العمر: ${student["age"]}, الدرجة: ${student["grade"]}");
    }
  }
}

void addStudent(
    List<Map<String, dynamic>> students,
    String name,
    int age,
    double grade) {
  students.add({
    "name": name,
    "age": age,
    "grade": grade,
  });
}